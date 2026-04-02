<# 
.SYNOPSIS
    Applies Non-STIG enhanced logging settings on a system without the ability to leverage domain GPO.

.NOTES
    Run as Administrator.
#>

#region Functions

function Set-RegistryValue {
    param(
        [Parameter(Mandatory=$true)]
        [string]$Name,
        [Parameter(Mandatory=$true)]
        [string]$Path,
        [Parameter(Mandatory=$true)]
        [string]$ValueName,
        [Parameter(Mandatory=$true)]
        [string]$Type,
        [Parameter(Mandatory=$true)]
        $Value
    )
    Write-Host "Setting Subcategory '$Subcategory' to '$Setting'"
    try {
        $ParentPath = $Path.Replace("HKLM:", "HKEY_LOCAL_MACHINE").Replace("HKCU:", "HKEY_CURRENT_USER")
        $KeyPath = Split-Path -Path $ParentPath -Parent
        $KeyName = Split-Path -Path $ParentPath -Leaf
        if (-not (Test-Path $Path)) {
            $null = New-Item -Path $KeyPath -Name $KeyName -Force -ErrorAction Stop
            Write-Host "  -> Created key: $Path"
        }
        Set-ItemProperty -Path $Path -Name $ValueName -Type $Type -Value $Value -Force -ErrorAction Stop
    }
    catch {
        Write-Host "Error configuring $($Name): $($_.Exception.Message)" -ForegroundColor Red
    }
}

#endregion

#region Main

# Check for Administrator privileges
if (-not ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
    Write-Host "ERROR: This script must be run with Administrator privileges to modify the registry and event logs." -ForegroundColor Red
    return
}
Write-Host "Applying Enhanced Logging Registry Policies" -ForegroundColor Yellow
$RegistrySettings = @(
    @{
        # 1. Enable PowerShell Module Logging (Set-ItemProperty ... -Name EnableModuleLogging -Value 1)
        # Local Group Policy\Computer Configuration\Administrative Templates\Windows Components\Windows PowerShell\Turn on Module Logging
        Name        = "PowerShell Module Logging"
        Path        = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\PowerShell\ModuleLogging"
        ValueName   = "EnableModuleLogging"
        Type        = "DWord"
        Value       = 1
    },
    @{
        # 2. Log all PowerShell Modules (Set-ItemProperty ... -Name '*' -Value '*')
        # Local Group Policy\Computer Configuration\Administrative Templates\Windows Components\Windows PowerShell\Turn on Module Logging
        Name        = "PowerShell Module Logging - All Modules"
        Path        = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\PowerShell\ModuleLogging\ModuleNames"
        ValueName   = "*"
        Type        = "String" 
        Value       = "*"
    },
    @{
        # 3. Enable PowerShell Script Block Logging (Set-ItemProperty ... -Name EnableScriptBlockLogging -Value 1)
        # Local Group Policy\Computer Configuration\Administrative Templates\Windows Components\Windows PowerShell\Turn on PowerShell Script Block Logging
        Name        = "PowerShell Script Block Logging"
        Path        = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\PowerShell\ScriptBlockLogging"
        ValueName   = "EnableScriptBlockLogging"
        Type        = "DWord"
        Value       = 1
    },
    @{
        # 4. Enable Advanced Audit Policy Override
        # Local Security Policy\Security Settings\Local Policies\Security Options\Audit: Force audit policy subcategory settings (Windows Vista or later) to override legacy audit policy settings
        # Local Group Policy\Computer Configuration\Windows Settings\Security Settings\Local Policies\Security Options\Audit: Force audit policy subcategory settings (Windows Vista or later) to override legacy audit policy settings
        Name        = "Enable Advanced Audit Policy Override"
        Path        = "HKLM:\SYSTEM\CurrentControlSet\Control\Lsa"
        ValueName   = "SCENoApplyLegacyAuditPolicy"
        Type        = "DWord"
        Value       = 1
    },
    @{
        # 5. Enable Audit Receiving NTLM Traffic
        # Local Security Policy\Security Settings\Local Policies\Security Options\Network security: Restrict NTLM: Audit Incoming NTLM Traffic
        # Local Group Policy\Computer Configuration\Policies\Windows Settings\Security Settings\Local Policies\Security Options\Network security: Restrict NTLM: Audit incoming NTLM traffic
        Name        = "Audit Receiving NTLM Traffic (All)"
        Path        = "HKLM:\SYSTEM\CurrentControlSet\Control\Lsa\MSV1_0"
        ValueName   = "AuditReceivingNTLMTraffic"
        Type        = "DWord"
        Value       = 2 # 2 = Enable auditing for all traffic
    }
    @{
        # 6. Enable Audit Receiving NTLM Traffic
        # Local Security Policy\Security Settings\Local Policies\Security Options\Network security: Restrict NTLM: Audit NTLM authentication in this domain
        # Local Group Policy\Computer Configuration\Policies\Windows Settings\Security Settings\Local Policies\Security Options\Network security: Restrict NTLM: Audit NTLM authentication in this domain
        Name        = "Audit Receiving NTLM Traffic (All)"
        Path        = "HKLM:\SYSTEM\CurrentControlSet\Control\Lsa\MSV1_0"
        ValueName   = "AuditNTLMInDomain"
        Type        = "DWord"
        Value       = 7 # 7 = Enable auditing for all
    }
)
foreach ($Setting in $RegistrySettings) {
    Set-RegistryValue -Name $Setting.Name `
                      -Path $Setting.Path `
                      -ValueName $Setting.ValueName `
                      -Type $Setting.Type `
                      -Value $Setting.Value
}
Write-Host "`nConfiguring Event Logs" -ForegroundColor Yellow
try {
    wevtutil set-log 'Microsoft-Windows-NTLM/Operational' /enabled:true /rt:true /q:true
    Write-Host "  -> Success: NTLM Operational Log enabled and set to circular retention." -ForegroundColor Green
}
catch {
    Write-Host "  -> ERROR enabling NTLM Operational Log: $($_.Exception.Message)" -ForegroundColor Red
}

Write-Host "`nConfiguration Complete." -ForegroundColor Green

#endregion
