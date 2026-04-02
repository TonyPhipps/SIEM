# This script performs these actions:
# 1. Backs up the current Local Group Policy (LGPO) settings.
# 2. Imports an EMBEDDED group_policy.pol file.
# 3. Reports the exact location of the backup folder.

# Update the $LGPOPath variable below to the exact location of your LGPO.exe.
$LGPOPath = "$PSScriptRoot\LGPO.exe"

# Set the base directory for the backup (uses the script's location by default)
$BackupBaseDir = Join-Path -Path $PSScriptRoot -ChildPath "LGPO_Backups"

# The following will be directly to a temporary .pol file for LGPO to import.

$PolicyPlainText = @"
Computer
SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System\Audit
ForceAuditPolicy
DWORD:1

Computer
SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System\RestrictNTLM
AuditIncomingNTLMTraffic
DWORD:2

Computer
SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System\RestrictNTLM
AuditNTLMInDomain
DWORD:7

Computer
SOFTWARE\Policies\Microsoft\Windows\PowerShell
ScriptBlockLogging
DWORD:1

Computer
SOFTWARE\Policies\Microsoft\Windows\PowerShell\ScriptBlockLogging
EnableScriptBlockLogging
DWORD:1

Computer
SOFTWARE\Policies\Microsoft\Windows\PowerShell\ModuleLogging
EnableModuleLogging
DWORD:1

Computer
SOFTWARE\Policies\Microsoft\Windows\PowerShell\ModuleLogging\ModuleNames
*
DELETEALLVALUES

Computer
SOFTWARE\Policies\Microsoft\Windows\PowerShell\ModuleLogging\ModuleNames
*
SZ:*
"@

<# 
The above $PolicyPlainText applies the following Group Policy settings:
Enabled:
- Local Group Policy\Computer Configuration\Administrative Templates\Windows Components\Windows PowerShell\Turn on PowerShell Script Block Logging
- Local Group Policy\Computer Configuration\Administrative Templates\Windows Components\Windows PowerShell\Turn on Module Logging
- Local Group Policy\Computer Configuration\Windows Settings\Security Settings\Local Policies\Security Options\Audit: Force audit policy subcategory settings (Windows Vista or later) to override legacy audit policy settings

Enabled and set to "2" (Audit only):
- Local Group Policy\Computer Configuration\Windows Settings\Security Settings\Local Policies\Security Options\Network security: Restrict NTLM: Audit incoming NTLM traffic

Enabled and set to "7" (all):
- Local Group Policy\Computer Configuration\Policies\Windows Settings\Security Settings\Local Policies\Security Options\Network security: Restrict NTLM: Audit NTLM authentication in this domain

Adds a wildcard entry for all modules (*:*):
- Local Group Policy\Computer Configuration\Administrative Templates\Windows Components\Windows PowerShell\Turn on Module Logging (specifically, the ModuleNames list)
#>

# The following will be written directly to a temporary .pol file for LGPO to import.

$AuditPolicyPlainText = @"
Machine Name,Policy Target,Subcategory,Subcategory GUID,Inclusion Setting,Exclusion Setting,Setting Value
,System,Directory Service Access,{0cce923b-69ae-11d9-bed3-505054503030},Success,,1
"@

# --- Initial Validation ---
if (-not (Test-Path $LGPOPath -PathType Leaf)) {
    Write-Host "ERROR: LGPO.exe not found at '$LGPOPath'." -ForegroundColor Red
    Write-Host "Please update the `$LGPOPath variable in the script."
    exit 1
}

# --- Perform LGPO Backup ---
$Timestamp = Get-Date -Format 'yyyyMMdd_HHmmss'
$BackupDir = Join-Path -Path $BackupBaseDir -ChildPath "Backup_$Timestamp"
New-Item -Path $BackupDir -ItemType Directory -Force | Out-Null
Write-Host "Backing up current LGPO settings to $BackupDir..." -ForegroundColor Yellow
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
Write-Host "`nThe **ORIGINAL** policy was successfully backed up to the following location:" -ForegroundColor Yellow
Write-Host "$BackupDir" -ForegroundColor Cyan
Write-Host "`nYou can use ""LGPO.exe /t $BackupDir /force"" to revert the policy if needed."
pause
