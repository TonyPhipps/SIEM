Notable Event IDs for ensuring collections are in place to trigger Sigma rules.

- [Security](#security)
- [Security (Domain Controller Specific)](#security-domain-controller-specific)
- [System](#system)
- [Application](#application)
- [Microsoft-Windows-Iphlpsvc/Operational](#microsoft-windows-iphlpsvcoperational)
- [Applications and Services Logs](#applications-and-services-logs)
- [Microsoft-Windows-AppModel-Runtime/Admin](#microsoft-windows-appmodel-runtimeadmin)
- [Microsoft-Windows-AppXDeployment-Server/Operational](#microsoft-windows-appxdeployment-serveroperational)
- [Microsoft-Windows-AppxPackaging/Operational](#microsoft-windows-appxpackagingoperational)
- [Microsoft-Windows-AppLocker/EXE and DLL](#microsoft-windows-applockerexe-and-dll)
- [Microsoft-Windows-Bits-Client/Operational](#microsoft-windows-bits-clientoperational)
- [Microsoft-Windows-CAPI2](#microsoft-windows-capi2)
- [Microsoft-Windows-CertificateServicesClient-Lifecycle-System/Operational](#microsoft-windows-certificateservicesclient-lifecycle-systemoperational)
- [Microsoft-Windows-CodeIntegrity/Operational](#microsoft-windows-codeintegrityoperational)
- [Microsoft-Windows-Security-Mitigations](#microsoft-windows-security-mitigations)
- [Microsoft-ServiceBus/Operational](#microsoft-servicebusoperational)
- [Microsoft-Windows-Diagnosis-DPS/Operational](#microsoft-windows-diagnosis-dpsoperational)
- [Microsoft-Windows-Shell-Core/Operational](#microsoft-windows-shell-coreoperational)
- [Microsoft-Windows-DNSServer/Audit](#microsoft-windows-dnsserveraudit)
- [Microsoft-Windows-DNS-Client/Operational](#microsoft-windows-dns-clientoperational)
- [Microsoft-Windows-DriverFrameworks-UserMode/Operational](#microsoft-windows-driverframeworks-usermodeoperational)
- [Microsoft-Windows-Kernel-PnP/Device Configuration](#microsoft-windows-kernel-pnpdevice-configuration)
- [Microsoft-Windows-NTLM/Operational](#microsoft-windows-ntlmoperational)
- [Microsoft-Windows-Powershell/Operational](#microsoft-windows-powershelloperational)
- [Microsoft-Windows-Shell-Core/Operational](#microsoft-windows-shell-coreoperational-1)
- [Microsoft-Windows-SMBClient/Security](#microsoft-windows-smbclientsecurity)
- [Microsoft-Windows-SMBClient/Connectivity](#microsoft-windows-smbclientconnectivity)
- [Microsoft-Windows-Sysmon/Operational](#microsoft-windows-sysmonoperational)
- [Microsoft-Windows-TaskScheduler/Operational](#microsoft-windows-taskscheduleroperational)
- [Microsoft-Windows-TerminalServices-LocalSessionManager/Operational](#microsoft-windows-terminalservices-localsessionmanageroperational)
- [Microsoft-Windows-Windows Defender/Operational](#microsoft-windows-windows-defenderoperational)
- [Microsoft-Windows-Windows Firewall With Advanced Security/Firewall](#microsoft-windows-windows-firewall-with-advanced-securityfirewall)
- [Microsoft-Windows-WMI-Activity/Operational](#microsoft-windows-wmi-activityoperational)
- [Microsoft-IIS-Configuration/Operational](#microsoft-iis-configurationoperational)
- [Microsoft-Windows-LDAP-Client/Operational](#microsoft-windows-ldap-clientoperational)
- [Microsoft-Windows-LSA-Server/Operational](#microsoft-windows-lsa-serveroperational)
- [MSExchange Management](#msexchange-management)
- [Microsoft-Windows-DHCP-Server](#microsoft-windows-dhcp-server)


## Security

Quick-use filter string
```
1100,1102,4609,4611,4616,4618,4624,4625,4634,4647,4648,4656,4657,4662,4663,4664,4670,4672,4688,4689,4692,4693,4695,4696,4697,4698,4699,4700,4701,4702,4703,4704,4705,4715,4717,4718,4719,4720,4722,4723,4724,4725,4726,4731,4732,4733,4734,4735,4738,4739,4740,4767,4776,4778,4779,4780,4781,4782,4793,4798,4800,4801,4802,4803,4816,4817,4882,4885,4890,4898,4899,4906,4907,4908,4912,4946,4947,4948,4950,4951,4952,4953,4956,4957,4958,4964,5025,5027,5028,5029,5030,5031,5034,5035,5037,5038,5142,5143,5144,5146,5158,5376,5377,5378,5441,6145,6272,6273,6274,6275,6276,6277,6278,6279,6280,6281,6410,6416,6419,6420,6421,6422,6423,6424
```

NOTE: These are worth the effort, but will likely need filtering to make manageable
```
4662,4673,5145,5379
```


| EventID | Description                                                                                        | Recommended Filter                   |
| ------- | -------------------------------------------------------------------------------------------------- | ------------------------------------ |
| 1102    | The audit log was cleared.                                                                         |                                      |
| 4609    | Windows is shutting down                                                                           |                                      |
| 4611    | A trusted logon process has been registered with the Local Security Authority.                     |                                      |
| 4616    | The system time was changed.                                                                       |                                      |
| 4624    | An account was successfully logged on.                                                             |                                      |
| 4625    | An account failed to log on.                                                                       |                                      |
| 4634    | An account was logged off.                                                                         |                                      |
| 4648    | A logon was attempted using explicit credentials.                                                  |                                      |
| 4656    | A handle to an object was requested                                                                |                                      |
| 4657    | A registry value was modified.                                                                     | OperationType %%1904, %%1905, %%1906 |
| 4661    |                                                                                                    |                                      |
| 4662    | An operation was performed on an object                                                            |                                      |
| 4663    | An attempt was made to access an object                                                            |                                      |
| 4672    | Special privileges assigned to new logon.                                                          |                                      |
| 4673    |                                                                                                    |                                      |
| 4674    |                                                                                                    |                                      |
| 4688    | A new process has been created.                                                                    |                                      |
| 4689    | A process has exited.                                                                              |                                      |
| 4692    | Backup of data protection master key was attempted.                                                |                                      |
| 4697    | A service was installed in the system.                                                             |                                      |
| 4698    | A scheduled task was created.                                                                      |                                      |
| 4699    | A scheduled task was deleted.                                                                      |                                      |
| 4701    | A scheduled task was disabled                                                                      |                                      |
| 4702    | A scheduled task was updated.                                                                      |                                      |
| 4704    | A user right was assigned.                                                                         |                                      |
| 4719    | System audit policy was changed.                                                                   |                                      |
| 4720    | A user account was created.                                                                        |                                      |
| 4727    | A security-enabled global group was created.                                                       |                                      |
| 4728    | A member was added to a security-enabled global group.                                             |                                      |
| 4730    | A security-enabled global group was deleted.                                                       |                                      |
| 4732    | A member was added to a security-enabled local group.                                              |                                      |
| 4738    |                                                                                                    |                                      |
| 4776    | The domain controller attempted to validate the credentials for an account.                        |                                      |
| 4781    | The name of an account was changed.                                                                |                                      |
| 4799    | A security-enabled local group membership was enumerated.                                          |                                      |
| 4800    | The workstation was locked.                                                                        |                                      |
| 4825    |                                                                                                    |                                      |
| 4898    | Certificate Services loaded a template                                                             |
| 4899    | A Certificate Services template was updated                                                        |
| 5038    | Code integrity determined that the image hash of a file is not valid                               | Level 0 or 4                         |
| 5140    | (NOISY!) Network share object accessed                                                             |                                      |
| 5145    |                                                                                                    |
| 5157    |                                                                                                    |                                      |
| 517     | The audit log was cleared.                                                                         |                                      |
| 5379    |                                                                                                    |
| 5441    | The following filter was present when the Windows Filtering Platform Base Filtering Engine started |
| 5447    |                                                                                                    |                                      |
| 5449    |                                                                                                    |                                      |
| 6416    | A new external device was recognized by the system                                                 |
| 6423    | The installation of this device is forbidden by system policy.                                     |


## Security (Domain Controller Specific)

Quick-use filter string
```
4649,4706,4707,4713,4714,4716,4727,4728,4729,4730,4737,4741,4742,4743,4744,4745,4746,4747,4748,4749,4750,4751,4752,4753,4754,4755,4756,4757,4759,4760,4761,4762,4763,4764,4765,4766,4768,4769,4770,4771,4794,4799,4820,4865,4866,4867,5136,5137,5138,5139,5140,5141
```

| EventID | Description                                                                            | Filter |
| ------- | -------------------------------------------------------------------------------------- | ------ |
| 4649    | A replay attack was detected.                                                          |        |
| 4706    | A new trust was created to a domain.                                                   |        |
| 4741    | A computer account was created.                                                        |        |
| 4742    | A computer account was changed.                                                        |        |
| 4765    | SID History was added to an account.                                                   |        |
| 4768    | A Kerberos authentication ticket (TGT) was requested.                                  |        |
| 4769    | A Kerberos service ticket was requested.                                               |        |
| 4771    | Kerberos pre-authentication failed.                                                    |        |
| 4794    | An attempt was made to set the Directory Services Restore Mode administrator password. |        |
| 5136    | A directory service object was modified. [1]                                           |        |


## System

| EventID | Provider Name                                      | Description                                           | Filter                       |
| :-----: | :------------------------------------------------- | :---------------------------------------------------- | ---------------------------- |
|   26    | Application Popup                                  |                                                       |                              |
|  6038   | LsaSrv                                             |                                                       |                              |
|   16    | Microsoft-Windows-Kerberos-Key-Distribution-Center |                                                       |                              |
|   16    | Microsoft-Windows-Kernel-General                   |                                                       |                              |
|   16    | Microsoft-Windows-WindowsUpdateClient              |                                                       |                              |
|   39    | Microsoft-Windows-Kerberos-Key-Distribution-Center |                                                       |                              |
|   42    |                                                    | The system is entering sleep                          |                              |
|   55    | Ntfs                                               |                                                       | Origin: 'File System Driver' |
|   98    | Microsoft-Windows-Ntfs                             |                                                       |                              |
|   104   | Microsoft-Windows-Eventlog                         | Event Log was Cleared                                 |                              |
|  1001   | Microsoft-Windows-WER-SystemErrorReporting         | System Crash                                          |                              |
|  5805   | Netlogon                                           |                                                       |                              |
|  5829   | Netlogon                                           |                                                       |                              |
|  7023   | Service Control Manager                            | Service terminated with error                         |                              |
|  7034   | Service Control Manager                            | service terminated unexpectedly                       |                              |
|  7036   | Service Control Manager                            | The [Service Name] service entered the [Status] state |                              |
|  7045   | Service Control Manager                            | A service was installed in the system                 |                              |
|  10001  | Microsoft-Windows-DistributedCOM                   |                                                       |                              |


## Application

| EventID | ProviderName                                  | Description       |
| :-----: | :-------------------------------------------- | :---------------- |
|    1    | Microsoft-Windows-Audit-CVE                   |                   |
|   216   | ESENT                                         |                   |
|   325   | ESENT                                         |                   |
|   53    | Microsoft-Windows-CertificationAuthority      |                   |
|   524   | Microsoft-Windows-Backup                      |                   |
|   865   | Microsoft-Windows-SoftwareRestrictionPolicies |                   |
|  1000   | Application Error                             |                   |
|  1001   | Windows Error Reporting                       | Application Crash |
|  1033   | MsiInstaller                                  |                   |
|  1034   | MsiInstaller                                  |                   |
|  1040   | MsiInstaller                                  |                   |
|  33205  | MSSQLSERVER                                   |                   |
|  18456  | MSSQLSERVER                                   |                   |
|  33205  | MSSQLSERVER                                   |                   |
|  15457  | MSSQLSERVER                                   |                   |
|   200   | ScreenConnect                                 |                   |
|   201   | ScreenConnect                                 |                   |


Note: Some installable applications are known to write to this log. Consider looking in your logs to determine if any more are necessary for proper visibility.


## Microsoft-Windows-Iphlpsvc/Operational

| EventID | Description |
| :-----: | ----------- |
|  4100   |             |


## Applications and Services Logs


### Microsoft-Windows-RpcFirewall/Operational

| EventID | Description |
| :-----: | ----------- |
|    3    |             |


### OpenSSH

| EventID | Description |
| :-----: | ----------- |
|    3    |             |


## Microsoft-Windows-AppModel-Runtime/Admin

| EventID | Description |
| :-----: | ----------- |
|   201   |             |


## Microsoft-Windows-AppXDeployment-Server/Operational

| EventID | Description |
| :-----: | ----------- |
|   400   |             |
|   401   |             |
|   412   |             |
|   441   |             |
|   854   |             |


## Microsoft-Windows-AppxPackaging/Operational

| EventID | Description |
| :-----: | ----------- |
|   157   |             |


## Microsoft-Windows-AppLocker/EXE and DLL

| EventID | Description                     |
| :-----: | ------------------------------- |
|  8004   | ... was prevented from running. |


## Microsoft-Windows-Bits-Client/Operational

| EventID | Description |
| :-----: | ----------- |
|    3    |             |
|  16403  |             |


## Microsoft-Windows-CAPI2
OR just "CAPI2"

| EventID | Description |
| :-----: | ----------- |
|   70    |             |


## Microsoft-Windows-CertificateServicesClient-Lifecycle-System/Operational

| EventID | Description |
| :-----: | ----------- |
|  1007   |             |


## Microsoft-Windows-CodeIntegrity/Operational

| EventID | Description                                                                                                                                                                                           | Filter       |
| :-----: | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------ |
|  3001   | Code Integrity determined an unsigned kernel module %2 is loaded into the system. Check with the publisher to see if a signed version of the kernel module is available.                              | Level 2 or 3 |
|  3021   |                                                                                                                                                                                                       |
|  3023   | Windows is unable to verify the integrity of the file %2 because the signing certificate has been revoked. Check with the publisher to see if a new signed version of the kernel module is available. | Level 2 or 3 |
|  3032   |                                                                                                                                                                                                       |
|  3033   |                                                                                                                                                                                                       |
|  3036   |                                                                                                                                                                                                       |
|  3037   |                                                                                                                                                                                                       |
|  3077   |                                                                                                                                                                                                       |
|  3082   |                                                                                                                                                                                                       |
|  3104   |                                                                                                                                                                                                       |


## Microsoft-Windows-Security-Mitigations

| EventID | Description |
| :-----: | ----------- |
|   11    |             |


## Microsoft-ServiceBus/Operational


| EventID | Description |
| :-----: | ----------- |
|  40300  |             |


## Microsoft-Windows-Diagnosis-DPS/Operational

| EventID | Description |
| :-----: | ----------- |
|   101   |             |


## Microsoft-Windows-Shell-Core/Operational

| EventID | Description |
| :-----: | ----------- |
|  28115  |             |


## Microsoft-Windows-DNSServer/Audit

| EventID | Description                                             | Filter |
| :-----: | ------------------------------------------------------- | ------ |
|   150   | DNS Server could not load or initialize the plug-in DLL |        |
|  6004   |                                                         |        |


## Microsoft-Windows-DNS-Client/Operational

| EventID | Description                       | Filter |
| :-----: | --------------------------------- | ------ |
|  3008   | DNS Client events Query Completed |        |


## Microsoft-Windows-DriverFrameworks-UserMode/Operational

| EventID | Description              |
| :-----: | :----------------------- |
|  2003   |                          |
|  2004   | User-Mode drivers loaded |
|  2006   |                          |
|  2033   |                          |


## Microsoft-Windows-Kernel-PnP/Device Configuration

| EventID | Description                   |
| :-----: | :---------------------------- |
|   400   | New Mass Storage Installation |
|   410   | New Mass Storage Installation |


## Microsoft-Windows-NTLM/Operational

| EventID | Description                                                                                  |
| :-----: | :------------------------------------------------------------------------------------------- |
|  8001   | NTLM client blocked audit: Audit outgoing NTLM authentication traffic that would be blocked. |
|  8002   | NTLM server blocked audit: Audit Incoming NTLM Traffic that would be blocked.                |
|  8004   | Domain Controller Blocked Audit: Audit NTLM authentication to this domain controller.        |


## Microsoft-Windows-Powershell/Operational

| EventID | Description          |
| :-----: | :------------------- |
|  4103   | Pipeline executed    |
|  4104   | Scriptblock executed |


## Microsoft-Windows-Shell-Core/Operational

| EventID | Description                                                                                                 |
| :-----: | ----------------------------------------------------------------------------------------------------------- |
|  28115  | Triggered when a shortcut is added to the "App Resolver Cache". Indicates when an application is installed. |


## Microsoft-Windows-SMBClient/Security

| EventID | Description |
| :-----: | ----------- |
|  31017  |             |


## Microsoft-Windows-SMBClient/Connectivity

| EventID | Description |
| :-----: | ----------- |
|  4000   |             |


## Microsoft-Windows-Sysmon/Operational

| EventID | Description                                           |
| :-----: | ----------------------------------------------------- |
|    1    | Process creation                                      |
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
|   17    | PipeEvent (Pipe Created)                              |
|   19    | WmiEvent (WmiEventFilter activity detected)           |
|   20    | WmiEvent (WmiEventConsumer activity detected)         |
|   21    | WmiEvent (WmiEventConsumerToFilter activity detected) |
|   22    | DNSEvent (DNS query)                                  |
|   27    | FileBlockExecutable                                   |
|   28    | FileBlockShredding                                    |
|   29    | FileExecutableDetected                                |
|   255   | Error                                                 |


## Microsoft-Windows-TaskScheduler/Operational

| EventID | Description    |
| :-----: | :------------- |
|   106   | Task Scheduled |
|   129   | Task Created   |
|   141   | Task Removed   |


## Microsoft-Windows-TerminalServices-LocalSessionManager/Operational

| EventID | Description             |
| :-----: | ----------------------- |
|   21    | Session logon succeeded |


## Microsoft-Windows-Windows Defender/Operational

| EventID | Description                                                                                  | Filter |
| :-----: | -------------------------------------------------------------------------------------------- | ------ |
|  1006   | The antimalware engine found malware or other potentially unwanted software.                 |
|  1009   | The antimalware platform restored an item from quarantine.                                   |
|  1013   | The antimalware platform deleted history of malware and other potentially unwanted software. |
|  1116   | The antimalware platform detected malware or other potentially unwanted software.            |
|  1121   |                                                                                              |
|  3002   | Real-time protection encountered an error and failed.                                        |
|  5001   | Real-time protection is disabled.                                                            |
|  5007   |                                                                                              |
|  5010   | Scanning for malware and other potentially unwanted software is disabled.                    |
|  5012   | Scanning for viruses is disabled.                                                            |
|  5013   |                                                                                              |
|  5101   | The antimalware platform is expired.                                                         |


## Microsoft-Windows-Windows Firewall With Advanced Security/Firewall

| EventID | Description                               |
| :-----: | ----------------------------------------- |
|  2002   | Windows Defender Firewall setting changed |
|  2004   | Firewall Rule Added                       |
|  2005   | Firewall Rule Changed                     |
|  2006   | Firewall Rule Deleted                     |
|  2009   |                                           |
|  2032   |                                           |
|  2033   | Firewall Rule Deleted                     |
|  2009   | Firewall Failed to load group policy      |


## Microsoft-Windows-WMI-Activity/Operational

| EventID | Description                              |
| :-----: | ---------------------------------------- |
|  5859   |                                          |
|  5861   | Registration of Permanent Event Consumer |


## Microsoft-IIS-Configuration/Operational

| EventID | Description |
| :-----: | ----------- |
|   29    |             |


## Microsoft-Windows-LDAP-Client/Operational

| EventID | Description |
| :-----: | ----------- |
|   30    |             |


## Microsoft-Windows-LSA-Server/Operational

| EventID | Description |
| :-----: | ----------- |
|   300   |             |


## MSExchange Management

| EventID | Description |
| :-----: | ----------- |
|    6    |             |


## Microsoft-Windows-DHCP-Server

| EventID | Description |
| :-----: | ----------- |
|  1031   |             |
|  1033   |             |






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
* [Finding Forensic Goodness In Obscure Windows Event Logs](https://nasbench.medium.com/finding-forensic-goodness-in-obscure-windows-event-logs-60e978ea45a3)
* https://archive.org/stream/pdfy-xNodO-t_DlVFf20s/Mitigating-Pass-the-Hash-Attacks-and-Other-Credential-Theft-Version-2_djvu.txt
* https://docs.microsoft.com/en-us/windows-server/security/credentials-protection-and-management/authentication-policies-and-authentication-policy-silos
* https://docs.microsoft.com/en-us/windows-server/security/credentials-protection-and-management/protected-users-security-group
* https://docs.microsoft.com/en-us/windows/security/threat-protection/use-windows-event-forwarding-to-assist-in-intrusion-detection
* https://github.com/palantir/windows-event-forwarding/tree/master/wef-subscriptions
* https://github.com/nsacyber/Event-Forwarding-Guidance
