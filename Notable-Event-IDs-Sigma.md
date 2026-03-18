Notable Event IDs for ensuring collections are in place to trigger Sigma rules.
- Use in conjunction with [Notable-Event-IDs-Risk.md](Notable-Event-IDs-Risk.md)
- Use in conjunction with [Notable-Event-IDs-Forensics.md](Notable-Event-IDs-Forensics.md)

Table of Contents

- [Quick-Use Filter String for All Event IDs](#quick-use-filter-string-for-all-event-ids)
- [Application](#application)
- [MSExchange Management](#msexchange-management)
- [Microsoft-IIS-Configuration/Operational](#microsoft-iis-configurationoperational)
- [Microsoft-ServiceBus/Operational](#microsoft-servicebusoperational)
- [Microsoft-Windows-AppLocker/EXE and DLL](#microsoft-windows-applockerexe-and-dll)
- [Microsoft-Windows-AppModel-Runtime/Admin](#microsoft-windows-appmodel-runtimeadmin)
- [Microsoft-Windows-AppXDeployment-Server/Operational](#microsoft-windows-appxdeployment-serveroperational)
- [Microsoft-Windows-AppxPackaging/Operational](#microsoft-windows-appxpackagingoperational)
- [Microsoft-Windows-Bits-Client/Operational](#microsoft-windows-bits-clientoperational)
- [Microsoft-Windows-CAPI2](#microsoft-windows-capi2)
- [Microsoft-Windows-CertificateServicesClient-Lifecycle-System/Operational](#microsoft-windows-certificateservicesclient-lifecycle-systemoperational)
- [Microsoft-Windows-CodeIntegrity/Operational](#microsoft-windows-codeintegrityoperational)
- [Microsoft-Windows-DHCP-Server](#microsoft-windows-dhcp-server)
- [Microsoft-Windows-DNS-Client/Operational](#microsoft-windows-dns-clientoperational)
- [Microsoft-Windows-DNSServer/Audit](#microsoft-windows-dnsserveraudit)
- [Microsoft-Windows-Diagnosis-DPS/Operational](#microsoft-windows-diagnosis-dpsoperational)
- [Microsoft-Windows-DriverFrameworks-UserMode/Operational](#microsoft-windows-driverframeworks-usermodeoperational)
- [Microsoft-Windows-Iphlpsvc/Operational](#microsoft-windows-iphlpsvcoperational)
- [Microsoft-Windows-Kernel-PnP/Device Configuration](#microsoft-windows-kernel-pnpdevice-configuration)
- [Microsoft-Windows-LDAP-Client/Operational](#microsoft-windows-ldap-clientoperational)
- [Microsoft-Windows-LSA-Server/Operational](#microsoft-windows-lsa-serveroperational)
- [Microsoft-Windows-NTLM/Operational](#microsoft-windows-ntlmoperational)
- [Microsoft-Windows-Powershell/Operational](#microsoft-windows-powershelloperational)
- [Microsoft-Windows-RpcFirewall/Operational](#microsoft-windows-rpcfirewalloperational)
- [Microsoft-Windows-SMBClient/Connectivity](#microsoft-windows-smbclientconnectivity)
- [Microsoft-Windows-SMBClient/Security](#microsoft-windows-smbclientsecurity)
- [Microsoft-Windows-Security-Mitigations](#microsoft-windows-security-mitigations)
- [Microsoft-Windows-Shell-Core/Operational](#microsoft-windows-shell-coreoperational)
- [Microsoft-Windows-Sysmon/Operational](#microsoft-windows-sysmonoperational)
- [Microsoft-Windows-TaskScheduler/Operational](#microsoft-windows-taskscheduleroperational)
- [Microsoft-Windows-TerminalServices-LocalSessionManager/Operational](#microsoft-windows-terminalservices-localsessionmanageroperational)
- [Microsoft-Windows-WMI-Activity/Operational](#microsoft-windows-wmi-activityoperational)
- [Microsoft-Windows-Windows Defender/Operational](#microsoft-windows-windows-defenderoperational)
- [Microsoft-Windows-Windows Firewall With Advanced Security/Firewall](#microsoft-windows-windows-firewall-with-advanced-securityfirewall)
- [OpenSSH](#openssh)
- [Security](#security)
- [Security (Domain Controller Specific)](#security-domain-controller-specific)
- [System](#system)


## Quick-Use Filter String for All Event IDs

NOTE: Since this is event IDs only, theres a decent chance of some cross polination, where random events are included just from sharing the same ID in different Log Channels.

```
1, 10, 1000, 10001, 1001, 1006, 1007, 1009, 101, 1013, 1031, 1033, 1034, 104, 1040, 106, 11, 1102, 1116, 1121, 12, 129, 13, 14, 141, 150, 15457, 157, 16, 16403, 17, 18456, 19, 20, 200, 2002, 2003, 2004, 2005, 2006, 2009, 201, 2032, 2033, 21, 216, 22, 255, 26, 27, 28, 28115, 29, 3, 30, 300, 3001, 3002, 3008, 3021, 3023, 3032, 3033, 3036, 3037, 3077, 3082, 31017, 3104, 325, 33205, 39, 4, 400, 4000, 401, 40300, 410, 4100, 4103, 4104, 412, 42, 441, 4609, 4611, 4616, 4624, 4625, 4634, 4648, 4649, 4656, 4657, 4661, 4662, 4663, 4672, 4673, 4674, 4688, 4689, 4692, 4697, 4698, 4699, 4701, 4702, 4704, 4706, 4719, 4720, 4727, 4728, 4730, 4732, 4738, 4741, 4742, 4765, 4768, 4769, 4771, 4776, 4781, 4794, 4799, 4800, 4825, 4898, 4899, 5, 5001, 5007, 5010, 5012, 5013, 5038, 5101, 5136, 5140, 5145, 5157, 517, 524, 53, 5379, 5441, 5447, 5449, 55, 5805, 5829, 5859, 5861, 6, 6004, 6038, 6416, 6423, 7, 70, 7023, 7034, 7036, 7045, 8, 8001, 8002, 8004, 854, 865, 9, 98
```

## Application

Quick-use filter string
```
1, 216, 325, 53, 524, 865, 1000, 1001, 1033, 1034, 1040, 33205, 18456, 15457, 200, 201
```

| EventID | ProviderName                                  | Description                                                                             |
| :-----: | :-------------------------------------------- | :-------------------------------------------------------------------------------------- |
|    1    | Microsoft-Windows-Audit-CVE                   | A potential exploit was detected and the process was terminated.                        |
|   216   | ESENT                                         | A database page checksum mismatch was detected.                                         |
|   325   | ESENT                                         | A database engine created a new database.                                               |
|   53    | Microsoft-Windows-CertificationAuthority      | Active Directory Certificate Services (AD CS) denied a certificate request.             |
|   524   | Microsoft-Windows-Backup                      | A backup operation has successfully completed.                                          |
|   865   | Microsoft-Windows-SoftwareRestrictionPolicies | An application was blocked from running because of a Software Restriction Policy (SRP). |
|  1000   | Application Error                             | A program has crashed.                                                                  |
|  1001   | Windows Error Reporting                       | Application Crash                                                                       |
|  1033   | MsiInstaller                                  | A software product was successfully installed.                                          |
|  1034   | MsiInstaller                                  | A software product was successfully removed (uninstalled).                              |
|  1040   | MsiInstaller                                  | The Windows Installer service has started a transaction.                                |
|  33205  | MSSQLSERVER                                   | SQL Server Audit failure or state change.                                               |
|  18456  | MSSQLSERVER                                   | A user login attempt to SQL Server failed.                                              |
|  15457  | MSSQLSERVER                                   | A configuration option has been changed.                                                |
|   200   | ScreenConnect                                 | A Client Connection attempt.                                                            |
|   201   | ScreenConnect                                 | A Client has disconnected.                                                              |


Note: Some installable applications are known to write to this log. Consider looking in your logs to determine if any more are necessary for proper visibility.


## MSExchange Management

| EventID | Description   |
| :-----: | ------------- |
|    6    | Cndlet Failed |


## Microsoft-IIS-Configuration/Operational

| EventID | Description                                                 |
| :-----: | ----------------------------------------------------------- |
|   29    | The change to the configuration was successfully committed. |


## Microsoft-ServiceBus/Operational

| EventID | Description                                   |
| :-----: | --------------------------------------------- |
|  40300  | An error occurred while processing a request. |


## Microsoft-Windows-AppLocker/EXE and DLL

| EventID | Description                     |
| :-----: | ------------------------------- |
|  8004   | ... was prevented from running. |


## Microsoft-Windows-AppModel-Runtime/Admin

| EventID | Description                                                                                |
| :-----: | ------------------------------------------------------------------------------------------ |
|   201   | A package (app) failed to register because a specific file or resource could not be found. |


## Microsoft-Windows-AppXDeployment-Server/Operational

| EventID | Description                                                                                                       |
| :-----: | ----------------------------------------------------------------------------------------------------------------- |
|   400   | An AppX (Microsoft Store) package deployment operation has started.                                               |
|   401   | An AppX (Microsoft Store) package deployment operation has failed.                                                |
|   412   | A deployment operation was successfully canceled.                                                                 |
|   441   | A package (app) was successfully removed for a specific user, but its files remain on the system for other users. |
|   854   | A package (app) was ignored because it is already up to date.                                                     |


## Microsoft-Windows-AppxPackaging/Operational

| EventID | Description                                         |
| :-----: | --------------------------------------------------- |
|   157   | An AppX or MSIX package was successfully validated. |


## Microsoft-Windows-Bits-Client/Operational

| EventID | Description                                                         |
| :-----: | ------------------------------------------------------------------- |
|    3    | A BITS (Background Intelligent Transfer Service) job has completed. |
|  16403  | A BITS job has been modified by a user or an application.           |


## Microsoft-Windows-CAPI2
OR just "CAPI2"

| EventID | Description                                                |
| :-----: | ---------------------------------------------------------- |
|   70    | A certificate was successfully retrieved from the network. |


## Microsoft-Windows-CertificateServicesClient-Lifecycle-System/Operational

| EventID | Description                                           |
| :-----: | ----------------------------------------------------- |
|  1007   | A certificate has been deleted from the system store. |


## Microsoft-Windows-CodeIntegrity/Operational

| EventID | Description                                                                                                                                                                                           | Filter       |
| :-----: | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------ |
|  3001   | Code Integrity determined an unsigned kernel module %2 is loaded into the system. Check with the publisher to see if a signed version of the kernel module is available.                              | Level 2 or 3 |
|  3021   | Code Integrity was unable to verify the image hash of a file.                                                                                                                                         |
|  3023   | Windows is unable to verify the integrity of the file %2 because the signing certificate has been revoked. Check with the publisher to see if a new signed version of the kernel module is available. | Level 2 or 3 |
|  3032   | Code Integrity is currently in "Audit Mode" and detected an image that would have been blocked if enforcement was turned on.                                                                          |
|  3033   | Code Integrity determined that a file does not meet the security requirements and has blocked it from loading.                                                                                        |
|  3036   | Code Integrity was unable to load a file because its digital signature was revoked.                                                                                                                   |
|  3037   | Code Integrity was unable to load a file because the signature has expired.                                                                                                                           |
|  3077   | Code Integrity failed to load a file because the signature's root certificate is not trusted by the system.                                                                                           |
|  3082   | Code Integrity failed to load a file because its digital signature is not valid for the "Dynamic Code" or "Hardened" environment.                                                                     |
|  3104   | Code Integrity is starting the image verification process for a file.                                                                                                                                 |


## Microsoft-Windows-DHCP-Server

| EventID | Description                                                                                    |
| :-----: | ---------------------------------------------------------------------------------------------- |
|  1031   | DHCP service has successfully registered its Service Principal Name (SPN) in Active Directory. |
|  1033   | DHCP service has successfully updated a client's DNS resource record.                          |

## Microsoft-Windows-DNS-Client/Operational

| EventID | Description                       | Filter |
| :-----: | --------------------------------- | ------ |
|  3008   | DNS Client events Query Completed |        |


## Microsoft-Windows-DNSServer/Audit

| EventID | Description                                             | Filter |
| :-----: | ------------------------------------------------------- | ------ |
|   150   | DNS Server could not load or initialize the plug-in DLL |        |
|  6004   | A DNS resource record was successfully modified.        |        |


## Microsoft-Windows-Diagnosis-DPS/Operational

| EventID | Description                          |
| :-----: | ------------------------------------ |
|   101   | A Diagnostic Scenario has completed. |


## Microsoft-Windows-DriverFrameworks-UserMode/Operational

| EventID | Description                                                                                                          |
| :-----: | :------------------------------------------------------------------------------------------------------------------- |
|  2003   | A new UMDF (User-Mode Driver Framework) host process has been successfully created.                                  |
|  2004   | User-Mode drivers loaded                                                                                             |
|  2006   | A UMDF (User-Mode Driver Framework) host process has failed to load a driver.                                        |
|  2033   | A UMDF (User-Mode Driver Framework) host process is being terminated because it has timed out during a state change. |


## Microsoft-Windows-Iphlpsvc/Operational

| EventID | Description                                             |
| :-----: | ------------------------------------------------------- |
|  4100   | A network interface has changed its connectivity state. |


## Microsoft-Windows-Kernel-PnP/Device Configuration

| EventID | Description                   |
| :-----: | :---------------------------- |
|   400   | New Mass Storage Installation |
|   410   | New Mass Storage Installation |


## Microsoft-Windows-LDAP-Client/Operational

| EventID | Description               |
| :-----: | ------------------------- |
|   30    | Start of an LDAP request. |


## Microsoft-Windows-LSA-Server/Operational

| EventID | Description                                                                                                 |
| :-----: | ----------------------------------------------------------------------------------------------------------- |
|   300   | A Protected Process Light (PPL) protection policy was applied to the Local Security Authority (LSA) process |


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


## Microsoft-Windows-RpcFirewall/Operational

| EventID | Description       |
| :-----: | ----------------- |
|    3    | Blocked RPC Call. |


## Microsoft-Windows-SMBClient/Connectivity

| EventID | Description                           |
| :-----: | ------------------------------------- |
|  4000   | Successfully established a connection |


## Microsoft-Windows-SMBClient/Security

| EventID | Description                                                            |
| :-----: | ---------------------------------------------------------------------- |
|  31017  | SMB client rejected a response from a server because it was not signed |


## Microsoft-Windows-Security-Mitigations

| EventID | Description                                        |
| :-----: | -------------------------------------------------- |
|   11    | A mitigation policy has been applied to a process. |


## Microsoft-Windows-Shell-Core/Operational

| EventID | Description                                                                                                 |
| :-----: | ----------------------------------------------------------------------------------------------------------- |
|  28115  | Triggered when a shortcut is added to the "App Resolver Cache". Indicates when an application is installed. |


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


## Microsoft-Windows-WMI-Activity/Operational

| EventID | Description                                      |
| :-----: | ------------------------------------------------ |
|  5859   | An Event Subscription Service (ESS) has started. |
|  5861   | Registration of Permanent Event Consumer         |


## Microsoft-Windows-Windows Defender/Operational

| EventID | Description                                                                                           | Filter |
| :-----: | ----------------------------------------------------------------------------------------------------- | ------ |
|  1006   | The antimalware engine found malware or other potentially unwanted software.                          |
|  1009   | The antimalware platform restored an item from quarantine.                                            |
|  1013   | The antimalware platform deleted history of malware and other potentially unwanted software.          |
|  1015   | The antimalware platform detected suspicious behavior.                                                |
|  1116   | The antimalware platform detected malware or other potentially unwanted software.                     |
|  1117   | The antimalware platform detected malware or other potentially unwanted software.                     |
|  1121   | Successfully blocked an unauthorized change to a protected folder via Controlled Folder Access (CFA). |
|  3002   | Real-time protection encountered an error and failed.                                                 |
|  3007   | Real-time Protection feature has restarted                                                            |
|  5001   | Real-time protection is disabled.                                                                     |
|  5007   | configuration has changed.                                                                            |
|  5010   | Scanning for malware and other potentially unwanted software is disabled.                             |
|  5012   | Scanning for viruses is disabled.                                                                     |
|  5013   | Removed or lowered a security feature due to a system state change or a conflicting product.          |
|  5101   | The antimalware platform is expired.                                                                  |


## Microsoft-Windows-Windows Firewall With Advanced Security/Firewall

| EventID | Description                                |
| :-----: | ------------------------------------------ |
|  2002   | Firewall setting changed                   |
|  2004   | Firewall Rule Added                        |
|  2005   | Firewall Rule Changed                      |
|  2006   | Firewall Rule Deleted                      |
|  2009   | Firewall failed to load Group Policy       |
|  2032   | Firewall has blocked an inbound connection |
|  2033   | Firewall Rule Deleted                      |


## OpenSSH

| EventID | Description |
| :-----: | ----------- |
|    3    |             |


## Security

Quick-use filter string
```
1102, 4609, 4611, 4616, 4624, 4625, 4634, 4648, 4656, 4657, 4661, 4663, 4672, 4673, 4688, 4689, 4692, 4697, 4698, 4699, 4701, 4702, 4704, 4719, 4720, 4727, 4728, 4730, 4732, 4738, 4781, 4799, 4800, 4825, 4899, 5038, 5140, 5145, 517, 5379, 5447, 6416, 6423
```

NOTE: These are included above and are likely worth the effort, but will likely need filtering to make manageable:
```
4673, 5145, 5157, 5379
```

| EventID | Description                                                                                        | Recommended Filter                          |
| ------- | -------------------------------------------------------------------------------------------------- | ------------------------------------------- |
| 1102    | The audit log was cleared.                                                                         |                                             |
| 4609    | Windows is shutting down.                                                                          |                                             |
| 4611    | A trusted logon process has been registered with the Local Security Authority.                     |                                             |
| 4616    | The system time was changed.                                                                       |                                             |
| 4624    | An account was successfully logged on.                                                             |                                             |
| 4625    | An account failed to log on.                                                                       |                                             |
| 4634    | An account was logged off.                                                                         |                                             |
| 4648    | A logon was attempted using explicit credentials.                                                  |                                             |
| 4656    | A handle to an object was requested.                                                               |                                             |
| 4657    | A registry value was modified.                                                                     | OperationType %%1904, %%1905, %%1906        |
| 4661    | A handle to an object was requested.                                                               | Will not produce events until SACLs are set |
| 4662    | An operation was performed on an object.                                                           | Will not produce events until SACLs are set |
| 4663    | An attempt was made to access an object.                                                           | Will not produce events until SACLs are set |
| 4672    | Special privileges assigned to new logon.                                                          |                                             |
| 4673    | A privileged service was called.                                                                   | NOISY without filters                       |
| 4674    | An operation was attempted on a privileged object.                                                 |                                             |
| 4688    | A new process has been created.                                                                    |                                             |
| 4689    | A process has exited.                                                                              |                                             |
| 4692    | Backup of data protection master key was attempted.                                                |                                             |
| 4697    | A service was installed in the system.                                                             |                                             |
| 4698    | A scheduled task was created.                                                                      |                                             |
| 4699    | A scheduled task was deleted.                                                                      |                                             |
| 4701    | A scheduled task was disabled.                                                                     |                                             |
| 4702    | A scheduled task was updated.                                                                      |                                             |
| 4704    | A user right was assigned.                                                                         |                                             |
| 4719    | System audit policy was changed.                                                                   |                                             |
| 4720    | A user account was created.                                                                        |                                             |
| 4727    | A security-enabled global group was created.                                                       |                                             |
| 4728    | A member was added to a security-enabled global group.                                             |                                             |
| 4730    | A security-enabled global group was deleted.                                                       |                                             |
| 4732    | A member was added to a security-enabled local group.                                              |                                             |
| 4738    | A user account was changed.                                                                        |                                             |
| 4776    | The domain controller attempted to validate the credentials for an account.                        |                                             |
| 4781    | The name of an account was changed.                                                                |                                             |
| 4799    | A security-enabled local group membership was enumerated.                                          |                                             |
| 4800    | The workstation was locked.                                                                        |                                             |
| 4825    | A user was denied the right to log on at this computer.                                            |                                             |
| 4898    | Certificate Services loaded a template                                                             |                                             |
| 4899    | A Certificate Services template was updated                                                        |                                             |
| 5038    | Code integrity determined that the image hash of a file is not valid                               | Level 0 or 4                                |
| 5140    | Network share object accessed                                                                      | NOISY without filters                       |
| 5145    | A network share object was checked to see whether client can be granted desired access.            | NOISY without filters                       |
| 5157    | The Windows Filtering Platform has blocked a connection.                                           | NOISY without filters                       |
| 517     | The audit log was cleared.                                                                         |                                             |
| 5379    | Credential Manager credentials were read.                                                          | NOISY without filters                       |
| 5441    | The following filter was present when the Windows Filtering Platform Base Filtering Engine started |                                             |
| 5447    | A Windows Filtering Platform filter has been modified.                                             |                                             |
| 5449    | A Windows Filtering Platform layer has been modified.                                              |                                             |
| 6416    | A new external device was recognized by the system                                                 |                                             |
| 6423    | The installation of this device is forbidden by system policy.                                     |                                             |


## Security (Domain Controller Specific)

Quick-use filter string
```
4649, 4706, 4741, 4742, 4765, 4768, 4769, 4771, 4794, 5136
```

NOTE: Event IDs below may be extra noisy and need tuning.
```
4768
```

| EventID | Description                                                                            | Filter                |
| ------- | -------------------------------------------------------------------------------------- | --------------------- |
| 4649    | A replay attack was detected.                                                          |                       |
| 4706    | A new trust was created to a domain.                                                   |                       |
| 4741    | A computer account was created.                                                        |                       |
| 4742    | A computer account was changed.                                                        |                       |
| 4765    | SID History was added to an account.                                                   |                       |
| 4768    | A Kerberos authentication ticket (TGT) was requested.                                  | NOISY without filters |
| 4769    | A Kerberos service ticket was requested.                                               |                       |
| 4771    | Kerberos pre-authentication failed.                                                    |                       |
| 4794    | An attempt was made to set the Directory Services Restore Mode administrator password. |                       |
| 5136    | A directory service object was modified. [1]                                           |                       |


## System

Quick-use filter string
```
26, 6038, 16, 16, 16, 39, 42, 55, 98, 104, 1001, 5805, 5829, 7023, 7034, 7036, 7045, 10001
```

| EventID | Provider Name                                      | Description                                                                                                                                 | Filter                       |
| :-----: | :------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------------------------ | ---------------------------- |
|   26    | Application Popup                                  | A pop-up message was displayed to a user or a background process                                                                            |                              |
|  6038   | LsaSrv                                             | Microsoft Windows is using a legacy (NTLMv1) authentication protocol because it could not negotiate a more secure one (NTLMv2 or Kerberos). |                              |
|   16    | Microsoft-Windows-Kerberos-Key-Distribution-Center | The KDC cannot find a suitable certificate to use for Smart Card logons                                                                     |                              |
|   16    | Microsoft-Windows-Kernel-General                   | The history was cleared.                                                                                                                    |                              |
|   16    | Microsoft-Windows-WindowsUpdateClient              | The Windows Update agent has started downloading an update.                                                                                 |                              |
|   39    | Microsoft-Windows-Kerberos-Key-Distribution-Center | The KDC encountered an error while processing a Kerberos ticket request.                                                                    |                              |
|   42    |                                                    | The system is entering sleep                                                                                                                |                              |
|   55    | Ntfs                                               | The file system structure on the disk is corrupt and unusable.                                                                              | Origin: 'File System Driver' |
|   98    | Microsoft-Windows-Ntfs                             | Volume Shadow Copy (VSS) service has started on the volume.                                                                                 |                              |
|   104   | Microsoft-Windows-Eventlog                         | Event Log was Cleared                                                                                                                       |                              |
|  1001   | Microsoft-Windows-WER-SystemErrorReporting         | System Crash                                                                                                                                |                              |
|  5805   | Netlogon                                           | A computer failed to authenticate because its account password is incorrect.                                                                |                              |
|  5829   | Netlogon                                           | A machine is using a vulnerable Netlogon secure channel connection.                                                                         |                              |
|  7023   | Service Control Manager                            | Service terminated with error                                                                                                               |                              |
|  7034   | Service Control Manager                            | Service terminated unexpectedly                                                                                                             |                              |
|  7036   | Service Control Manager                            | The [Service Name] service entered the [Status] state                                                                                       |                              |
|  7045   | Service Control Manager                            | A service was installed in the system                                                                                                       |                              |
|  10001  | Microsoft-Windows-DistributedCOM                   | A DCOM server failed to start because it is not registered.                                                                                 |                              |


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
