$Resources = "C:\Alerts\resources"
$Logs = "C:\Alerts\Logs"
$TestADDomain = "Contoso.com"
$TestADOU = Get-ADOrganizationalUnit -Filter "Name -eq 'Alert-Simulation'" | Select-Object -ExpandProperty DistinguishedName
$TestADComputer = "testhost"
$TestADUser = "TestUser"
$Pass = ConvertTo-SecureString -String "SuperStrong123!@#" -AsPlainText -Force
$ISOPath = "C:\Alerts\resources\Core-current.iso"


# title: MSI Installation From Suspicious Locations 
# id: c7c8aa1c-5aff-408e-828b-998e3620b341 (Application 1040, 1042)
    Copy-Item -Path "$Resources\7z2409-x64.msi" "$ENV:HOMEPATH\Desktop\alert_sim" -Force
    msiexec /i "C:\$ENV:HOMEPATH\desktop\alert_sim\7z2409-x64.msi" /log "$Logs\desktop_install.log" /promptrestart /qn /passive


# title: MSI Installation From Web
# id: 5594e67a-7f92-4a04-b65d-1a42fd824a60 (Application 1040, 1042)
    msiexec /i "C:\fakehttp://127.0.0.1:8000/Software/7z2409-x64.msi" /qn /log "C:\Temp\install.log"


# title: Active Directory User Backdoors
# sid: 300bac00-e041-4ee2-9c36-e262656a6ecc (Security 4742, 5136 on DC)
    Import-Module ActiveDirectory
    New-ADUser -Name $TestADUser -SamAccountName $TestADUser -UserPrincipalName $TestADUserPrincipal -Path $TestADOU -AccountPassword (ConvertTo-SecureString "TempPass123!" -AsPlainText -Force) -Enabled $true
    $Delegate = Get-ADObject -Filter {SamAccountName -eq $TestADUser} -Properties objectSid
    $SD = New-Object Security.AccessControl.RawSecurityDescriptor("O:SYG:SYD:(A;;CC;;;$($Delegate.objectSid))")
    $SDBytes = New-Object byte[] $SD.BinaryLength
    $SD.GetBinaryForm($SDBytes, 0)
    New-ADComputer -Name $TestADComputer -SamAccountName $TestADComputer -Path $TestADOU -Enabled $true
    Set-ADComputer -Identity $TestADComputer -Replace @{'msDS-AllowedToActOnBehalfOfOtherIdentity'=$SDBytes} -Verbose
    Get-ADObject -Filter {SamAccountName -eq $TestADUser}
    Get-ADComputer -Identity $TestADComputer -Properties msDS-AllowedToActOnBehalfOfOtherIdentity | Select-Object -ExpandProperty msDS-AllowedToActOnBehalfOfOtherIdentity
    #pause
    Set-ADComputer -Identity $TestADComputer -Remove @{'msDS-AllowedToActOnBehalfOfOtherIdentity'=$SDBytes}


# title: Active Directory User Backdoors
# sid: 300bac00-e041-4ee2-9c36-e262656a6ecc (Security 4738 on DC)
# Any accounts (user or computer) that have service principal names (SPNs) set in their msDS-AllowedToDelegateTo property can pretend to be any user in the domain (they can "delegate") to those specific SPNs
    setspn -S HTTP/WebServer1.domain.com $TestADUser
    Set-ADUser -Identity $TestADUser -Add @{"msDS-AllowedToDelegateTo"="HTTP/servername.domain.com"}
    Get-ADUser -Identity $TestADUser -Properties msDS-AllowedToDelegateTo | Select-Object -ExpandProperty msDS-AllowedToDelegateTo
    Set-ADUser -Identity $TestADUser -Remove @{"msDS-AllowedToDelegateTo"="HTTP/servername.domain.com"}


# title: Possible DC Shadow Attack
# id: 32e19d25-4aed-4860-a55a-be99cb0bf7ed (Security 4742, 5136)
    # Step 1: Get the current ACL for the AD object
    $DistinguishedName = (Get-ADComputer $env:COMPUTERNAME | Select-Object -ExpandProperty DistinguishedName)
    $adPath = "AD:$DistinguishedName"
    $acl = Get-Acl -Path $adPath

    # Step 2: Create an audit rule for the servicePrincipalName attribute
    $identity = [System.Security.Principal.NTAccount]"$TestADDomain\Domain Admins"  # Group to audit (e.g., Domain Admins)
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


# title: Weak Encryption Enabled and Kerberoast
# id: f6de9536-0441-4b3f-a646-f4e00f300ffd (Security 4738 on DC)
    Get-ADUser $TestADUser | Set-ADUser -Replace @{userAccountControl=0x810} # may require setting manually via ADUC > User > Store Password Via Reversable Encryption


