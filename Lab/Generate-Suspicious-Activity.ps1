$Resources = "C:\Alerts\resources"
$Logs = "C:\Alerts\Logs"
$TestADDomain = "Contoso.com"
$TestADOU = Get-ADOrganizationalUnit -Filter "Name -eq 'Alert-Simulation'" | Select-Object -ExpandProperty DistinguishedName
$TestADGroup = "TestGroup"
$TestADComputer = "testhost"
$TestADUser = "TestUser"
$TestADUserPrincipal = "$TestADUser@$TestADDomain"
$TestGPO = "Test GPO"
$TestLocalGroup = "TestLocalGroup"
$TestLocalUser = "TestLocalUser"


# =========== APPLICATION LOGS ================


# Application Uninstalled (Application 1034, 11724)
    msiexec /x "$Resources\7z2409-x64.msi" /log "$Logs\application_uninstall.log" /promptrestart /qn /passive


# Application Uninstalled (Application 1034, 11724)
    msiexec /x "$Resources\7z2409-x64.msi" /log "$Logs\application_uninstall.log" /promptrestart /qn /passive


# =========== SECURITY LOGS ================


## ========== CREATIONS =================

# Create a Local Group (Security 4731)
    New-LocalGroup -Name $TestLocalGroup -Description "Local group for security testing"


# Create Local User (Security 4720)
    New-LocalUser -Name $TestLocalUser -Description "Testing account" -Password (ConvertTo-SecureString "TempPass123!" -AsPlainText -Force) -FullName "Test User"


# Create a Computer Object (Security 4741 on DC)
    Remove-ADComputer -Identity $TestADComputer -Confirm:$false
    New-ADComputer -Name $TestADComputer -SamAccountName $TestADComputer -Path $TestADOU -Enabled $true
	

# Create AD User Object (Security 4720 on DC)
    New-ADUser -Name $TestADUser -SamAccountName $TestADUser -UserPrincipalName $TestADUserPrincipal -Path $TestADOU -AccountPassword (ConvertTo-SecureString "TempPass123!" -AsPlainText -Force) -Enabled $true


# Create AD Group (Security 4727 on DC)
    New-ADGroup -Name $TestADGroup -GroupScope Global -GroupCategory Security -Path $TestADOU


# Create Scheduled Task (Security 4698)
    schtasks /create /tn "TestTask" /tr "notepad.exe" /sc once /st 23:59 /ru SYSTEM


# Create GPO (Security 5137 on DC)
    New-GPO -Name $TestGPO -Comment "Testing GPO creation for audit events"
    Start-Sleep -Seconds 15 # Even a clean domain takes a few seconds to create the GPO


# Create a Service (Security 4697)
    New-Service -Name "TestService" -BinaryPathName "c:\Windows\System32\notepad.exe"


## ============= MODIFY / ADD / REMOVE / ETC. ===============


# Modify User Account (Security 4738)
    Set-ADUser -Identity $TestADUser -ScriptPath "LogonScripts\MapDrives.bat"


# Add to Domain Admins (Security 4728 add, 4729 remove on DC)
    Add-ADGroupMember -Identity "Domain Admins" -Members $TestADUser
    Remove-ADGroupMember -Identity "Domain Admins" -Members $TestADUser -Confirm:$false


# Add Local User to Local Group (4732)
    Add-LocalGroupMember -Group $TestLocalGroup -Member $TestLocalUser
    Add-LocalGroupMember -Group "Administrators" -Member $TestLocalUser
    Remove-LocalGroupMember -Group $TestLocalGroup -Member $TestLocalUser
    Remove-LocalGroupMember -Group "Administrators" -Member $TestLocalUser


# Modify Local Group (Security 4735)
    Rename-LocalGroup -Name $TestLocalGroup -NewName "NewGroupName"
    Rename-LocalGroup -Name "NewGroupName" -NewName $TestLocalGroup


# Disable/Enable User Account (Security 4725 Disable, 4722 Enable) 
    Disable-LocalUser -Name $TestLocalUser
    Disable-ADAccount -Identity $TestADUser
    Enable-LocalUser -Name $TestLocalUser
    Enable-ADAccount -Identity $TestADUser


# Reset User Password (4724)
    Set-ADAccountPassword -Identity $TestADUser -NewPassword (ConvertTo-SecureString "TempPass1234!" -AsPlainText -Force) -Reset


# Change AD User Password (Security 4723 on DC)
    $domain = [System.DirectoryServices.ActiveDirectory.Domain]::GetCurrentDomain().Name
    Add-Type -AssemblyName System.DirectoryServices.AccountManagement
    $pc = New-Object System.DirectoryServices.AccountManagement.PrincipalContext('Domain', $domain)
    $user = [System.DirectoryServices.AccountManagement.UserPrincipal]::FindByIdentity($pc, $TestADUser)
    $user.ChangePassword("TempPass1234!", "NewPass123!")


