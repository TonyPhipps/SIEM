<#
.SYNOPSIS
    Configures multiple audit policies, override settings, event log sizes, and command-line 
    uditing in a specified GPO, creating the GPO if it doesn't exist.
    Only includes those items covered by DISA STIG (https://public.cyber.mil/stigs/).

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
    GPO "Enhanced Logging STIG" in the current computer's domain.
#>

[CmdletBinding()]
param (
    [Parameter(Mandatory = $false)]
    [string]$GpoName = "Enhanced Logging STIG",

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

# Define preset audit settings, event log sizes, and command-line auditing
$AuditSettings = @(
    @{
        # GPO: Computer Configuration > Windows Settings > Security Settings > Local Policies > Security Options > Force audit policy subcategory settings (Windows Vista or later) to override audit policy category settings
        Name        = "Enable Advanced Audit Policy"
        Subcategory = "Advanced Audit Policy"
        RegistryKey = "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa"
        ValueName   = "SCENoApplyLegacyAuditPolicy"
        Type        = "DWord"
        Value       = 1 # Enable advanced audit policies
        # Windows 11: SV-253437r958442_rule 
        # Windows 10: SV-220913r958442_rule
        # Windows Server 2022: SV-254449r958442_rule
        # Windows Server 2019: SV-205644r958442_rule
        # Windows Server 2016: SV-225028r569186_rule
        # Windows Server 2012 / 2012 R2 (Member Server): SV-225454r569185_rule
    },
    @{
        # GPO: Computer Configuration > Policies > Administrative Templates > Windows Components > Windows PowerShell > Turn on Script Block Logging
        Name        = "Turn on Script Block Logging"
        Subcategory = "ScriptBlockLogging"
        RegistryKey = "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\PowerShell\ScriptBlockLogging"
        ValueName   = "EnableScriptBlockLogging"
        Type        = "DWord"
        Value       = 1 # Enabled
        # Windows Server 2019: SV-205639r569188_rule
        # Windows 11: SV-220860r958422_rule
        # Windows Server 2012 / 2012 R2: SV-226054r569184_rule
    },
    @{
        # GPO: Computer Configuration > Policies > Administrative Templates > System > Audit Process Creation > Include command line in process creation events
        Name        = "Include Command Line in Process Creation Events"
        Subcategory = "Audit Process Creation"
        RegistryKey = "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System\Audit"
        ValueName   = "ProcessCreationIncludeCmdLine_Enabled"
        Type        = "DWord"
        Value       = 1 # Enabled
        # Windows Server 2022: SV-254341r958422_rule
        # Windows Server 2019: SV-205638r569188_rule
        # Windows 10: SV-220809r569187_rule
    },
    @{
        Name        = "Security Log Maximum Size"
        Subcategory = "Security Log"
        RegistryKey = "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\Eventlog\Security"
        ValueName   = "MaxSize"
        Type        = "DWord"
        Value       = 1048576000  # 1000 MB in bytes
        # Windows 11: SV-253338r958752_rule
        # Windows 10: SV-220780r877391_rule
        # Windows Server 2022: SV-254359r958752_rule
        # Windows Server 2019: SV-205797r958752_rule
        # Windows Server 2016 — SV-224938r877391_rule
        # Windows Server 2012 / 2012 R2 (Member Server): SV-225371r569185_rule
    },
    @{
        Name        = "System Log Maximum Size"
        Subcategory = "System Log"
        RegistryKey = "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\Eventlog\System"
        ValueName   = "MaxSize"
        Type        = "DWord"
        Value       = 1048576000  # 1000 MB in bytes
        # Windows 11: SV-253339r958752_rule
        # Windows 10: SV-220781r569187_rule
        # Windows Server 2022: SV-254360r958752_rule
        # Windows Server 2019: SV-205798r969188_rule (or variant r569188): SV-205798r569188_rule
        # Windows Server 2012/2012 R2: SV-225371r877391_rule
    },
    @{
        Name        = "Application Log Maximum Size"
        Subcategory = "Application Log"
        RegistryKey = "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\Eventlog\Application"
        ValueName   = "MaxSize"
        Type        = "DWord"
        Value       = 1048576000  # 1000 MB in bytes
        # Windows 11: SV-253337r958752_rule
        # Windows 10: SV-220779r877391_rule
        # Windows Server 2022: SV-254358r958752_rule
        # Windows Server 2019: SV-205796r958752_rule
        # Windows Server 2016: SV-224937r877391_rule
        # Windows Server 2012 / 2012 R2: SV-225370r877391_rule
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

# Configure Advanced Audit Policies (Audit Process Creation and Audit File System) using audit.csv
Write-Host "Configuring Advanced Audit Policies in GPO: $GpoName"
try {
    # Create a temporary audit policy file with UTF-8 encoding (no BOM)
    $tempCsv = [System.IO.Path]::GetTempFileName() + ".csv"
    $auditPolicy = @"
Machine Name,Policy Target,Subcategory,Subcategory GUID,Inclusion Setting,Exclusion Setting,Setting Value
,System,Computer Account Management,{0cce9235-69ae-11d9-bed3-505054503030},Success and Failure,,3
,System,User Account Management,{0cce9234-69ae-11d9-bed3-505054503030},Success and Failure,,3
,System,Process Creation,{0cce922b-69ae-11d9-bed3-505054503030},Success and Failure,,3
,System,Directory Service Changes,{0cce9238-69ae-11d9-bed3-505054503030},Success and Failure,,3
,System,Other Object Access Events,{0cce9232-69ae-11d9-bed3-505054503030},Success and Failure,,3
,System,Removable Storage,{0cce9231-69ae-11d9-bed3-505054503030},Success and Failure,,3
,System,Authorization Policy Change,{0cce923e-69ae-11d9-bed3-505054503030},Success and Failure,,3
,System,Security System Extension,{0cce923a-69ae-11d9-bed3-505054503030},Success and Failure,,3
,System,System Integrity,{0cce923b-69ae-11d9-bed3-505054503030},Success and Failure,,3
,System,Detailed File Share,{0cce9244-69ae-11d9-bed3-505054503030},Failure,,3
"@

    # Computer Configuration > Policies > Windows Settings > Security Settings > Advanced Audit Policy Configuration > Audit Policies > Account Management  > Audit Computer Account Management
        # Windows Server 2022 (DC): SV-254407r958368_rule
        # Windows Server 2019 (DC): SV-205628r958368_rule
        # Windows Server 2016 (DC): SV-224986r958368_rule (earlier revs also seen as SV-224986r852358_rule / SV-224986r569186_rule)
        # Windows Server 2012 / 2012 R2 (DC): SV-226087r569184_rule
    # Computer Configuration > Policies > Windows Settings > Security Settings > Advanced Audit Policy Configuration > Audit Policies > Account Management > Audit User Account Management
        # Windows 11: SV-253310r991551_rule, SV-253309r958566_rule
        # Windows 10: SV-220752r569187_rule, SV-220751r569187_rule
        # Windows Server 2022: SV-254304r958368_rule, SV-254305r958368_rule
        # Windows Server 2019: 205626r958368_rule, SV-205627r569188_rule
        # Windows Server 2016: SV-224885r569186_rule, SV-224886r569186_rule
        # Windows Server 2012 / 2012 R2 — Member Server: SV-225279r569185_rule, SV-225280r569185_rule
    # Computer Configuration > Policies > Windows Settings > Security Settings > Advanced Audit Policy Configuration > Audit Policies > Detailed Tracking > Audit Process Creation
        # Windows 11: SV-253307r991570_rule
        # Windows 10: SV-220754r851974_rule
        # Windows Server 2022: SV-254307r958732_rule
        # Windows Server 2019: SV-205770r958732_rule
        # Windows Server 2016: SV-224888r569186_rule
        # Windows Server 2012 / 2012 R2 (Member Server): SV-225281r569185_rule
    # Computer Configuration > Policies > Windows Settings > Security Settings > Advanced Audit Policy Configuration > Audit Policies > DS Access > Audit Directory Services Changes
        # NOTE - Even with the policy on, Windows won't log unless that specific container has an Audit Rule (SACL) applied to it.
        # Windows Server 2022 (DC): SV-254410r958732_rule
        # Windows Server 2019 (DC): SV-205793r958732_rule, SV-205794r569188_rule
        # Windows Server 2016 (DC): SV-224989r569186_rule, SV-224990r569186_rule
        # Windows Server 2012 / 2012 R2 (DC): SV-226097r569184_rule, SV-226098r569184_rule
    # Computer Configuration > Policies > Windows Settings > Security Settings > Advanced Audit Policy Configuration > Audit Policies > Object Access > Audit Other Object Access Events
        # Windows 11: SV-253315r991578_rule	SV-253316r991578_rule
        # Windows 10: SV-220763r569187_rule	SV-220764r569187_rule
        # Windows Server 2022: SV-254315r991578_rule, SV-254316r991578_rule
        # Windows Server 2019: SV-205836r958732_rule, SV-205837r958732_rule
        # Windows Server 2016: SV-224896r569186_rule, SV-224897r569186_rule
        # Windows Server 2012 / 2012 R2 (Member/Server): SV-225279r569185_rule, SV-225280r569185_rule
    # Computer Configuration > Policies > Windows Settings > Security Settings > Advanced Audit Policy Configuration > Audit Policies > Object Access > Audit Removable Storage
        # Windows 10: SV-220765r569187_rule, SV-220766r991583_rule
        # Windows 11: SV-253324r991578_rule, SV-253325r991578_rule
        # Windows Server 2019: SV-205840r958732_rule, SV-205841r958732_rule
        # Windows Server 2022: SV-254317r958422_rule, SV-254318r958422_rule
    # Computer Configuration > Policies > Windows Settings > Security Settings > Advanced Audit Policy Configuration > Audit Policies > Policy Change > Audit Authorization Policy Change
        # Windows 11: SV-253329r991578_rule, SV-253330r991578_rule
        # Windows 10: SV-220769r569187_rule, SV-220770r569187_rule
        # Windows Server 2022: SV-254491r958726_rule, SV-254492r958726_rule
        # Windows Server 2019: SV-205774r958726_rule, SV-205775r958726_rule
        # Windows Server 2016: SV-224893r569186_rule, SV-224894r569186_rule
        # Windows Server 2012 / 2012 R2: SV-226056r569184_rule, SV-226057r569184_rule
    # Computer Configuration > Policies > Windows Settings > Security Settings > Advanced Audit Policy Configuration > Audit Policies > System > Audit Security System Extension
        # Windows Server 2022: SV-254330r958732_rule
        # Windows Server 2019: SV-205782r569188_rule
        # Windows Server 2016: SV-224892r569186_rule
    # Computer Configuration > Policies > Windows Settings > Security Settings > Advanced Audit Policy Configuration > Audit Policies > System > Audit System Integrity
        # Windows Server 2022: SV-254323r958732_rule
        # Windows Server 2019: SV-205784r958732_rule
        # Windows Server 2016: SV-224927r569186_rule
        # Windows Server 2012 / 2012 R2: SV-225295r569184_rule
        # Windows 10: SV-220777r569187_rule
        # Windows 11: SV-253318r991570_rule
    # Computer Configuration > Policies > Windows Settings > Security Settings > Advanced Audit Policy Configuration > Audit Policies > Object Access Policy > Audit Detailed File Share
        # MITRE: T1053.005
        # Event ID: 5136 on domain controller
        # SV-220789r569187_rule (Failure)

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

Write-Host "GPO configuration completed. Link the GPO to an OU and apply using 'gpupdate /force' on target machines."