# title: New or Renamed User Account with '$' Character
# id: cfeed607-6aa4-4bbd-9627-b637deb723c8 (Security 4720, 4781)
    New-LocalUser -Name "Test$" -Password $Pass
    Rename-LocalUser -Name "Test$" -NewName "Test-Renamed"
    Rename-LocalUser -Name "Test-Renamed" -NewName "Test-Renamed$"
    Remove-LocalUser -Name "Test-Renamed$"


# title: Failed Code Integrity Checks
# id: 470ec5fa-7b4e-4071-b200-4c753100f49b (Security 5038)
    cmd.exe /c "sc create DummyDriver type= kernel start= demand binPath= C:\Windows\System32\drivers\busted.sys"
    & sc.exe start DummyDriver
    & sc.exe stop DummyDriver
    cmd.exe /c "sc delete DummyDriver"


# title: Windows Event Auditing Disabled
# id: 69aeb277-f15f-4d2d-b32a-55e883609563 (Security 4719)
    auditpol /set /subcategory:"File System" /success:disable /failure:disable
    auditpol /set /subcategory:"File System" /success:disable /failure:enable


# title: Important Windows Event Auditing Disabled
# id: ab4561b1-6c7e-48a7-ad08-087cfb9ce8f1 (Security 4719)
    auditpol /set /subcategory:"Process Creation" /success:disable /failure:disable
    auditpol /set /subcategory:"Process Creation" /success:disable /failure:enable


# title: ETW Logging Disabled In .NET Processes - Registry
# id: a4c90ea1-2634-4ca0-adbb-35eae169b6fc (Security 4657)
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


# title: ISO Image Mounted
# id: 0248a7bc-8a9a-4cd8-a57e-3ae8e073a073 (Security 4663)
    Mount-DiskImage -ImagePath $ISOPath -PassThru | Get-Volume
    Dismount-DiskImage -ImagePath $ISOPath


# title: PowerShell Scripts Installed as Services - Security
# id: 2a926e6a-4b81-4011-8a96-e36cc8c04302 (Security 4697)
    New-Service -Name "TestPowerShellService" -BinaryPathName "c:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe"


# title: Remote Access Tool Services Have Been Installed - Security
# id: c8b00925-926c-47e3-beea-298fd563728e (Security 4697)
    New-Service -Name "TeamViewer" -BinaryPathName "C:\Windows\System32\notepad.exe"
    sc.exe delete "TeamViewer"


# title: Suspicious Windows ANONYMOUS LOGON Local Account Created
# id: 1bbf25b9-8038-4154-a50b-118f2a32be27 (Security 4720)
    New-LocalUser -Name "ANONYMOUS    LOGON" -Password (ConvertTo-SecureString "Password123!@#" -AsPlainText -Force)
    Remove-LocalUser -Name "ANONYMOUS    LOGON"


# title: Suspicious Scheduled Task Creation
# id: 3a734d25-df5c-4b99-8034-af1ddb5883a4 (Security 4698)
    schtasks /create /tn "SuspiciousTask" /tr "powershell.exe -File C:\temp\test-script.ps1" /sc once /st 23:59 /ru SYSTEM


# title: Important Scheduled Task Deleted/Disabled
# id: 7595ba94-cf3b-4471-aa03-4f6baa9e5fad (Security 4701 Disable)
    Disable-ScheduledTask -TaskName "\Microsoft\Windows\WindowsUpdate\Scheduled Start"
    Enable-ScheduledTask -TaskName "\Microsoft\Windows\WindowsUpdate\Scheduled Start"


# =========== FIREWALL ================


# title: Windows Firewall Settings Have Been Changed
# id: 00bb5bd5-1379-4fcf-a965-a5b6f7478064 (Microsoft-Windows-Windows Firewall With Advanced Security/Firewall 2003)
netsh advfirewall set allprofiles state off
netsh advfirewall set allprofiles state on


# title: A Rule Has Been Deleted From The Windows Firewall Exception List
# id: c187c075-bb3e-4c62-b4fa-beae0ffc211f (Microsoft-Windows-Windows Firewall With Advanced Security/Firewall 2006)
netsh advfirewall firewall add rule name="TestRule" dir=in action=allow protocol=any
netsh advfirewall firewall delete rule name="TestRule"


# title: New Firewall Rule Added In Windows Firewall Exception List For Potential Suspicious Application
# id: 9e2575e7-2cb9-4da1-adc8-ed94221dca5e (Microsoft-Windows-Windows Firewall With Advanced Security/Firewall 2004)
netsh advfirewall firewall add rule name="SuspiciousTestRule" dir=in action=allow program="C:\Windows\Temp\testapp.exe" protocol=any
netsh advfirewall firewall delete rule name="SuspiciousTestRule"


# title: Certificate Exported From Local Certificate Store
# id: 58c0bff0-40a0-46e8-b5e8-b734b84d2017 (Microsoft-Windows-CertificateServicesClient-Lifecycle-System/Operational 1007)
wevtutil set-log "Microsoft-Windows-CertificateServicesClient-Lifecycle-System/Operational" /e:true
# Create a self-signed cert with an exportable private key
$cert = New-SelfSignedCertificate -DnsName "LabExportTest" `
    -CertStoreLocation "Cert:\LocalMachine\My" `
    -KeyExportPolicy Exportable
