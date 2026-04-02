<# 
.SYNOPSIS
    Applies STIG enhanced logging settings on a system without the ability to leverage domain GPO.

.NOTES
    Run as Administrator
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

function Set-AuditPolicy {
    param(
        [Parameter(Mandatory=$true)]
        [string]$Subcategory,
        [Parameter(Mandatory=$true)]
        [string]$Setting
    )
    Write-Host "Setting Subcategory '$Subcategory' to '$Setting'"
    try {
        $SuccessParam = ""
        $FailureParam = ""
        if ($Setting -like "*Success*") {
            $SuccessParam = "/success:enable"
        } else {
            $SuccessParam = "/success:disable"
        }
        if ($Setting -like "*Failure*") {
            $FailureParam = "/failure:enable"
        } else {
            $FailureParam = "/failure:disable"
        }
        auditpol.exe /set /subcategory:"$Subcategory" $SuccessParam $FailureParam 2>&1
    }
    catch {
        Write-Host "An unexpected error occurred while setting '$Subcategory': $($_.Exception.Message)" -ForegroundColor Red
    }
}

#endregion

#region Main

# Check for Administrator privileges
if (-not ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
    Write-Host "ERROR: This script must be run with Administrator privileges to modify the registry and audit policies." -ForegroundColor Red
    return
}
Write-Host "Applying Direct Registry-Based Policies" -ForegroundColor Yellow
$RegistrySettings = @(
    @{
        # Security Option: Force audit policy subcategory settings to override category settings (STIG requirement)
        # Local Group Policy\Computer Configuration\Windows Settings\Security Settings\Local Policies\Security Options\Audit: Force audit policy subcategory settings (Windows Vista or later) to override legacy audit policy settings
        # Local Security Policy\Local Policies\Security Options\Audit: Force audit policy subcategory settings (Windows Vista or later) to override audit policy category settings
        # Windows Server 2022: SV-254449r958442_rule
        # Windows Server 2019: SV-205633r958400_rule
        # Windows 11: SV-248480r798150_rule
        Name        = "Enable Advanced Audit Policy Override"
        Path        = "HKLM:\System\CurrentControlSet\Control\Lsa"
        ValueName   = "SCENoApplyLegacyAuditPolicy"
        Type        = "DWord"
        Value       = 1
    },
    @{
        # PowerShell Setting: Turn on Script Block Logging
        # Not in Local Security Policy
        # Local Group Policy\Computer Configuration\Administrative Templates\Windows Components\Windows PowerShell\Turn on PowerShell Script Block Logging
        # Windows Server 2022: SV-254377r958442_rule
        # Windows Server 2019: SV-205792r958400_rule
        # Windows 11: SV-250873r958376_rule
        # Windows 10: SV-220860r958422_rule
        Name        = "PowerShell Script Block Logging"
        Path        = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\PowerShell\ScriptBlockLogging"
        ValueName   = "EnableScriptBlockLogging"
        Type        = "DWord"
        Value       = 1
    },
    @{
        # Audit Process Creation: Include command line in process creation events
        # Not in Local Security Policy
        # Event ID: 4688, 4696
        # Local Group Policy\Computer Configuration\Administrative Templates\System\Audit Process Creation\Include command line in process creation events
        # Windows Server 2022: SV-254378r958442_rule
        # Windows Server 2019: SV-205793r958400_rule
        # Windows 11: SV-250874r958376_rule
        # Windows 10: SV-220859r958422_rule
        Name        = "Command Line Auditing"
        Path        = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System\Audit"
        ValueName   = "ProcessCreationIncludeCmdLine_Enabled"
        Type        = "DWord"
        Value       = 1
    },
    @{
        # Event Log Size: Security Log Maximum Size (1000 MB in bytes)
        # Not in Local Security Policy
        # Local Group Policy\Computer Configuration\Administrative Templates\Windows Components\Event Log Service\Security\Specify the maximum log file size (KB)
        # Windows Server 2022: SV-254359r958442_rule
        # Windows Server 2019: SV-205797r958400_rule
        # Windows 11: SV-253338r958752_rule
        # Windows 10: SV-220780r958752_rule
        Name        = "Security Log MaxSize (1000MB)"
        Path        = "HKLM:\System\CurrentControlSet\Services\Eventlog\Security"
        ValueName   = "MaxSize"
        Type        = "DWord"
        Value       = 1048576000
    },
    @{
        # Event Log Size: System Log Maximum Size (1000 MB in bytes)
        # Not in Local Security Policy
        # Local Group Policy\Computer Configuration\Administrative Templates\Windows Components\Event Log Service\System\Specify the maximum log file size (KB)
        # Windows Server 2022: SV-254360r958442_rule
        # Windows Server 2019: SV-205798r958400_rule
        # Windows 11: SV-253339r958752_rule
        # Windows 10: SV-220781r958752_rule
        Name        = "System Log MaxSize (1000MB)"
        Path        = "HKLM:\System\CurrentControlSet\Services\Eventlog\System"
        ValueName   = "MaxSize"
        Type        = "DWord"
        Value       = 1048576000
    },
    @{
        # Event Log Size: Application Log Maximum Size (1000 MB in bytes)
        # Not in Local Security Policy
        # Local Group Policy\Computer Configuration\Administrative Templates\Windows Components\Event Log Service\Application\Specify the maximum log file size (KB)
        # Windows Server 2022: SV-254358r958442_rule
        # Windows Server 2019: SV-205796r958400_rule
        # Windows 11: SV-253337r958752_rule
        # Windows 10: SV-220779r958752_rule
        Name        = "Application Log MaxSize (1000MB)"
        Path        = "HKLM:\System\CurrentControlSet\Services\Eventlog\Application"
        ValueName   = "MaxSize"
        Type        = "DWord"
        Value       = 1048576000
    }
)
foreach ($Setting in $RegistrySettings) {
    Set-RegistryValue -Name $Setting.Name `
                      -Path $Setting.Path `
                      -ValueName $Setting.ValueName `
                      -Type $Setting.Type `
                      -Value $Setting.Value
}
Write-Host "Applying Advanced Audit Policies (using auditpol.exe)" -ForegroundColor Yellow
$AdvancedAuditPolicies = @(
    @{ Subcategory = "Computer Account Management"; Setting = "Success and Failure" },
    # Computer Configuration > Policies > Windows Settings > Security Settings > Advanced Audit Policy Configuration > Audit Policies > Account Management  > Audit Computer Account Management
        # MITRE: T1207
        # Event ID: 4741, 4743 on Domain Controller
        # Windows Server 2022 (DC): SV-254407r958368_rule
        # Windows Server 2019 (DC): SV-205628r958368_rule
        # Windows Server 2016 (DC): SV-224986r958368_rule (earlier revs also seen as SV-224986r852358_rule / SV-224986r569186_rule)
        # Windows Server 2012 / 2012 R2 (DC): SV-226087r569184_rule
    @{ Subcategory = "User Account Management"; Setting = "Success and Failure" },
    # Computer Configuration > Policies > Windows Settings > Security Settings > Advanced Audit Policy Configuration > Audit Policies > Account Management > Audit User Account Management
        # MITRE: T1207    
        # Event ID: 4738 on Domain Controller
        # Windows 11: SV-253310r991551_rule, SV-253309r958566_rule
        # Windows 10: SV-220752r569187_rule, SV-220751r569187_rule
        # Windows Server 2022: SV-254304r958368_rule, SV-254305r958368_rule
        # Windows Server 2019: 205626r958368_rule, SV-205627r569188_rule
        # Windows Server 2016: SV-224885r569186_rule, SV-224886r569186_rule
        # Windows Server 2012 / 2012 R2 — Member Server: SV-225279r569185_rule, SV-225280r569185_rule
    @{ Subcategory = "Process Creation"; Setting = "Success and Failure" },
    # Computer Configuration > Policies > Windows Settings > Security Settings > Advanced Audit Policy Configuration > Audit Policies > Detailed Tracking > Audit Process Creation
        # Windows 11: SV-253307r991570_rule
        # Windows 10: SV-220754r851974_rule
        # Windows Server 2022: SV-254307r958732_rule
        # Windows Server 2019: SV-205770r958732_rule
        # Windows Server 2016: SV-224888r569186_rule
        # Windows Server 2012 / 2012 R2 (Member Server): SV-225281r569185_rule
    @{ Subcategory = "Directory Service Changes"; Setting = "Success and Failure" },
    # Computer Configuration > Policies > Windows Settings > Security Settings > Advanced Audit Policy Configuration > Audit Policies > DS Access > Audit Directory Services Changes
        # NOTE - Even with the policy on, Windows won't log unless that specific container has an Audit Rule (SACL) applied to it.
        # MITRE: T1098
        # Event ID: Security 5136, Security 4738 on Domain Controller
        # Windows Server 2022 (DC): SV-254410r958732_rule
        # Windows Server 2019 (DC): SV-205793r958732_rule, SV-205794r569188_rule
        # Windows Server 2016 (DC): SV-224989r569186_rule, SV-224990r569186_rule
        # Windows Server 2012 / 2012 R2 (DC): SV-226097r569184_rule, SV-226098r569184_rule
    @{ Subcategory = "Other Object Access Events"; Setting = "Success and Failure" },
    # Computer Configuration > Policies > Windows Settings > Security Settings > Advanced Audit Policy Configuration > Audit Policies > Object Access > Audit Other Object Access Events
        # Windows 11: SV-253315r991578_rule	SV-253316r991578_rule
        # Windows 10: SV-220763r569187_rule	SV-220764r569187_rule
        # Windows Server 2022: SV-254315r991578_rule, SV-254316r991578_rule
        # Windows Server 2019: SV-205836r958732_rule, SV-205837r958732_rule
        # Windows Server 2016: SV-224896r569186_rule, SV-224897r569186_rule
        # Windows Server 2012 / 2012 R2 (Member/Server): SV-225279r569185_rule, SV-225280r569185_rule
    @{ Subcategory = "Removable Storage"; Setting = "Success and Failure" },
    # Computer Configuration > Policies > Windows Settings > Security Settings > Advanced Audit Policy Configuration > Audit Policies > Object Access > Audit Removable Storage
        # Windows 10: SV-220765r569187_rule, SV-220766r991583_rule
        # Windows 11: SV-253324r991578_rule, SV-253325r991578_rule
        # Windows Server 2019: SV-205840r958732_rule, SV-205841r958732_rule
        # Windows Server 2022: SV-254317r958422_rule, SV-254318r958422_rule
    @{ Subcategory = "Authorization Policy Change"; Setting = "Success and Failure" },
    # Computer Configuration > Policies > Windows Settings > Security Settings > Advanced Audit Policy Configuration > Audit Policies > Policy Change > Audit Authorization Policy Change
        # Event ID: Security 4704
        # MITRE: T1098
        # Windows 11: SV-253329r991578_rule, SV-253330r991578_rule
        # Windows 10: SV-220769r569187_rule, SV-220770r569187_rule
        # Windows Server 2022: SV-254491r958726_rule, SV-254492r958726_rule
        # Windows Server 2019: SV-205774r958726_rule, SV-205775r958726_rule
        # Windows Server 2016: SV-224893r569186_rule, SV-224894r569186_rule
        # Windows Server 2012 / 2012 R2: SV-226056r569184_rule, SV-226057r569184_rule
    @{ Subcategory = "Security System Extension"; Setting = "Success and Failure" },
    # Computer Configuration > Policies > Windows Settings > Security Settings > Advanced Audit Policy Configuration > Audit Policies > System > Audit Security System Extension
        # Windows Server 2022: SV-254330r958732_rule
        # Windows Server 2019: SV-205782r569188_rule
        # Windows Server 2016: SV-224892r569186_rule
    @{ Subcategory = "System Integrity"; Setting = "Success and Failure" },
    # Computer Configuration > Policies > Windows Settings > Security Settings > Advanced Audit Policy Configuration > Audit Policies > System > Audit System Integrity
        # Detect code integrity failures such as missing page hashes or corrupted drivers due unauthorized modification. This could be a sign of tampered binaries.
        # MITRE: T1027.001
        # Event ID: 5038, 6281
        # Windows Server 2022: SV-254323r958732_rule
        # Windows Server 2019: SV-205784r958732_rule
        # Windows Server 2016: SV-224927r569186_rule
        # Windows Server 2012 / 2012 R2: SV-225295r569184_rule
        # Windows 10: SV-220777r569187_rule
        # Windows 11: SV-253318r991570_rule
    @{ Subcategory = "Detailed File Share"; Setting = "Failure" } # Only Failure required for this one
    # Computer Configuration > Policies > Windows Settings > Security Settings > Advanced Audit Policy Configuration > Audit Policies > Object Access Policy > Audit Detailed File Share
        # SV-220789r569187_rule (Failure)   
)
foreach ($Policy in $AdvancedAuditPolicies) {
    Set-AuditPolicy -Subcategory $Policy.Subcategory -Setting $Policy.Setting
}

#endregion