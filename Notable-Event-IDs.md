Notable Event Log EventID's for Incident Response, Threat Hunting, Forensics, etc

- [Security Events](#security-events)
- [Security Events (Domain Controller Specific)](#security-events-domain-controller-specific)
- [Microsoft-Windows-Sysmon/Operational](#microsoft-windows-sysmonoperational)
- [System Events](#system-events)
- [Application](#application)
- [Microsoft-Windows-SmartCard-Audit/Authentication](#microsoft-windows-smartcard-auditauthentication)
- [Microsoft-Windows-Forwarding/Operational](#microsoft-windows-forwardingoperational)
- [Microsoft-Windows-Bits-Client/Operational](#microsoft-windows-bits-clientoperational)
- [Microsoft-Windows-PrintService/Operational](#microsoft-windows-printserviceoperational)
- [Microsoft-Windows-DriverFrameworks-UserMode/Operational](#microsoft-windows-driverframeworks-usermodeoperational)
- [Microsoft-Windows-PrintService/Operational Events](#microsoft-windows-printserviceoperational-events)
- [Microsoft-Windows-Kernel-PnP/Device Configuration](#microsoft-windows-kernel-pnpdevice-configuration)
- [Microsoft-Windows-TaskScheduler/Operational](#microsoft-windows-taskscheduleroperational)
- [Windows PowerShell](#windows-powershell)
- [Microsoft-Windows-Powershell/Operational](#microsoft-windows-powershelloperational)
- [Microsoft-Windows-PowerShell/Analytic](#microsoft-windows-powershellanalytic)
- [Microsoft-Windows-PowerShell-DesiredStateConfiguration-FileDownloadManager/Operational](#microsoft-windows-powershell-desiredstateconfiguration-filedownloadmanageroperational)
- [Microsoft-Windows-Windows Defender/Operational](#microsoft-windows-windows-defenderoperational)
- [Microsoft-Windows-Windows Firewall With Advanced Security/Firewall](#microsoft-windows-windows-firewall-with-advanced-securityfirewall)
- [Microsoft-Windows-RemoteDesktopServices-RdpCoreTS/Operational](#microsoft-windows-remotedesktopservices-rdpcoretsoperational)
- [Microsoft-Windows-TerminalServices-RDPClient/Operational](#microsoft-windows-terminalservices-rdpclientoperational)
- [Microsoft-Windows-TerminalServices-RemoteConnectionManager/Operational](#microsoft-windows-terminalservices-remoteconnectionmanageroperational)
- [Microsoft-Windows-TerminalServices-LocalSessionManager/Operational](#microsoft-windows-terminalservices-localsessionmanageroperational)
- [Microsoft-Windows-SmbClient/Security](#microsoft-windows-smbclientsecurity)
- [Microsoft-Windows-WMI-Activity/Operational](#microsoft-windows-wmi-activityoperational)
- [Microsoft-Windows-TPM-WMI](#microsoft-windows-tpm-wmi)
- [Microsoft-Windows-WinRM/Operational](#microsoft-windows-winrmoperational)
- [Microsoft-Windows-AppLocker/EXE and DLL](#microsoft-windows-applockerexe-and-dll)
- [Microsoft-Windows-AppLocker/MSI and Script](#microsoft-windows-applockermsi-and-script)
- [Microsoft-Windows-AppLocker/Packaged app-Execution](#microsoft-windows-applockerpackaged-app-execution)
- [Microsoft-Windows-AppLocker/Packaged app-Deployment](#microsoft-windows-applockerpackaged-app-deployment)
- [Microsoft-Windows-GroupPolicy](#microsoft-windows-grouppolicy)
- [Microsoft-Windows-Authentication/AuthenticationPolicyFailures-DomainController](#microsoft-windows-authenticationauthenticationpolicyfailures-domaincontroller)
- [Microsoft-Windows-Authentication/ProtectedUserFailures-DomainController](#microsoft-windows-authenticationprotecteduserfailures-domaincontroller)
- [Microsoft-Windows-NTLM/Operational](#microsoft-windows-ntlmoperational)
- [Microsoft-Windows-CodeIntegrity/Operational](#microsoft-windows-codeintegrityoperational)
- [EMET](#emet)
- [Microsoft-Windows-DNS-Client/Operational](#microsoft-windows-dns-clientoperational)
- [DNS Server](#dns-server)
- [Microsoft-Windows-DNSServer/Audit](#microsoft-windows-dnsserveraudit)

## Security Events

| EventID | Description                                                                                                                                              | Filter                               |
| ------- | -------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------ |
| 1100    | The event logging service has shut down.                                                                                                                 |                                      |
| 1102    | The audit log was cleared.                                                                                                                               |
| 4618    | A monitored security event pattern has occurred.                                                                                                         |
| 4624    | An account was successfully logged on.                                                                                                                   |
| 4625    | An account failed to log on.                                                                                                                             |
| 4634    | An account was logged off.                                                                                                                               |
| 4647    | User initiated logoff.                                                                                                                                   |
| 4648    | A logon was attempted using explicit credentials.                                                                                                        |
| 4657    | A registry value was modified.                                                                                                                           | OperationType %%1904, %%1905, %%1906 |
| 4670    | Permissions on an object were changed.                                                                                                                   |
| 4672    | Special privileges assigned to new logon.                                                                                                                |
| 4688    | A new process has been created.                                                                                                                          |
| 4689    | A process has exited.                                                                                                                                    |
| 4692    | Backup of data protection master key was attempted.                                                                                                      |
| 4693    | Recovery of data protection master key was attempted.                                                                                                    |
| 4695    | Unprotection of auditable protected data was attempted.                                                                                                  |
| 4697    | A service was installed in the system.                                                                                                                   |
| 4698    | A scheduled task was created.                                                                                                                            |
| 4702    | A scheduled task was updated.                                                                                                                            |
| 4703    | A user right was adjusted.                                                                                                                               |
| 4704    | A user right was assigned.                                                                                                                               |
| 4715    | The audit policy (SACL) on an object was changed.                                                                                                        |
| 4717    | System security access was granted to an account.                                                                                                        |
| 4718    | System security access was removed from an account.                                                                                                      |
| 4719    | System audit policy was changed.                                                                                                                         |
| 4720    | A user account was created.                                                                                                                              |
| 4722    | A user account was enabled.                                                                                                                              |
| 4723    | An attempt was made to change an account's password.                                                                                                     |
| 4724    | An attempt was made to reset an account's password.                                                                                                      |
| 4725    | A user account was disabled.                                                                                                                             |
| 4726    | A user account was deleted.                                                                                                                              |
| 4731    | A security-enabled local group was created.                                                                                                              |
| 4732    | A member was added to a security-enabled local group.                                                                                                    |
| 4733    | A member was removed from a security-enabled local group.                                                                                                |
| 4734    | A security-enabled local group was deleted.                                                                                                              |
| 4735    | A security-enabled local group was changed.                                                                                                              |
| 4738    | A user account was changed.                                                                                                                              |
| 4739    | Domain Policy was changed.                                                                                                                               |
| 4740    | A user account was locked out.                                                                                                                           |
| 4767    | A user account was unlocked.                                                                                                                             |
| 4776    | The domain controller attempted to validate the credentials for an account.                                                                              |
| 4778    | A session was reconnected to a Window Station.                                                                                                           |
| 4779    | A session was disconnected from a Window Station.                                                                                                        |
| 4780    | The ACL was set on accounts which are members of administrators groups.                                                                                  |
| 4781    | The name of an account was changed.                                                                                                                      |
| 4782    | The password hash an account was accessed.                                                                                                               |
| 4793    | The Password Policy Checking API was called.                                                                                                             |
| 4798    | A user's local group membership was enumerated.                                                                                                          |
| 4800    | The workstation was locked.                                                                                                                              |
| 4801    | The workstation was unlocked.                                                                                                                            |
| 4803    | The screen saver was dismissed.                                                                                                                          |
| 4816    | RPC detected an integrity violation while decrypting an incoming message.                                                                                |
| 4817    | Auditing settings on object were changed.                                                                                                                |
| 4882    | The security permissions for Certificate Services changed.                                                                                               |
| 4885    | The audit filter for Certificate Services changed.                                                                                                       |
| 4890    | The certificate manager settings for Certificate Services changed.                                                                                       |
| 4906    | The CrashOnAuditFail value has changed.                                                                                                                  |
| 4907    | Auditing settings on object changed                                                                                                                      |
| 4908    | Special Groups Logon table modified                                                                                                                      |
| 4912    | Per-User Audit Policy changed                                                                                                                            |
| 4946    | A change has been made to Windows Firewall exception list. A rule was added.                                                                             |
| 4947    | A change has been made to Windows Firewall exception list. A rule was modified.                                                                          |
| 4948    | A change has been made to Windows Firewall exception list. A rule was deleted.                                                                           |
| 4950    | A Windows Firewall setting has changed (local only)                                                                                                      |
| 4951    | A rule has been ignored because its major version number was not recognized by Windows Firewall.                                                         |
| 4952    | Parts of a rule have been ignored because its minor version number was not recognized by Windows Firewall. The other parts of the rule will be enforced. |
| 4953    | Windows Firewall ignored a rule because it could not be parsed.                                                                                          |
| 4956    | Windows Firewall has changed the active profile.                                                                                                         |
| 4957    | Windows Firewall did not apply the following rule.                                                                                                       |
| 4958    | Windows Firewall did not apply the following rule because the rule referred to items not configured on this computer.                                    |
| 4964    | Special groups assigned to a new logon                                                                                                                   |
| 5025    | Windows Firewall Service has been stopped                                                                                                                |
| 5027    | Windows Firewall Service unable to retrieve the security policy from the local storage service will continue enforcing the current policy                |
| 5028    | Windows Firewall Service unable to parse the new security policy service will continue with currently enforced policy                                    |
| 5029    | Windows Firewall Service failed to initialize the driver service will continue to enforce the current policy                                             |
| 5030    | Windows Firewall Service failed to start                                                                                                                 |
| 5031    | The Windows Firewall Service blocked an application from accepting incoming connections on the network.                                                  |
| 5034    | The Windows Firewall Driver was stopped                                                                                                                  |
| 5035    | Windows Firewall Driver failed to start                                                                                                                  |
| 5037    | Windows Firewall Driver detected critical runtime error Terminating                                                                                      |
| 5038    | Code integrity determined that the image hash of a file is not valid                                                                                     | Level 0 or 4                         |
| 5142    | Network share object added                                                                                                                               |
| 5143    | Network share object changed                                                                                                                             |
| 5144    | Network share object deleted                                                                                                                             |
| 5146    | The Windows Filtering Platform has blocked a packet.                                                                                                     |
| 5158    | The Windows Filtering Platform has permitted a bind to a local port.                                                                                     |
| 5376    | Credential Manager credentials were backed up                                                                                                            |
| 5377    | Credential Manager credentials were restored from a backup.                                                                                              |
| 5378    | The requested credentials delegation was disallowed by policy.                                                                                           |
| 6145    | One or more errors occurred while processing security policy in the group policy objects.                                                                |
| 6273    | Network Policy Server denied access to a user                                                                                                            |
| 6276    | Network Policy Server quarantined a user                                                                                                                 |
| 6280    | Network Policy Server unlocked the user account                                                                                                          |
| 6281    |                                                                                                                                                          | Level 0 or 4                         |
| 6410    |                                                                                                                                                          | Level 0 or 4                         |
| 6416    | A new external device was recognized by the system                                                                                                       |
| 6419    | A request was made to disable a device.                                                                                                                  |
| 6420    | A device was disabled.                                                                                                                                   |
| 6421    | A request was made to enable a device.                                                                                                                   |
| 6422    | A device was enabled.                                                                                                                                    |
| 6423    | The installation of this device is forbidden by system policy.                                                                                           |
| 6424    | The installation of this device was allowed after having previously been forbidden by policy.                                                            |


## Security Events (Domain Controller Specific)
| EventID | Description                                                                            | Filter |
| ------- | -------------------------------------------------------------------------------------- | ------ |
| 4649    | A replay attack was detected.                                                          |        |
| 4706    | A new trust was created to a domain.                                                   |        |
| 4707    | A trust to a domain was removed.                                                       |        |
| 4713    | Kerberos policy was changed.                                                           |        |
| 4716    | Trusted domain information was modified.                                               |        |
| 4727    | A security-enabled global group was created.                                           |        |
| 4728    | A member was added to a security-enabled global group.                                 |        |
| 4729    | A member was removed from a security-enabled global group.                             |        |
| 4730    | A security-enabled global group was deleted.                                           |        |
| 4737    | A security-enabled global group was changed.                                           |        |
| 4741    | A computer account was created.                                                        |        |
| 4742    | A computer account was changed.                                                        |        |
| 4743    | A computer account was deleted.                                                        |        |
| 4754    | A security-enabled universal group was created.                                        |        |
| 4755    | A security-enabled universal group was changed.                                        |        |
| 4756    | A member was added to a security-enabled universal group.                              |        |
| 4757    | A member was removed from a security-enabled universal group.                          |        |
| 4764    | A group’s type was changed.                                                            |        |
| 4765    | SID History was added to an account.                                                   |        |
| 4766    | An attempt to add SID History to an account failed.                                    |        |
| 4768    | A Kerberos authentication ticket (TGT) was requested.                                  |        |
| 4769    | A Kerberos service ticket was requested.                                               |        |
| 4770    | A Kerberos service ticket was renewed.                                                 |        |
| 4771    | Kerberos pre-authentication failed.                                                    |        |
| 4794    | An attempt was made to set the Directory Services Restore Mode administrator password. |        |
| 4799    | A security-enabled local group membership was enumerated.                              |        |
| 4865    | A trusted forest information entry was added.                                          |        |
| 4866    | A trusted forest information entry was removed.                                        |        |
| 4867    | A trusted forest information entry was added.                                          |        |
| 5136    | A directory service object was modified. [1]                                           |        |
| 5137    | A directory service object was created.                                                |        |
| 5138    | A directory service object was undeleted                                               |        |
| 5139    | A directory service object was moved.                                                  |        |
| 5140    | Network share object accessed                                                          |        |

- 1 - Requires that “Audit Directory Service Changes” auditing be enabled.


## Microsoft-Windows-Sysmon/Operational

| EventID | Description                                           |
| :-----: | ----------------------------------------------------- |
|    1    | Process creation                                      |
|    2    | A process changed a file creation time                |
|    3    | Network connection                                    |
|    4    | Sysmon service state changed                          |
|    5    | Process terminated                                    |
|    6    | Driver loaded                                         |
|    7    | Image loaded                                          |
|    8    | CreateRemoteThread                                    |
|    9    | RawAccessRead                                         |
|   10    | ProcessAccess                                         |
|   11    | FileCreate                                            |
|   12    | RegistryEvent (Object create and delete)              |
|   13    | RegistryEvent (Value Set)                             |
|   14    | RegistryEvent (Key and Value Rename)                  |
|   15    | FileCreateStreamHash                                  |
|   17    | PipeEvent (Pipe Created)                              |
|   18    | PipeEvent (Pipe Connected)                            |
|   19    | WmiEvent (WmiEventFilter activity detected)           |
|   20    | WmiEvent (WmiEventConsumer activity detected)         |
|   21    | WmiEvent (WmiEventConsumerToFilter activity detected) |
|   22    | DNSEvent (DNS query)                                  |
|   255   | Error                                                 |


## System Events

| EventID | Description                                                                                     | Filter                 |
| :-----: | :---------------------------------------------------------------------------------------------- | ---------------------- |
|   104   | Event Log was Cleared                                                                           |
|   219   | Failed Kernel Driver Loading                                                                    | Level 3                |
|  1001   | System Crash                                                                                    |
|  7022   | Service hung on starting                                                                        | Level 0, 1, 2, 3, or 4 |
|  7023   | Service terminated with error                                                                   | Level 0, 1, 2, 3, or 4 |
|  7024   | Service terminated with the following service-specific error                                    | Level 0, 1, 2, 3, or 4 |
|  7026   | The boot-start or system-start driver(s) [did not/failed to] load                               | Level 0, 1, 2, 3, or 4 |
|  7030   | Service Creation Errors                                                                         |
|  7031   | Service terminated unexpectedly                                                                 | Level 0, 1, 2, 3, or 4 |
|  7032   | Service tried to take a corrective action (1) after the unexpected termination of the % service | Level 0, 1, 2, 3, or 4 |
|  7034   | service terminated unexpectedly                                                                 | Level 0, 1, 2, 3, or 4 |
|  7035   | The [Service Name] service was successfully sent a [start/stop] control                         |
|  7036   | The [Service Name] service entered the [Status] state                                           |
|  7040   | The service state has changed                                                                   | Level 0, 1, 2, 3, or 4 |
|  7045   | A service was installed in the system                                                           | Level 0, 1, 2, 3, or 4 |


## Application

| EventID | Description       |
| :-----: | :---------------- |
|  1001   | Application Crash |
|  1002   | Application Hang  |
|  1003   | Application Error |


## Microsoft-Windows-SmartCard-Audit/Authentication
(All)


## Microsoft-Windows-Forwarding/Operational
(All)


## Microsoft-Windows-Bits-Client/Operational
(All)


## Microsoft-Windows-PrintService/Operational
| EventID | Description | Filter  |
| :-----: | :---------- | ------- |
|   307   | Print Job   | Level 4 |


## Microsoft-Windows-DriverFrameworks-UserMode/Operational
| EventID | Description              |
| :-----: | :----------------------- |
|  2004   | User-Mode drivers loaded |


## Microsoft-Windows-PrintService/Operational Events

| EventID | Description       |
| :-----: | :---------------- |
|   307   | Printing Document |


## Microsoft-Windows-Kernel-PnP/Device Configuration

| EventID | Description                   |
| :-----: | :---------------------------- |
|   400   | New Mass Storage Installation |
|   410   | New Mass Storage Installation |


## Microsoft-Windows-TaskScheduler/Operational

| EventID | Description                                    |
| :-----: | :--------------------------------------------- |
|   106   | Task Scheduled                                 |
|   129   | Task Scheduler successfully completed task ... |
|   140   | Task Updated                                   |
|   141   | Task Removed                                   |
|   200   | Task Executed                                  |
|   201   | Task Completed                                 |


## Windows PowerShell

| EventID | Description                  |
| :-----: | ---------------------------- |
|   400   | Engine started               |
|   403   | Engine stopped               |
|   800   | Includes partial script code |


## Microsoft-Windows-Powershell/Operational

|  EventID   | Description                     |
| :--------: | :------------------------------ |
|    4103    | Pipeline executed               |
|    4104    | Scriptblock executed            |
|   40961    | PowerShell Console Starting     |
|   40962    | PowerShell Console Started      |
|   24577    | Powershell script ran           |
| 8193, 8194 | Session created                 |
|    8197    | Session Closed                  |
|   53504    | Records the authenticating user |


## Microsoft-Windows-PowerShell/Analytic

| EventID | Description                      |
| :-----: | -------------------------------- |
|  32850  | Creating a server remote session |
|  32867  | PowerShell input object          |
|  32868  | PowerShell output object         |


## Microsoft-Windows-PowerShell-DesiredStateConfiguration-FileDownloadManager/Operational



## Microsoft-Windows-Windows Defender/Operational

| EventID | Description                                                                                                                                                                      | Filter  |
| :-----: | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------- |
|  1002   | An antimalware scan was stopped before it finished.                                                                                                                              | Level 2 |
|  1005   | An antimalware scan failed.                                                                                                                                                      |
|  1006   | The antimalware engine found malware or other potentially unwanted software.                                                                                                     |
|  1007   | The antimalware platform performed an action to protect your system from malware or other potentially unwanted software.                                                         |
|  1008   | The antimalware platform attempted to perform an action to protect your system from malware or other potentially unwanted software, but the action failed.                       |
|  1009   | The antimalware platform restored an item from quarantine.                                                                                                                       |
|  1013   | The antimalware platform deleted history of malware and other potentially unwanted software.                                                                                     |
|  1014   | The antimalware platform could not delete history of malware and other potentially unwanted software.                                                                            |
|  1015   | The antimalware platform detected suspicious behavior.                                                                                                                           |
|  1116   | The antimalware platform detected malware or other potentially unwanted software.                                                                                                |
|  1117   | The antimalware platform performed an action to protect your system from malware or other potentially unwanted software.                                                         |
|  1118   | The antimalware platform attempted to perform an action to protect your system from malware or other potentially unwanted software, but the action failed.                       |
|  1119   | The antimalware platform encountered a critical error when trying to take action on malware or other potentially unwanted software. There are more details in the event message. |
|  2001   | The antimalware definition update failed.                                                                                                                                        |
|  2003   | The antimalware engine update failed.                                                                                                                                            |
|  2006   | The platform update failed.                                                                                                                                                      |
|  2042   | The antimalware engine no longer supports this operating system, and is no longer protecting your system from malware.                                                           |
|  3002   | Real-time protection encountered an error and failed.                                                                                                                            |
|  5001   | Real-time protection is disabled.                                                                                                                                                |
|  5008   | The antimalware engine encountered an error and failed.                                                                                                                          |
|  5010   | Scanning for malware and other potentially unwanted software is disabled.                                                                                                        |
|  5012   | Scanning for viruses is disabled.                                                                                                                                                |
|  5101   | The antimalware platform is expired.                                                                                                                                             |


## Microsoft-Windows-Windows Firewall With Advanced Security/Firewall

| EventID | Description                               |
| :-----: | ----------------------------------------- |
|  2002   | Windows Defender Firewall setting changed |
|  2004   | Firewall Rule Added                       |
|  2005   | Firewall Rule Changed                     |
|  2006   | Firewall Rule Deleted                     |
|  2033   | Firewall Rule Deleted                     |
|  2009   | Firewall Failed to load group policy      |


## Microsoft-Windows-RemoteDesktopServices-RdpCoreTS/Operational

| EventID | Description                                 |
| :-----: | ------------------------------------------- |
|   131   | Accepted new TCP connection                 |
|   140   | Connection failed; bad username or password |


## Microsoft-Windows-TerminalServices-RDPClient/Operational

| EventID | Description                        |
| :-----: | ---------------------------------- |
|  1024   | RDP connection attempt             |
|  1025   | RDP connection made                |
|  1102   | multi-transport connection attempt |
|  1103   | multi-transport connection made    |


## Microsoft-Windows-TerminalServices-RemoteConnectionManager/Operational

| EventID | Description                   |
| :-----: | ----------------------------- |
|  1149   | User authentication succeeded |


## Microsoft-Windows-TerminalServices-LocalSessionManager/Operational

| EventID | Description                                        |
| :-----: | -------------------------------------------------- |
|   21    | Session logon succeeded                            |
|   22    | Shell start notification received                  |
|   23    | Session logoff succeeded                           |
|   24    | Session has been disconnected                      |
|   25    | Session reconnection succeeded                     |
|   39    | Session <X> has been disconnected by session <Y>   |
|   40    | Session <X> has been disconnected, reason code <Z> |


## Microsoft-Windows-SmbClient/Security

| EventID | Description                 |
| :-----: | --------------------------- |
|  31001  | Failed login to destination |


## Microsoft-Windows-WMI-Activity/Operational

| EventID | Description                              |
| :-----: | ---------------------------------------- |
|  5857   | Provider started                         |
|  5858   | Provider error                           |
|  5860   | Registration of Temporary Event Consumer |
|  5861   | Registration of Permanent Event Consumer |


## Microsoft-Windows-TPM-WMI
513, 514


## Microsoft-Windows-WinRM/Operational

|   EventID    | Description                    |
| :----------: | ------------------------------ |
|      6       | WSMan Session created          |
| 8 15, 16, 33 | WSMan Session deinitialization |
|      81      | Processing Client Request      |
|      82      | Entering the plugin            |
|     134      | Sending response               |
|      91      | Session Created                |
|     168      | Authenticating attempt         |
|     169      | Authentication success         |


## Microsoft-Windows-AppLocker/EXE and DLL
| EventID | Description                                 |
| :-----: | ------------------------------------------- |
|  8003   | ... would have been prevented from running. |
|  8004   | ... was prevented from running.             |



## Microsoft-Windows-AppLocker/MSI and Script

| EventID | Description                                 |
| :-----: | ------------------------------------------- |
|  8006   | ... would have been prevented from running. |
|  8007   | ... was prevented from running.             |


## Microsoft-Windows-AppLocker/Packaged app-Execution
| EventID | Description                     |
| :-----: | ------------------------------- |
|  8022   | ... was prevented from running. |


## Microsoft-Windows-AppLocker/Packaged app-Deployment
| EventID | Description                     |
| :-----: | ------------------------------- |
|  8025   | ... was prevented from running. |


## Microsoft-Windows-GroupPolicy
| EventID | Description                                                                                           | Filter  |
| :-----: | ----------------------------------------------------------------------------------------------------- | ------- |
|  1085   | Windows failed to apply the ... settings                                                              | Level 2 |
|  1125   | The processing of Group Policy failed because of an internal system error.                            | Level 2 |
|  1127   | The processing of Group Policy failed due to an internal error.                                       | Level 2 |
|  1129   | The processing of Group Policy failed because of lack of network connectivity to a domain controller. | Level 2 |



## Microsoft-Windows-Authentication/AuthenticationPolicyFailures-DomainController
101, 105, 106, 305, 306


## Microsoft-Windows-Authentication/ProtectedUserFailures-DomainController
100, 104, 303

## Microsoft-Windows-NTLM/Operational
8001, 8002, 8003, 8004


## Microsoft-Windows-CodeIntegrity/Operational
3001, 3002, 3003, 3004, 3010, 3023 with Level 2 or 3


## EMET
1, 2 with Level 2 or 3


## Microsoft-Windows-DNS-Client/Operational
| EventID | Description                       | Filter |
| :-----: | --------------------------------- | ------ |
|  3008   | DNS Client events Query Completed |


## DNS Server
| EventID | Description                                             | Filter |
| :-----: | ------------------------------------------------------- | ------ |
|   150   | DNS Server could not load or initialize the plug-in DLL |
|   770   | DNS Server plugin DLL has been loaded                   |


## Microsoft-Windows-DNSServer/Audit
| EventID | Description                                                           | Filter |
| :-----: | --------------------------------------------------------------------- | ------ |
|   541   | The setting serverlevelplugindll on scope . has been set to $dll_path |


Sources
* [Detecting Lateral Movement through Tracking Event Logs - JPCERT Coordination Center](https://www.jpcert.or.jp/english/pub/sr/20170612ac-ir_research_en.pdf)
* [Appendix L: Events to Monitor](https://docs.microsoft.com/en-us/windows-server/identity/ad-ds/plan/appendix-l--events-to-monitor)
* [Spotting the Adversary with Windows Event Log Monitoring](https://msdnshared.blob.core.windows.net/media/2017/10/Spotting_the_Adversary_with_Windows_Event_Log_Monitoring.pdf)
* [Microsoft Docs - Events to Monitor](https://github.com/MicrosoftDocs/windowsserverdocs/blob/master/WindowsServerDocs/identity/ad-ds/plan/Appendix-L--Events-to-Monitor.md)
* [Microsoft Docs - Sysmon](https://docs.microsoft.com/en-us/sysinternals/downloads/sysmon)
* [Windows RDP-Related Event Logs: The Client Side of the Story](https://nullsec.us/windows-rdp-related-event-logs-the-client-side-of-the-story/)
* [Auditing Remote Desktop Services Logon Failures (Part 1)](http://purerds.org/remote-desktop-security/auditing-remote-desktop-services-logon-failures-1/)
* [Windows RDP-Related Event Logs: Identification, Tracking, and Investigation](https://ponderthebits.com/2018/02/windows-rdp-related-event-logs-identification-tracking-and-investigation/)
* [Basics of Tracking WMI Activity](https://www.darkoperator.com/blog/2017/10/14/basics-of-tracking-wmi-activity)
* [Investigating PowerShell Attack](https://www.blackhat.com/docs/us-14/materials/us-14-Kazanciyan-Investigating-Powershell-Attacks-WP.pdf)
* https://docs.microsoft.com/en-us/windows-server/security/credentials-protection-and-management/authentication-policies-and-authentication-policy-silos
* https://docs.microsoft.com/en-us/windows-server/security/credentials-protection-and-management/protected-users-security-group
* https://docs.microsoft.com/en-us/windows/security/threat-protection/use-windows-event-forwarding-to-assist-in-intrusion-detection
* https://github.com/palantir/windows-event-forwarding/tree/master/wef-subscriptions
* https://github.com/nsacyber/Event-Forwarding-Guidance
