$Resources = "C:\Alerts\resources"
$Logs = "C:\Alerts\Logs"
$TestADComputer = "testhost"
$TestADOU = Get-ADOrganizationalUnit -Filter "Name -eq 'Alert-Simulation'" | Select-Object -ExpandProperty DistinguishedName
$TestADUser = "TestUser"
$TestADUserPrincipal = "$TestADUser@contoso.com"
$TestADGroup = "TestGroup"
$Pass = ConvertTo-SecureString -String "SuperStrong123!@#" -AsPlainText -Force
$ISOPath = "C:\Alerts\resources\Core-current.iso"
$TestGPO = "Test GPO"
$TestLocalGroup = "TestLocalGroup"
$TestLocalUser = "TestLocalUser"

# =========== APPLICATION LOGS ================


# Application Uninstalled (Application 1034, 11724)
    msiexec /x "C:\$ENV:HOMEPATH\desktop\alert_sim\7z2409-x64.msi" /log "$Logs\application_uninstall.log" /promptrestart /qn /passive


# Detects MSI package installation from suspicious locations (Application 1040, 1042)
    Copy-Item -Path "$Resources\7z2409-x64.msi" "$ENV:HOMEPATH\Desktop\alert_sim" -Force
    msiexec /i "C:\$ENV:HOMEPATH\desktop\alert_sim\7z2409-x64.msi" /log "$Logs\desktop_install.log" /promptrestart /qn /passive


# Application Uninstalled (Application 1034, 11724)
    msiexec /x "C:\$ENV:HOMEPATH\desktop\alert_sim\7z2409-x64.msi" /log "$Logs\application_uninstall.log" /promptrestart /qn /passive


# MSI Installation From Web (Application 1040, 1042)
    msiexec /i "C:\fakehttp://127.0.0.1:8000/Software/7z2409-x64.msi" /qn /log "C:\Temp\install.log"


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


# Weak Encryption Enabled and Kerberoast (Security 4738 on DC)
    Get-ADUser $TestADUser | Set-ADUser -Replace @{userAccountControl=0x810} # may require setting manually via ADUC > User > Store Password Via Reversable Encryption


# Active Directory User Backdoors (Security 4742, 5136 on DC)
    Import-Module ActiveDirectory
    $Delegate = Get-ADObject -Filter {SamAccountName -eq $TestADUser} -Properties objectSid
    $SD = New-Object Security.AccessControl.RawSecurityDescriptor("O:SYG:SYD:(A;;CC;;;$($Delegate.objectSid))")
    $SDBytes = New-Object byte[] $SD.BinaryLength
    $SD.GetBinaryForm($SDBytes, 0)
    Set-ADComputer -Identity $TestADComputer -Replace @{'msDS-AllowedToActOnBehalfOfOtherIdentity'=$SDBytes} -Verbose
    Get-ADObject -Filter {SamAccountName -eq $TestADUser}
    Get-ADComputer -Identity $TestADComputer -Properties msDS-AllowedToActOnBehalfOfOtherIdentity | Select-Object -ExpandProperty msDS-AllowedToActOnBehalfOfOtherIdentity
    #pause
    Set-ADComputer -Identity $TestADComputer -Remove @{'msDS-AllowedToActOnBehalfOfOtherIdentity'=$SDBytes}


# Active Directory User Backdoors (Security 4738 on DC)
    # Any accounts (user or computer) that have service principal names (SPNs) set in their msDS-AllowedToDelegateTo property can pretend to be any user in the domain (they can "delegate") to those specific SPNs
    setspn -S HTTP/WebServer1.domain.com $TestADUser
    Set-ADUser -Identity $TestADUser -Add @{"msDS-AllowedToDelegateTo"="HTTP/servername.domain.com"}
    Get-ADUser -Identity $TestADUser -Properties msDS-AllowedToDelegateTo | Select-Object -ExpandProperty msDS-AllowedToDelegateTo
    Set-ADUser -Identity $TestADUser -Remove @{"msDS-AllowedToDelegateTo"="HTTP/servername.domain.com"}