# Change Local User Password (Security 4723 on target system)
    Add-Type -AssemblyName System.DirectoryServices.AccountManagement
    $ContextType = [System.DirectoryServices.AccountManagement.ContextType]::Machine
    $PrincipalContext = New-Object System.DirectoryServices.AccountManagement.PrincipalContext($ContextType, $env:COMPUTERNAME)
    $LocalUser = [System.DirectoryServices.AccountManagement.UserPrincipal]::FindByIdentity($PrincipalContext, $TestLocalUser)
    $LocalUser.ChangePassword("TempPass123!", "NewPassword123!")


# Unlock User Account (4767) (First attempts to lock, then unlocks)
    Get-ADDefaultDomainPasswordPolicy | Select-Object LockoutThreshold
    $LockoutCount = Get-ADDefaultDomainPasswordPolicy | Select-Object -ExpandProperty LockoutThreshold
    $domain = [System.DirectoryServices.ActiveDirectory.Domain]::GetCurrentDomain().Name
    1..($LockoutCount+1) | ForEach-Object {
        Add-Type -AssemblyName System.DirectoryServices.AccountManagement
        $pc = New-Object System.DirectoryServices.AccountManagement.PrincipalContext('Domain', $domain)
        $pc.ValidateCredentials($TestADUser, 'WrongPass123!') 
    }
    Get-ADUser -Identity $TestADUser -Properties badPwdCount, lockoutTime | Select-Object Name, badPwdCount, lockoutTime
    Unlock-ADAccount -Identity $TestADUser


# Modify Domain Computer (Security 4742 on DC)
    Set-ADComputer -Identity $TestADComputer -Replace @{'msDS-AllowedToDelegateTo'=@("http/webserver01.contoso.com","http/webserver01")}


# Link or Unlink a GPO (Security 5136 on DC)
    New-GPLink -Name $TestGPO -Target $TestADOU


# Modify a GPO (Security 5136 on DC)
    $Target = Get-ADObject -Filter {displayName -eq $TestGPO} -Properties objectSid
    $Target
    Set-ADObject -Identity $Target -Replace @{displayName="Sigma_Trigger_Test"}
    Set-ADObject -Identity $Target -Replace @{displayName="Test GPO"}


# Modify/Update a Service (Security 4657)
    Set-Service -Name "TestService" -StartupType Disabled


# Scheduled Task Modified (Security 4702)
    auditpol /set /subcategory:"Other Object Access Events" /success:enable
    Get-ScheduledTask -TaskName "TestTask" | Select-Object Actions -ExpandProperty Actions
    $action = New-ScheduledTaskAction -Execute "cmd.exe" -Argument "/c echo Triggered"
    Set-ScheduledTask -TaskName "TestTask" -Action $action
    Get-ScheduledTask -TaskName "TestTask" | Select-Object Actions -ExpandProperty Actions


## ============= DELETIONS / CLEANUP =============


# Delete Local User (Security 4726)
    Remove-LocalUser -Name $TestLocalUser


# Delete Local Group (Security 4734)
    Remove-LocalGroup -Name $TestLocalGroup


# Delete AD User (Security 4726 on DC)
    Remove-ADUser $TestADUser -Confirm:$false


# Delete Computer Object (Security 4743 on DC)
    Remove-ADComputer -Identity $TestADComputer -Confirm:$false
	
	
# Delete AD Group (Security 4730 on DC)
    Get-AdGroup $TestADGroup | Remove-ADGroup -Confirm:$false


# Delete a GPO (Security 5141 on DC)
    Remove-GPO -Name $TestGPO


# Delete Scheduled Task (Security 4699)
    Unregister-ScheduledTask -TaskName "TestTask" -Confirm:$false


# Delete Service (Security 4663 for attempt and path, 4660 for deletion confirmation. Special requirements below.)
# Requires 
# ...GPO Computer Configuration > Policies > Windows Settings > Security Settings > Local Policies > User Rights Assignment > Manage auditing and security log to include Administrators
# ...GPO Unsetting or bypassing GPO Setting "User Account Control: Run all administrators in Admin Approval Mode" or bypassing with "psexec.exe -s -i powershell.exe"
# ...GPO Computer Configuration > Windows Settings > Security Settings > Advanced Audit Policy Configuration > Audit Policies > Object Access > Audit Registry set to Success and Failure
    auditpol /get /subcategory:"Registry"
# ...Reboot to disable UAC, then reapply and reboot again when done
# ...Setting auditing on Services registry key:
    whoami /priv | Select-String "SeSecurityPrivilege"
    $Path = "HKLM:\SYSTEM\CurrentControlSet\Services"
    $Acl = Get-Acl $Path
    $AuditUser = "Everyone"
    $AuditRules = "Delete"
    $InheritType = "ContainerInherit, ObjectInherit"
    $PropagateType = "None"
    $AuditType = "Success"
    $AuditRule = New-Object System.Security.AccessControl.RegistryAuditRule($AuditUser, $AuditRules, $InheritType, $PropagateType, $AuditType)
    $Acl.SetAuditRule($AuditRule)
    $Acl | Set-Acl $Path
    (Get-Acl "HKLM:\SYSTEM\CurrentControlSet\Services").Sddl
    
    sc.exe delete "TestService"


#  Suspicious Windows Event Log Service Shutdown (Security 1100)
    Stop-Service -Name EventLog -Force
    Start-Service -Name EventLog
