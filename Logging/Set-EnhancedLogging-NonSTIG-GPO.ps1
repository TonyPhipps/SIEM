<#
.SYNOPSIS
    Configures multiple audit policies, override settings, event log sizes, and command-line 
    auditing in a specified GPO, creating the GPO if it doesn't exist.
    Only includes those items NOT covered by DISA STIG (https://public.cyber.mil/stigs/).

.PARAMETER GpoName
    The name of the GPO to configure. Defaults to "Enhanced Logging" if not specified.

.PARAMETER Domain
    The Active Directory domain to use. If not specified, the current computer's domain is used.

.EXAMPLE
    Set-EnhancedLogging -GpoName "MyAuditPolicy" -Domain "contoso.local"
    Configures audit policies, override setting, event log sizes, and command-line auditing in the 
    "MyAuditPolicy" GPO in the contoso.local domain.

.EXAMPLE
    Set-EnhancedLogging
    Configures audit policies, override setting, event log sizes, and command-line auditing in the default 
    GPO "Enhanced Logging Non-STIG" in the current computer's domain.
#>

[CmdletBinding()]
param (
    [Parameter(Mandatory = $false)]
    [string]$GpoName = "Enhanced Logging Non-STIG",

    [Parameter(Mandatory = $false)]
    [string]$Domain = (Get-WmiObject Win32_ComputerSystem).Domain
)

# Import the GroupPolicy module
try {
    Import-Module GroupPolicy -ErrorAction Stop
}
catch {
    Write-Error "Failed to import GroupPolicy module: $_"
    return
}

# Define preset audit settings
$AuditSettings = @(
    @{
        # GPO: Computer Configuration > Policies > Administrative Templates > Windows Components > Windows PowerShell > Turn on Module Logging
        Name        = "Enable Module Logging"
        Subcategory = "ModuleLogging"
        RegistryKey = "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\PowerShell\ModuleLogging"
        ValueName   = "EnableModuleLogging"
        Type        = "DWord"
        Value       = 1 # Enabled
    },
    @{
        # GPO: Computer Configuration > Policies > Administrative Templates > Windows Components > Windows PowerShell > Turn on Module Logging
        Name        = "Enable Module Logging for All Modules"
        Subcategory = "ModuleLogging All Modules"
        RegistryKey = "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\PowerShell\ModuleLogging\ModuleNames"
        ValueName   = "*"
        Type        = "String"
        Value       = "*" # Log all modules
    },
    @{
        # GPO: Computer Configuration > Policies > Windows Settings > Security Settings > Local Policies > Security Options > Network Security: Restrict NTLM: Audit NTLM authentication in this domain
        # NOTE: This is a DC policy.
        Name        = "Audit NTLM Authentication in Domain"
        Subcategory = "NTLMAuthentication"
        RegistryKey = "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa\MSV1_0"
        ValueName   = "AuditNTLMInDomain"
        Type        = "DWord"
        Value       = 7 # Enable all
    },
    @{
        # GPO: Computer Configuration > Policies > Windows Settings > Security Settings > Local Policies > Security Options > Network Security: Restrict NTLM: Audit Incoming NTLM Traffic
        Name        = "Audit Incoming NTLM Traffic"
        Subcategory = "NTLMAuthentication"
        RegistryKey = "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa\MSV1_0"
        ValueName   = "AuditReceivingNTLMTraffic"
        Type        = "DWord"
        Value       = 2 # Enable all
    },
    @{
        # wevtutil set-log Microsoft-Windows-Bits-Client/Operational /enabled:true /rt:true /q:true
        Name        = "Enable BITS Client Operational Log"
        Subcategory = "BITSLogging"
        RegistryKey = "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\EventLog\Microsoft-Windows-Bits-Client\Operational"
        ValueName   = "Enabled"
        Type        = "DWord"
        Value       = 1 # Enabled
    }
)

# Check if the GPO exists, create it if it doesn't
try {
    $gpo = Get-GPO -Name $GpoName -Domain $Domain -ErrorAction Stop
    Write-Host "GPO '$GpoName' found in domain '$Domain' (ID: $($gpo.Id))."
}
catch {
    Write-Host "GPO '$GpoName' does not exist. Creating new GPO..."
    try {
        $gpo = New-GPO -Name $GpoName -Domain $Domain -ErrorAction Stop
        Write-Host "Successfully created GPO '$GpoName' (ID: $($gpo.Id))."
    }
    catch {
        Write-Error "Failed to create GPO '$GpoName': $_"
        return
    }
}

# Apply registry-based settings with Set-GPRegistryValue
Write-Host "Configuring registry settings in GPO: $GpoName"
foreach ($Setting in $AuditSettings) {
    try {
        Set-GPRegistryValue -Name $GpoName `
                            -Domain $Domain `
                            -Key $Setting.RegistryKey `
                            -ValueName $Setting.ValueName `
                            -Type $Setting.Type `
                            -Value $Setting.Value `
                            -ErrorAction Stop
        Write-Host "Successfully configured $($Setting.Subcategory) in GPO: $GpoName"
    }
    catch {
        Write-Host "Error configuring $($Setting.Subcategory) in GPO: $_" -ForegroundColor Red
    }
}

# Configure Real-time subscription for BITSLogging via wevtutil set-log ... /rt:true
$ScriptName = "Enable-BITSRealtime.ps1"
$SysvolPath = "\\$Domain\SYSVOL\$Domain\Scripts"
$ScriptFullPath = Join-Path $SysvolPath $ScriptName

# Ensure script directory exists
New-Item -ItemType Directory -Force -Path $SysvolPath | Out-Null

# Write a startup script that sets BITS real-time logging
$ScriptContent = @"
# Startup script for real-time BITS logging
wevtutil set-log 'Microsoft-Windows-Bits-Client/Operational' /rt:true /q:true
"@

# Create or update the script file in SYSVOL
$ScriptContent | Out-File -FilePath $ScriptFullPath -Encoding UTF8 -Force

Write-Host "You still need to open the GPO '$GpoName' and attach the startup script at '$ScriptFullPath'." -ForegroundColor Yellow
Write-Host "Computer Configuration → Policies → Windows Settings → Scripts (Startup/Shutdown) → Startup" -ForegroundColor DarkYellow

# Configure Advanced Audit Policies (Audit Process Creation and Audit File System) using audit.csv
Write-Host "Configuring Advanced Audit Policies in GPO: $GpoName"

try {
    # Create a temporary audit policy file with UTF-8 encoding (no BOM)
    $tempCsv = [System.IO.Path]::GetTempFileName() + ".csv"
    $auditPolicy = @"
Machine Name,Policy Target,Subcategory,Subcategory GUID,Inclusion Setting,Exclusion Setting,Setting Value
,System,File System,{0cce922d-69ae-11d9-bed3-505054503030},Success and Failure,,3
,System,Audit Registry,{0cce922f-69ae-11d9-bed3-505054503030},Success and Failure,,3
,System,Directory Service Access,{0cce923b-69ae-11d9-bed3-505054503030},Success,,1
"@
    # Computer Configuration > Policies > Windows Settings > Security Settings > Advanced Audit Policy Configuration > Audit Policies > Object Access > Audit File System
        # NOTE - Windows only generates events for objects (files/folders) that have a System Access Control List (SACL) entry specifying "Audit" on them. 
        # If no SACLs are defined, enabling this produces no new events.
    # Computer Configuration > Policies > Windows Settings > Security Settings > Advanced Audit Policy Configuration > Audit Policies > Object Access > Audit Registry
        # MITRE: T1112, T1562
        # Event ID: 4657
        # NOTE - Windows only generates events for objects (registry) that have a System Access Control List (SACL) entry specifying "Audit" on them. 
        # If no SACLs are defined, enabling this produces no new events.
    # Computer Configuration > Policies > Windows Settings > Security Settings > Advanced Audit Configuration > Audit Policies > DS Access > Audit Directory Service Access
        # NOTE - Even with the policy on, Windows won't log unless that specific container has an Audit Rule (SACL) applied to it.

    # Use UTF-8 encoding without BOM
    $utf8NoBom = New-Object System.Text.UTF8Encoding($false)
    [System.IO.File]::WriteAllText($tempCsv, $auditPolicy, $utf8NoBom)
    Write-Host "Created temporary audit.csv at $tempCsv"

    # Import the audit policy into the GPO
    $GPOId = (Get-GPO -Name $GpoName -Domain $Domain).Id
    $gpoPath = ("\\{0}\SysVol\{1}\Policies\{2}\Machine\Microsoft\Windows NT\Audit" -f $Domain, $Domain, "{$GPOId}")
    Write-Host "Copying audit.csv to $gpoPath"
    if (-not (Test-Path $gpoPath)) {
        New-Item -Path $gpoPath -ItemType Directory -Force | Out-Null
        Write-Host "Created directory $gpoPath"
    }
    Copy-Item -Path $tempCsv -Destination "$gpoPath\audit.csv" -Force -ErrorAction Stop
    Write-Host "Successfully copied audit.csv to $gpoPath\audit.csv"
}
catch {
    Write-Host "Error configuring Advanced Audit Policies: $_" -ForegroundColor Red
}
finally {
    if (Test-Path $tempCsv) {
        Remove-Item -Path $tempCsv -Force
        Write-Host "Cleaned up temporary file $tempCsv"
    }
}

Write-Host "GPO configuration completed. Link the GPO to an OU and apply using 'gpupdate /force' on target machines." -ForegroundColor Yellow