Get-ChildItem Cert:\LocalMachine\My | Where-Object { $_.Subject -like "*LabExportTest*" } | Select-Object Subject, NotAfter, Thumbprint
$pwd = ConvertTo-SecureString -String "Password123!" -Force -AsPlainText
$path = "C:\temp\LabExport.pfx"
# This command should trigger Event 1007
Export-PfxCertificate -Cert $cert -FilePath $path -Password $pwd


# title: Potential Remote Desktop Connection to Non-Domain Host (Microsoft-Windows-NTLM/Operational 8001)
# id: ce5678bb-b9aa-4fb5-be4b-e57f686256ad
$regPathSystem = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System"
$regPathLsa = "HKLM:\SYSTEM\CurrentControlSet\Control\Lsa\MSV1_0"
$origRestrict = (Get-ItemProperty $regPathSystem -Name "RestrictNTLM").RestrictNTLM
$origAuditDomain = (Get-ItemProperty $regPathLsa -Name "AuditNTLMInDomain").AuditNTLMInDomain
Set-ItemProperty $regPathSystem -Name "RestrictNTLM" -Value 0
Set-ItemProperty $regPathSystem -Name "AuditIncomingNTLMTraffic" -Value 1
Set-ItemProperty $regPathLsa -Name "AuditNTLMInDomain" -Value 7 
Restart-Service Netlogon -Force
Start-Sleep -Seconds 2
$null = net use \\127.0.0.1\IPC$ /user:FakeUser "FakePass123" 2>$null
Set-ItemProperty $regPathSystem -Name "RestrictNTLM" -Value $origRestrict
Set-ItemProperty $regPathLsa -Name "AuditNTLMInDomain" -Value $origAuditDomain
Restart-Service Netlogon -Force


# title: Important Scheduled Task Deleted (Microsoft-Windows-TaskScheduler/Operational 141)
# id: 9e3cb244-bdb8-4632-8c90-6079c8f4f16d
$taskPath = "\Windows\Windows Defender\"
$taskName = "FakeDefenderScan"
$action = New-ScheduledTaskAction -Execute "calc.exe"
$trigger = New-ScheduledTaskTrigger -AtLogon
Register-ScheduledTask -Action $action -Trigger $trigger -TaskName $taskName -TaskPath $taskPath -ErrorAction Stop | Out-Null
Start-Sleep -Seconds 2
Unregister-ScheduledTask -TaskName $taskName -TaskPath $taskPath -Confirm:$false -ErrorAction Stop


# title: WMI Persistence (Microsoft-Windows-WMI-Activity/Operational 5859, 5861)
# id: 0b7889b4-5577-4521-a60a-3376ee7f9f7b
$FilterName = "SigmaTestFilter"
$Query = "SELECT * FROM MSFT_SCMEventLogEvent"
$FilterArgs = @{
    Name = $FilterName
    EventNamespace = "root\cimv2"
    QueryLanguage = "WQL"
    Query = $Query
}
$Filter = Set-WmiInstance -Namespace 'root\subscription' -Class __EventFilter -Arguments $FilterArgs
$ConsumerArgs = @{
    Name = 'TestConsumer'
    CommandLineTemplate = 'notepad.exe'
}
$Consumer = Set-WmiInstance -Namespace 'root\subscription' -Class CommandLineEventConsumer -Arguments $ConsumerArgs
$BindingArgs = @{
    Filter = $Filter
    Consumer = $Consumer
}
Set-WmiInstance -Namespace "root\subscription" -Class "__FilterToConsumerBinding" -Arguments $BindingArgs
Restart-Service winmgmt -Force
Get-WmiObject -Namespace "root\subscription" -Class "__EventFilter" -Filter "Name='$FilterName'" | Remove-WmiObject
Get-WmiObject -Namespace "root\subscription" -Class "CommandLineEventConsumer" -Filter "Name='$ConsumerName'" | Remove-WmiObject
Get-WmiObject -Namespace "root\subscription" -Class "__FilterToConsumerBinding" -Filter "Filter=""__EventFilter.Name='$FilterName'""" | Remove-WmiObject


# Cleanup

    Remove-ADUser $TestADUser -Confirm:$false
    Remove-ADComputer -Identity $TestADComputer -Confirm:$false


# ISATAP Router Address Was Set (System 4100)
    Set-NetIsatapConfiguration -Router 192.168.1.100 # Set the ISATAP router to a dummy IP (non-loopback)
    Set-NetIsatapConfiguration -State Disabled # Disable ISATAP first
    Set-NetIsatapConfiguration -Router 192.168.1.100 -State Enabled # Set the malicious/test router
    Set-NetIsatapConfiguration -Router default # Reset ISATAP router to default (disabled/automatic)

