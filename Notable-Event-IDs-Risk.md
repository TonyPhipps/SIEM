Notable Event IDs to record to build up risk with. Exlcudes those already included in existing Sigma rules.
- Use in conjunction with [Notable-Event-IDs-Sigma.md](Notable-Event-IDs-Sigma.md)
- Use in conjunction with [Notable-Event-IDs-Forensics.md](Notable-Event-IDs-Forensics.md)

Table of Contents

- [Application](#application)
- [Microsoft-Windows-AppLocker/EXE and DLL](#microsoft-windows-applockerexe-and-dll)
- [Microsoft-Windows-AppLocker/MSI and Script](#microsoft-windows-applockermsi-and-script)
- [Microsoft-Windows-AppLocker/Packaged app-Execution](#microsoft-windows-applockerpackaged-app-execution)
- [Microsoft-Windows-AppLocker/Packaged app-Deployment](#microsoft-windows-applockerpackaged-app-deployment)
- [Security](#security)
- [Security (Domain Controller Specific)](#security-domain-controller-specific)
- [System](#system)
- [Microsoft-Windows-Authentication/AuthenticationPolicyFailures-DomainController](#microsoft-windows-authenticationauthenticationpolicyfailures-domaincontroller)
- [Microsoft-Windows-Authentication/ProtectedUserFailures-DomainController](#microsoft-windows-authenticationprotecteduserfailures-domaincontroller)
- [Microsoft-Windows-CodeIntegrity/Operational](#microsoft-windows-codeintegrityoperational)
- [Microsoft-Windows-GroupPolicy](#microsoft-windows-grouppolicy)
- [Microsoft-Windows-NTLM/Operational](#microsoft-windows-ntlmoperational)
- [Microsoft-Windows-PowerShell/Analytic](#microsoft-windows-powershellanalytic)
- [Microsoft-Windows-RemoteDesktopServices-RdpCoreTS/Operational](#microsoft-windows-remotedesktopservices-rdpcoretsoperational)
- [Microsoft-Windows-Security-Mitigations/KernelMode](#microsoft-windows-security-mitigationskernelmode)
- [Microsoft-Windows-Sysmon/Operational](#microsoft-windows-sysmonoperational)
- [Microsoft-Windows-TaskScheduler/Operational](#microsoft-windows-taskscheduleroperational)
- [Microsoft-Windows-TerminalServices-RDPClient/Operational](#microsoft-windows-terminalservices-rdpclientoperational)
- [Microsoft-Windows-Windows Defender/Operational](#microsoft-windows-windows-defenderoperational)
- [Microsoft-Windows-WinINet-Config/ProxyConfigChanged](#microsoft-windows-wininet-configproxyconfigchanged)
- [Microsoft-Windows-WMI-Activity/Operational](#microsoft-windows-wmi-activityoperational)


## Application

| EventID | Description                                                    | Filter |
| :-----: | -------------------------------------------------------------- | ------ |
|  1002   | Application Hang                                               |
|  1003   | Application Error                                              |
|  11707  | Product: [1] -- Installation operation completed successfully. |
|  11724  | Product: [1] -- Removal completed successfully.                |

## Microsoft-Windows-AppLocker/EXE and DLL

| EventID | Description                                 | Filter |
| :-----: | ------------------------------------------- | ------ |
|  8003   | ... would have been prevented from running. |


## Microsoft-Windows-AppLocker/MSI and Script

| EventID | Description                                 | Filter |
| :-----: | ------------------------------------------- | ------ |
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

## Security

| EventID | Description                                                                                                                    | Filter       |
| :-----: | ------------------------------------------------------------------------------------------------------------------------------ | ------------ |
|  1100   | The event logging service has shut down.                                                                                       |              |
|  4618   | A monitored security event pattern has occurred.                                                                               |              |
|  4664   | An attempt was made to create a hard link                                                                                      |              |
|  4693   | Recovery of data protection master key was attempted.                                                                          |              |
|  4695   | Unprotection of auditable protected data was attempted.                                                                        |              |
|  4717   | System security access was granted to an account.                                                                              |              |
|  4718   | System security access was removed from an account.                                                                            |              |
|  4722   | A user account was enabled.                                                                                                    |              |
|  4723   | An attempt was made to change an account's password.                                                                           |              |
|  4724   | An attempt was made to reset an account's password.                                                                            |              |
|  4725   | A user account was disabled.                                                                                                   |              |
|  4726   | A user account was deleted.                                                                                                    |              |
|  4731   | A security-enabled local group was created.                                                                                    |              |
|  4733   | A member was removed from a security-enabled local group.                                                                      |              |
|  4734   | A security-enabled local group was deleted.                                                                                    |              |
|  4735   | A security-enabled local group was changed.                                                                                    |              |
|  4738   | A user account was changed.                                                                                                    |              |
|  4739   | Domain Policy was changed.                                                                                                     |              |
|  4740   | A user account was locked out.                                                                                                 |              |
|  4767   | A user account was unlocked.                                                                                                   |              |
|  4782   | The password hash an account was accessed.                                                                                     |              |
|  4798   | A user's local group membership was enumerated.                                                                                |              |
|  4816   | RPC detected an integrity violation while decrypting an incoming message.                                                      |              |
|  4882   | The security permissions for Certificate Services changed.                                                                     |
|  4946   | A change has been made to Windows Firewall exception list. A rule was added.                                                   |
|  4947   | A change has been made to Windows Firewall exception list. A rule was modified.                                                |
|  4948   | A change has been made to Windows Firewall exception list. A rule was deleted.                                                 |
|  4950   | A Windows Firewall setting has changed (local only)                                                                            |
|  5025   | Windows Firewall Service has been stopped                                                                                      |
|  5030   | Windows Firewall Service failed to start                                                                                       |
|  5031   | The Windows Firewall Service blocked an application from accepting incoming connections on the network.                        |
|  5034   | The Windows Firewall Driver was stopped                                                                                        |
|  5035   | Windows Firewall Driver failed to start                                                                                        |
|  5037   | Windows Firewall Driver detected critical runtime error Terminating                                                            |
|  5142   | Network share object added                                                                                                     |
|  5143   | Network share object changed                                                                                                   |
|  5144   | Network share object deleted                                                                                                   |
|  5376   | Credential Manager credentials were backed up                                                                                  |
|  5377   | Credential Manager credentials were restored from a backup.                                                                    |
|  5378   | The requested credentials delegation was disallowed by policy.                                                                 |
|  6273   | Network Policy Server denied access to a user                                                                                  |
|  6276   | Network Policy Server quarantined a user                                                                                       |
|  6277   | Network Policy Server granted access to a user but put it on probation because the host did not meet the defined health policy |
|  6278   | Network Policy Server granted full access to a user because the host met the defined health policy                             |
|  6279   | Network Policy Server locked the user account due to repeated failed authentication attempts                                   |
|  6280   | Network Policy Server unlocked the user account                                                                                |
|  6281   | Code Integrity determined that the page hashes of an image file are not valid.                                                 | Level 0 or 4 |
|  6410   | Code integrity determined that a file does not meet the security requirements to load into a process.                          | Level 0 or 4 |
|  6419   | A request was made to disable a device.                                                                                        |
|  6420   | A device was disabled.                                                                                                         |
|  6421   | A request was made to enable a device.                                                                                         |
|  6422   | A device was enabled.                                                                                                          |
|  6424   | The installation of this device was allowed after having previously been forbidden by policy.                                  |


## Security (Domain Controller Specific)

| EventID | Description                                                   | Filter |
| :-----: | ------------------------------------------------------------- | ------ |
|  4707   | A trust to a domain was removed.                              |        |
|  4713   | Kerberos policy was changed.                                  |        |
|  4714   | Encrypted data recovery policy was changed                    |        |
|  4716   | Trusted domain information was modified.                      |        |
|  4729   | A member was removed from a security-enabled global group.    |        |
|  4731   | A security-enabled local group was created.                   |        |
|  4733   | A member was removed to a security-enabled local group.       |        |
|  4735   | A security-enabled local group was changed.                   |        |
|  4734   | A security-enabled local group was deleted.                   |        |
|  4737   | A security-enabled global group was changed.                  |        |
|  4743   | A computer account was deleted.                               |        |
|  4744   | A security-disabled local group was created                   |        |
|  4745   | A security-disabled local group was changed                   |        |
|  4746   | A member was added to a security-disabled local group         |        |
|  4747   | A member was removed from a security-disabled local group     |        |
|  4748   | A security-disabled local group was deleted                   |        |
|  4749   | A security-disabled global group was created                  |        |
|  4750   | A security-disabled global group was changed                  |        |
|  4751   | A member was added to a security-disabled global group        |        |
|  4752   | A member was removed from a security-disabled global group    |        |
|  4753   | A security-disabled global group was deleted                  |        |
|  4754   | A security-enabled universal group was created.               |        |
|  4755   | A security-enabled universal group was changed.               |        |
|  4756   | A member was added to a security-enabled universal group.     |        |
|  4757   | A member was removed from a security-enabled universal group. |        |
|  4758   | A security-enabled universal group was deleted.               |        |
|  4759   | A security-disabled universal group was created               |        |
|  4760   | A security-disabled universal group was changed               |        |
|  4761   | A member was added to a security-disabled universal group     |        |
|  4762   | A member was removed from a security-disabled universal group |        |
|  4763   | A security-disabled universal group was deleted               |        |
|  4764   | A group's type was changed.                                   |        |
|  4766   | An attempt to add SID History to an account failed.           |        |
|  4767   | A user account was unlocked.                                  |        |
|  4865   | A trusted forest information entry was added.                 |        |
|  4866   | A trusted forest information entry was removed.               |        |
|  4867   | A trusted forest information entry was added.                 |        |
|  5137   | A directory service object was created.                       |        |
|  5138   | A directory service object was undeleted                      |        |
|  5139   | A directory service object was moved.                         |        |
|  5141   | A directory service object was deleted                        |        |


## System

| EventID | Description                                                                                     | Filter                 |
| :-----: | ----------------------------------------------------------------------------------------------- | ---------------------- |
|   41    | The system has rebooted without cleanly shutting down first                                     |                        |
|   219   | Failed Kernel Driver Loading                                                                    | Level 3                |
|  7022   | Service hung on starting                                                                        | Level 0, 1, 2, 3, or 4 |
|  7024   | Service terminated with the following service-specific error                                    | Level 0, 1, 2, 3, or 4 |
|  7026   | The boot-start or system-start driver(s) [did not/failed to] load                               | Level 0, 1, 2, 3, or 4 |
|  7030   | Service Creation Errors                                                                         |                        |
|  7031   | Service terminated unexpectedly                                                                 | Level 0, 1, 2, 3, or 4 |
|  7032   | Service tried to take a corrective action (1) after the unexpected termination of the % service | Level 0, 1, 2, 3, or 4 |
|  7035   | The [Service Name] service was successfully sent a [start/stop] control                         |                        |
|  7040   | The service state has changed                                                                   | Level 0, 1, 2, 3, or 4 |


## Microsoft-Windows-Authentication/AuthenticationPolicyFailures-DomainController

| EventID | Description                                                         |
| :-----: | ------------------------------------------------------------------- |
|   105   | Kerberos authentication from a particular device was not permitted. |
|   106   | The user or device was not allowed to authenticate to the server.   |
|   305   | Kerberos TGT request did not meet access control restrictions.      |
|   306   | User, device or both do not meet the access control restrictions.   |


## Microsoft-Windows-Authentication/ProtectedUserFailures-DomainController

| EventID | Description                                                                                               |
| :-----: | --------------------------------------------------------------------------------------------------------- |
|   100   | An NTLM sign-in failure occurs for an account that is in the Protected Users security group.              |
|   102   | An account tried to authenticate using DES or RC4. Protected Users are restricted to AES encryption.      |
|   104   | The security package on the client does not contain the credentials.                                      |
|   303   | A Kerberos ticket-granting-ticket (TGT) was successfully issued for a member of the Protected User group. |


## Microsoft-Windows-CodeIntegrity/Operational

| EventID | Description                                                                                                                                                                                                                                                                            | Filter       |
| :-----: | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------ |
|  3002   | Code Integrity is unable to verify the image integrity of the file %2 because the set of per-page image hashes could not be found on the system.                                                                                                                                       | Level 2 or 3 |
|  3003   | Code Integrity is unable to verify the image integrity of the file %2 because the set of per-page image hashes could not be found on the system. The image is allowed to load because kernel mode debugger is attached.                                                                | Level 2 or 3 |
|  3004   | Windows is unable to verify the image integrity of the file %2 because file hash could not be found on the system. A recent hardware or software change might have installed a file that is signed incorrectly or damaged, or that might be malicious software from an unknown source. | Level 2 or 3 |
|  3010   | Code Integrity was unable to load the %2 catalog.                                                                                                                                                                                                                                      | Level 2 or 3 |


## Microsoft-Windows-GroupPolicy

| EventID | Description                                                                                           | Filter  |
| :-----: | ----------------------------------------------------------------------------------------------------- | ------- |
|  1085   | Windows failed to apply the ... settings                                                              | Level 2 |
|  1125   | The processing of Group Policy failed because of an internal system error.                            | Level 2 |
|  1127   | The processing of Group Policy failed due to an internal error.                                       | Level 2 |
|  1129   | The processing of Group Policy failed because of lack of network connectivity to a domain controller. | Level 2 |


## Microsoft-Windows-NTLM/Operational

| EventID | Description                                                                        | Filter |
| :-----: | ---------------------------------------------------------------------------------- | ------ |
|  8003   | NTLM server blocked in the domain audit: Audit NTLM authentication in this domain. |


## Microsoft-Windows-PowerShell/Analytic

| EventID | Description                      |
| :-----: | -------------------------------- |
|  32850  | Creating a server remote session |


## Microsoft-Windows-RemoteDesktopServices-RdpCoreTS/Operational

| EventID | Description                                 |
| :-----: | ------------------------------------------- |
|   131   | Accepted new TCP connection                 |
|   140   | Connection failed; bad username or password |


## Microsoft-Windows-Security-Mitigations/KernelMode

| EventID | Description                                                         |
| :-----: | ------------------------------------------------------------------- |
|    *    | This event log contains log about the "Exploit Protection" feature. |


## Microsoft-Windows-Sysmon/Operational

| EventID | Description                            |
| :-----: | -------------------------------------- |
|    2    | A process changed a file creation time |


## Microsoft-Windows-TaskScheduler/Operational

| EventID | Description  |
| :-----: | :----------- |
|   140   | Task Updated |


## Microsoft-Windows-TerminalServices-RDPClient/Operational

| EventID | Description                        |
| :-----: | ---------------------------------- |
|  1024   | RDP connection attempt             |
|  1025   | RDP connection made                |
|  1102   | multi-transport connection attempt |
|  1103   | multi-transport connection made    |


## Microsoft-Windows-Windows Defender/Operational

| EventID | Description                                                                                                                                                                      | Filter  |
| :-----: | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------- |
|  1002   | An antimalware scan was stopped before it finished.                                                                                                                              | Level 2 |
|  1003   | malware scan paused                                                                                                                                                              |
|  1005   | An antimalware scan failed.                                                                                                                                                      |
|  1007   | The antimalware platform performed an action to protect your system from malware or other potentially unwanted software.                                                         |
|  1008   | The antimalware platform attempted to perform an action to protect your system from malware or other potentially unwanted software, but the action failed.                       |
|  1012   | unable to delete item in quarantine                                                                                                                                              |
|  1014   | The antimalware platform could not delete history of malware and other potentially unwanted software.                                                                            |
|  1015   | The antimalware platform detected suspicious behavior.                                                                                                                           |
|  1117   | The antimalware platform performed an action to protect your system from malware or other potentially unwanted software.                                                         |
|  1118   | The antimalware platform attempted to perform an action to protect your system from malware or other potentially unwanted software, but the action failed.                       |
|  1119   | The antimalware platform encountered a critical error when trying to take action on malware or other potentially unwanted software. There are more details in the event message. |
|  2001   | The antimalware definition update failed.                                                                                                                                        |
|  2003   | The antimalware engine update failed.                                                                                                                                            |
|  2006   | The platform update failed.                                                                                                                                                      |
|  2042   | The antimalware engine no longer supports this operating system, and is no longer protecting your system from malware.                                                           |
|  5008   | The antimalware engine encountered an error and failed.                                                                                                                          |


## Microsoft-Windows-WinINet-Config/ProxyConfigChanged

| EventID | Description                                                                                                                                                |
| :-----: | ---------------------------------------------------------------------------------------------------------------------------------------------------------- |
|  5600   | Indicates change in the proxy configuration. For example if i change my proxy configuration from the "Internet Option" menu. The event will get generated. |


## Microsoft-Windows-WMI-Activity/Operational

| EventID | Description                              |
| :-----: | ---------------------------------------- |
|  5860   | Registration of Temporary Event Consumer |



# Resources
- https://graylog.org/post/critical-windows-event-ids-to-monitor/
- https://learn.microsoft.com/en-us/defender-endpoint/troubleshoot-microsoft-defender-antivirus