# Possible DC Shadow Attack (Security 4742, 5136)
    # Step 1: Get the current ACL for the AD object
    $DistinguishedName = (Get-ADComputer $env:COMPUTERNAME | select -ExpandProperty DistinguishedName)
    $adPath = "AD:$DistinguishedName"
    $acl = Get-Acl -Path $adPath

    # Step 2: Create an audit rule for the servicePrincipalName attribute
    $identity = [System.Security.Principal.NTAccount]"Contoso\Domain Admins"  # Group to audit (e.g., Domain Admins)
    $auditFlags = [System.Security.AccessControl.AuditFlags]::Success     # Audit successful changes

    # Define the access rule for the servicePrincipalName attribute
    $auditRule = New-Object System.DirectoryServices.ActiveDirectoryAuditRule(
        $identity,
        [System.DirectoryServices.ActiveDirectoryRights]::WriteProperty,
        $auditFlags,
        [System.Guid]"f3a64788-5306-11d1-a9c5-0000f80367c1"  # Schema ID for servicePrincipalName
    )

    # Step 3: Add the audit rule to the ACL
    $acl.AddAuditRule($auditRule)

    # Step 4: Apply the updated ACL to the AD object
    Set-Acl -Path $adPath -AclObject $acl
    $NewSPN = "GC/TestSPN"             # SPN starting with 'GC/' to trigger the rule

    # Add the new SPN to the computer object
    Set-ADComputer -Identity $TestADComputer -Add @{servicePrincipalName=$NewSPN}

    # Verify the change
    $updatedComputer = Get-ADComputer -Identity $TestADComputer -Properties servicePrincipalName
    Write-Host "Updated SPNs for $TestADComputer :"
    $updatedComputer.servicePrincipalName

    Start-Sleep -Seconds 3
    Set-ADComputer -Identity $TestADComputer -Remove @{servicePrincipalName=$NewSPN}


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


# New or Renamed User Account with '$' Character (Security 4720, 4781)
    New-LocalUser -Name "Test$" -Password $Pass
    Rename-LocalUser -Name "Test$" -NewName "Test-Renamed"
    Rename-LocalUser -Name "Test-Renamed" -NewName "Test-Renamed$"
    Remove-LocalUser -Name "Test-Renamed$"


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


# Failed Code Integrity Checks (Security 5038)
    cmd.exe /c "sc create DummyDriver type= kernel start= demand binPath= C:\Windows\System32\drivers\busted.sys"
    & sc.exe start DummyDriver
    & sc.exe stop DummyDriver
    cmd.exe /c "sc delete DummyDriver"


# Windows Event Auditing Disabled (Security 4719)
    auditpol /set /subcategory:"File System" /success:disable /failure:disable
    auditpol /set /subcategory:"File System" /success:disable /failure:enable


# Important Windows Event Auditing Disabled (Security 4719)
    auditpol /set /subcategory:"Process Creation" /success:disable /failure:disable
    auditpol /set /subcategory:"Process Creation" /success:disable /failure:enable


# ETW Logging Disabled In .NET Processes - Registry (Security 4657)
    # Get the current ACL for the .NETFramework key
    $key = "HKLM:\SOFTWARE\Microsoft\.NETFramework"
    $acl = Get-Acl -Path $key

    # Create a new audit rule to log modifications by everyone (Success and Failure)
    $auditRule = New-Object System.Security.AccessControl.RegistryAuditRule(
        "Everyone",  # Identity
        "SetValue,CreateSubKey,Delete",  # RegistryRights (modify operations)
        "None",  # InheritanceFlags
        "None",  # PropagationFlags
        "Success,Failure"  # AuditFlags
    )

    # Add the audit rule to the ACL
    $acl.AddAuditRule($auditRule)

    # Apply the updated ACL to the registry key
    Set-Acl -Path $key -AclObject $acl

    auditpol /get /subcategory:"Registry"
    auditpol /set /subcategory:"Registry" /success:enable /failure:enable
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\.NETFramework" -Name "ETWEnabled" -Value 0 -Type DWord
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\.NETFramework" -Name "ETWEnabled" -Value 1 -Type DWord
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" -Name "COMPlus_ETWEnabled" -Value 0 -Type DWord
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" -Name "COMPlus_ETWEnabled" -Value 1 -Type DWord
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" -Name "COMPlus_ETWFlags" -Value 0 -Type DWord
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" -Name "COMPlus_ETWFlags" -Value 1 -Type DWord


