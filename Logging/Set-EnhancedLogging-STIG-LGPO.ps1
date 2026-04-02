# This script performs these actions:
# 1. Backs up the current Local Group Policy (LGPO) settings.
# 2. Backups up the current Audit Policy settings.
# 3. Imports an EMBEDDED group_policy.pol file.
# 4. Imports an EMBEDDED audit_policy.pol file.
# 5. Reports the exact location of the backup folders.

# Update the $LGPOPath variable below to the exact location of your LGPO.exe.
$LGPOPath = "$PSScriptRoot\LGPO.exe"

# Set the base directory for the backup (uses the script's location by default)
$BackupBaseDir = Join-Path -Path $PSScriptRoot -ChildPath "LGPO_Backups"

# The following will be written directly to a temporary .pol file for LGPO to import.

$PolicyPlainText = @"
Computer
SYSTEM\CurrentControlSet\Control\Lsa
SCENoApplyLegacyAuditPolicy
DWORD:1

Computer
SOFTWARE\Policies\Microsoft\Windows\PowerShell\ScriptBlockLogging
EnableScriptBlockLogging
DWORD:1

Computer
SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System\Audit
ProcessCreationIncludeCmdLine_Enabled
DWORD:1

Computer
System\CurrentControlSet\Services\Eventlog\Security
MaxSize
DWORD:1048576000

Computer
System\CurrentControlSet\Services\Eventlog\System
MaxSize
DWORD:1048576000

Computer
System\CurrentControlSet\Services\Eventlog\Application
MaxSize
DWORD:1048576000
"@

<# 
The above $PolicyPlainText applies the following Group Policy settings:
    "Enable Advanced Audit Policy"
        GPO: Computer Configuration > Windows Settings > Security Settings > Local Policies > Security Options > Force audit policy subcategory settings (Windows Vista or later) to override audit policy category settings
        Windows 11: SV-253437r958442_rule 
        Windows 10: SV-220913r958442_rule
        Windows Server 2022: SV-254449r958442_rule
        Windows Server 2019: SV-205644r958442_rule
        Windows Server 2016: SV-225028r569186_rule
        Windows Server 2012 / 2012 R2 (Member Server): SV-225454r569185_rule

    "Turn on Script Block Logging"    
        GPO: Computer Configuration > Policies > Administrative Templates > Windows Components > Windows PowerShell > Turn on Script Block Logging
        Windows Server 2019: SV-205639r569188_rule
        Windows 11: SV-220860r958422_rule
        Windows Server 2012 / 2012 R2: SV-226054r569184_rule

    "Include Command Line in Process Creation Events"
        GPO: Computer Configuration > Policies > Administrative Templates > System > Audit Process Creation > Include command line in process creation events
        Windows Server 2022: SV-254341r958422_rule
        Windows Server 2019: SV-205638r569188_rule
        Windows 10: SV-220809r569187_rule

    "Security Log Maximum Size"
        Windows 11: SV-253338r958752_rule
        Windows 10: SV-220780r877391_rule
        Windows Server 2022: SV-254359r958752_rule
        Windows Server 2019: SV-205797r958752_rule
        Windows Server 2016: SV-224938r877391_rule
        Windows Server 2012: SV-225371r569185_rule
    
    "System Log Maximum Size"
        Windows 11: SV-253339r958752_rule
        Windows 10: SV-220781r569187_rule
        Windows Server 2022: SV-254360r958752_rule
        Windows Server 2019: SV-205798r969188_rule (or variant r569188): SV-205798r569188_rule
        Windows Server 2012: SV-225371r877391_rule
    
    "Application Log Maximum Size"
        Windows 11: SV-253337r958752_rule
        Windows 10: SV-220779r877391_rule
        Windows Server 2022: SV-254358r958752_rule
        Windows Server 2019: SV-205796r958752_rule
        Windows Server 2016: SV-224937r877391_rule
        Windows Server 2012: SV-225370r877391_rule
#>

# The following will be written directly to a temporary .pol file for LGPO to import.

$AuditPolicyPlainText = @"
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


