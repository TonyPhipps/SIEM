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


# Remove Local User (Security 4726)
Remove-LocalUser -Name $TestLocalUser


# Remove Local Group (Security 4734)
Remove-LocalGroup -Name $TestLocalGroup


# Remove AD User (4726 on DC)
    Remove-ADUser $TestADUser -Confirm:$false


# Remove Computer Object (Security 4743 on DC)
    Remove-ADComputer -Identity $TestADComputer -Confirm:$false
	
	
# Remove AD Group (Security 4730 on DC)
    Get-AdGroup $TestADGroup | Remove-ADGroup -Confirm:$false


# Create GPO (Security 5137 on DC)
    New-GPO -Name $TestGPO -Comment "Testing GPO creation for audit events"
    Start-Sleep -Seconds 15 # Even a clean domain takes a few seconds to create the GPO


# Link or Unlink a GPO (Security 5136 on DC)
    New-GPLink -Name $TestGPO -Target $TestADOU


# Modify a GPO (Security 5136 on DC)
    $Target = Get-ADObject -Filter {displayName -eq $TestGPO} -Properties objectSid
    $Target
    Set-ADObject -Identity $Target -Replace @{displayName="Sigma_Trigger_Test"}
    Set-ADObject -Identity $Target -Replace @{displayName="Test GPO"}


# Remove a GPO (Security 5141 on DC)
    Remove-GPO -Name $TestGPO


# Modify/Update a Service (Security 4657)
    Set-Service -Name "TestPowerShellService" -StartupType Disabled


# Delete Service (Security 4660, special requirements)
    sc.exe delete "TestPowerShellService"


# Scheduled Task Modified (Security 4702)
    auditpol /set /subcategory:"Other Object Access Events" /success:enable
    Get-ScheduledTask -TaskName "SuspiciousTask" | Select-Object Actions -ExpandProperty Actions
    $action = New-ScheduledTaskAction -Execute "cmd.exe" -Argument "/c echo Triggered"
    Set-ScheduledTask -TaskName "SuspiciousTask" -Action $action
    Get-ScheduledTask -TaskName "SuspiciousTask" | Select-Object Actions -ExpandProperty Actions


# Scheduled Task Deleted (Security 4699)
    Unregister-ScheduledTask -TaskName "SuspiciousTask" -Confirm:$false