# ISO Image Mounted (Security 4663)
    Mount-DiskImage -ImagePath $ISOPath -PassThru | Get-Volume
    Dismount-DiskImage -ImagePath $ISOPath


# PowerShell Scripts Installed as Services - Security (Security 4697)
    New-Service -Name "TestPowerShellService" -BinaryPathName "c:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe"


# Modify/Update a Service (Security 4657)
    Set-Service -Name "TestPowerShellService" -StartupType Disabled


# Delete Service (Security 4660, special requirements)
    sc.exe delete "TestPowerShellService"


# Remote Access Tool Services Have Been Installed - Security (Security 4697)
    New-Service -Name "TeamViewer" -BinaryPathName "C:\Windows\System32\notepad.exe"
    sc.exe delete "TeamViewer"


# Suspicious Windows ANONYMOUS LOGON Local Account Created - Security (Security 4720)
    New-LocalUser -Name "ANONYMOUS    LOGON" -Password (ConvertTo-SecureString "Password123!@#" -AsPlainText -Force)
    Remove-LocalUser -Name "ANONYMOUS    LOGON"


# Suspicious Scheduled Task Creation - Security (Security 4698)
    schtasks /create /tn "SuspiciousTask" /tr "powershell.exe -File C:\temp\test-script.ps1" /sc once /st 23:59 /ru SYSTEM


# Important Scheduled Task Disabled (Security 4701 Disable)
    Disable-ScheduledTask -TaskName "\Microsoft\Windows\WindowsUpdate\Scheduled Start"
    Enable-ScheduledTask -TaskName "\Microsoft\Windows\WindowsUpdate\Scheduled Start"


# Scheduled Task Modified (Security 4702)
    auditpol /set /subcategory:"Other Object Access Events" /success:enable
    Get-ScheduledTask -TaskName "SuspiciousTask" | Select-Object Actions -ExpandProperty Actions
    $action = New-ScheduledTaskAction -Execute "cmd.exe" -Argument "/c echo Triggered"
    Set-ScheduledTask -TaskName "SuspiciousTask" -Action $action
    Get-ScheduledTask -TaskName "SuspiciousTask" | Select-Object Actions -ExpandProperty Actions


# Scheduled Task Deleted (Security 4699)
    Unregister-ScheduledTask -TaskName "SuspiciousTask" -Confirm:$false


# =========== FIREWALL ================


# Windows Firewall Settings Have Been Changed (Microsoft-Windows-Windows Firewall With Advanced Security/Firewall 2003)
netsh advfirewall set allprofiles state off
netsh advfirewall set allprofiles state on


# A Rule Has Been Deleted From The Windows Firewall Exception List (Microsoft-Windows-Windows Firewall With Advanced Security/Firewall 2006)
netsh advfirewall firewall add rule name="TestRule" dir=in action=allow protocol=any
netsh advfirewall firewall delete rule name="TestRule"


# New Firewall Rule Added In Windows Firewall Exception List For Potential Suspicious Application (Microsoft-Windows-Windows Firewall With Advanced Security/Firewall 2004)
netsh advfirewall firewall add rule name="SuspiciousTestRule" dir=in action=allow program="C:\Windows\Temp\testapp.exe" protocol=any
netsh advfirewall firewall delete rule name="SuspiciousTestRule"