# --- Initial Validation ---
if (-not (Test-Path $LGPOPath -PathType Leaf)) {
    Write-Host "ERROR: LGPO.exe not found at '$LGPOPath'." -ForegroundColor Red
    Write-Host "Please update the `$LGPOPath variable in the script."
    exit 1
}

# --- Perform LGPO Backup ---
$Timestamp = Get-Date -Format 'yyyyMMdd_HHmmss'
$BackupDir = Join-Path -Path $BackupBaseDir -ChildPath "LGPOBackup_$Timestamp"
New-Item -Path $BackupDir -ItemType Directory -Force | Out-Null
Write-Host "Backing up current LGPO settings to $BackupDir..." -ForegroundColor DarkGray
& $LGPOPath /b $BackupDir 2>$null

# --- Write and Import Group Policies ---
$TempPolFile = Join-Path -Path $env:TEMP -ChildPath "group_policy_$(Get-Random).pol"
try {
    # Write the group policy directly to a temporary .pol file
    $PolicyPlainText | Out-File $TempPolFile -Encoding ASCII -Force
    Write-Host "Temporary group policy file created at: $TempPolFile"
    Write-Host "Importing group policy from temporary file..." -ForegroundColor DarkGray
    & $LGPOPath /t $TempPolFile 2>$null
} catch {
    Write-Host "`nFATAL ERROR during group policy file write or LGPO import:" -ForegroundColor Red
    Write-Host $_.Exception.Message -ForegroundColor Red
    exit 1
} finally {
    if (Test-Path $TempPolFile) {
        Remove-Item $TempPolFile -Force -ErrorAction SilentlyContinue
        Write-Host "Cleaned up temporary group policy file." -ForegroundColor DarkGray
    }
}

# --- Perform Audit Policy Backup ---
$Timestamp = Get-Date -Format 'yyyyMMdd_HHmmss'
$BackupDir = Join-Path -Path $BackupBaseDir -ChildPath "AuditBackup_$Timestamp"
New-Item -Path $BackupDir -ItemType Directory -Force | Out-Null
Write-Host "Backing up current Audit Policy settings to $BackupDir..." -ForegroundColor DarkGray
auditpol.exe /backup /file:$BackupDir\AuditPolicy.csv

# --- Write and Import Audit Policy ---
$TempAuditPolicyFile = Join-Path -Path $env:TEMP -ChildPath "audit_policy_$(Get-Random).csv"
try {
    # Write the audit policy directly to a temporary .csv file
    $AuditPolicyPlainText | Out-File $TempAuditPolicyFile -Encoding ASCII -Force
    Write-Host "Temporary audit policy file created at: $TempAuditPolicyFile"
    Write-Host "Importing audit policy from temporary file..." -ForegroundColor DarkGray
    & $LGPOPath /a $TempAuditPolicyFile 2>$null
} catch {
    Write-Host "`nFATAL ERROR during audit policy file write or LGPO import:" -ForegroundColor Red
    Write-Host $_.Exception.Message -ForegroundColor Red
    exit 1
} finally {
    if (Test-Path $TempAuditPolicyFile) {
        Remove-Item $TempAuditPolicyFile -Force -ErrorAction SilentlyContinue
        Write-Host "Cleaned up temporary audit policy file." -ForegroundColor DarkGray
    }
}

# --- Additional Logging Configuration ---
Write-Host "Enabling NTLM Operational event log..." -ForegroundColor DarkGray
wevtutil set-log 'Microsoft-Windows-NTLM/Operational' /enabled:true /rt:true /q:true

# --- Write Backup Location to Screen ---
Write-Host "`n--- Script Complete ---"
Write-Host "`nThe **ORIGINAL** Group policy was successfully backed up to the following location:" -ForegroundColor Yellow
Write-Host "$BackupDir" -ForegroundColor Cyan
Write-Host "`nYou can use ""LGPO.exe /t $BackupDir /force"" to revert the policy if needed."
Write-Host "`nThe **ORIGINAL** Audit policy was successfully backed up to the following location:" -ForegroundColor Yellow
Write-Host "$BackupDir" -ForegroundColor Cyan
Write-Host "`nYou can use ""LGPO.exe /a $BackupDir\AuditPolicy.csv /force"" to revert the policy if needed."
pause
