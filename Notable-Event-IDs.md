Notable Event Log EventID's for Incident Response, Threat Hunting, Forensics, etc

### Security Events

| EventID | Description                                                                                                                                              |
| ------- | -------------------------------------------------------------------------------------------------------------------------------------------------------- |
| 1100    | The event logging service has shut down.                                                                                                                 |
| 1102    | The audit log was cleared.                                                                                                                               |
| 4618    | A monitored security event pattern has occurred.                                                                                                         |
| 4624    | An account was successfully logged on.                                                                                                                   |
| 4625    | An account failed to log on.                                                                                                                             |
| 4634    | An account was logged off.                                                                                                                               |
| 4648    | A logon was attempted using explicit credentials.                                                                                                        |
| 4649    | A replay attack was detected.                                                                                                                            |
| 4657    | A registry value was modified.                                                                                                                           |
| 4672    | Special privileges assigned to new logon.                                                                                                                |
| 4688    | A new process has been created.                                                                                                                          |
| 4689    | A process has exited.                                                                                                                                    |
| 4692    | Backup of data protection master key was attempted.                                                                                                      |
| 4693    | Recovery of data protection master key was attempted.                                                                                                    |
| 4697    | A service was installed in the system.                                                                                                                   |
| 4698    | A scheduled task was created.                                                                                                                            |
| 4699    | A scheduled task was deleted.                                                                                                                            |
| 4700    | A scheduled task was enabled.                                                                                                                            |
| 4701    | A scheduled task was disabled.                                                                                                                           |
| 4702    | A scheduled task was updated.                                                                                                                            |
| 4704    | A user right was assigned.                                                                                                                               |
| 4706    | A new trust was created to a domain.                                                                                                                     |
| 4715    | The audit policy (SACL) on an object was changed.                                                                                                        |
| 4716    | Trusted domain information was modified.                                                                                                                 |
| 4717    | System security access was granted to an account.                                                                                                        |
| 4719    | System audit policy was changed.                                                                                                                         |
| 4720    | A user account was created.                                                                                                                              |
| 4724    | An attempt was made to reset an account's password.                                                                                                      |
| 4727    | A security-enabled global group was created.                                                                                                             |
| 4728    | A member was added to a security-enabled global group.                                                                                                   |
| 4731    | A security-enabled local group was created.                                                                                                              |
| 4732    | A member was added to a security-enabled local group.                                                                                                    |
| 4737    | A security-enabled global group was changed.                                                                                                             |
| 4738    | A user account was changed.                                                                                                                              |
| 4739    | Domain Policy was changed.                                                                                                                               |
| 4740    | A user account was locked out.                                                                                                                           |
| 4754    | A security-enabled universal group was created.                                                                                                          |
| 4755    | A security-enabled universal group was changed.                                                                                                          |
| 4756    | A member was added to a security-enabled universal group.                                                                                                |
| 4764    | A group’s type was changed.                                                                                                                             |
| 4767    | A user account was unlocked.                                                                                                                             |
| 4776    | The domain controller attempted to validate the credentials for an account.                                                                              |
| 4778    | A session was reconnected to a Window Station.                                                                                                           |
| 4779    | A session was disconnected from a Window Station.                                                                                                        |
| 4780    | The ACL was set on accounts which are members of administrators groups.                                                                                  |
| 4794    | An attempt was made to set the Directory Services Restore Mode administrator password.                                                                   |
| 4816    | RPC detected an integrity violation while decrypting an incoming message.                                                                                |
| 4865    | A trusted forest information entry was added.                                                                                                            |
| 4866    | A trusted forest information entry was removed.                                                                                                          |
| 4867    | A trusted forest information entry was added.                                                                                                            |
| 4882    | The security permissions for Certificate Services changed.                                                                                               |
| 4885    | The audit filter for Certificate Services changed.                                                                                                       |
| 4890    | The certificate manager settings for Certificate Services changed.                                                                                       |
| 4906    | The CrashOnAuditFail value has changed.                                                                                                                  |
| 4907    | Auditing settings on object changed                                                                                                                      |
| 4908    | Special Groups Logon table modified                                                                                                                      |
| 4912    | Per-User Audit Policy changed                                                                                                                            |
| 4946    | Windows Firewall exception list change                                                                                                                   |
| 4950    | A Windows Firewall setting has changed (local only)                                                                                                      |
| 4951    | A rule has been ignored because its major version number was not recognized by Windows Firewall.                                                         |
| 4952    | Parts of a rule have been ignored because its minor version number was not recognized by Windows Firewall. The other parts of the rule will be enforced. |
| 4953    | Windows Firewall ignored a rule because it could not be parsed.                                                                                          |
| 4957    | Windows Firewall did not apply the following rule.                                                                                                       |
| 4958    | Windows Firewall did not apply the following rule because the rule referred to items not configured on this computer.                                    |
| 4964    | Special groups assigned to a new logon                                                                                                                   |
| 5027    | Windows Firewall Service unable to retrieve the security policy from the local storage service will continue enforcing the current policy                |
| 5028    | Windows Firewall Service unable to parse the new security policy service will continue with currently enforced policy                                    |
| 5029    | Windows Firewall Service failed to initialize the driver service will continue to enforce the current policy                                             |
| 5030    | Windows Firewall Service failed to start                                                                                                                 |
| 5031    | The Windows Firewall Service blocked an application from accepting incoming connections on the network.                                                  |
| 5034    | The Windows Firewall Driver was stopped                                                                                                                  |
| 5035    | Windows Firewall Driver failed to start                                                                                                                  |
| 5037    | Windows Firewall Driver detected critical runtime error Terminating                                                                                      |
| 5038    | Code integrity determined that the image hash of a file is not valid                                                                                     |
| 5140    | Network share object accessed                                                                                                                            |
| 5142    | Network share object added                                                                                                                               |
| 5143    | Network share object changed                                                                                                                             |
| 5144    | Network share object deleted                                                                                                                             |
| 5158    | The Windows Filtering Platform has permitted a bind to a local port.                                                                                     |
| 5376    | Credential Manager credentials were backed up                                                                                                            |
| 6273    | Network Policy Server denied access to a user                                                                                                            |
| 6276    | Network Policy Server quarantined a user                                                                                                                 |
| 6280    | Network Policy Server unlocked the user account                                                                                                          |
| 6416    | A new external device was recognized by the system                                                                                                       |

### Microsoft-Windows-Sysmon/Operational

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
|   255   | Error                                                 |


### System Events

| EventID | Description                                                                                     |
| :-----: | :---------------------------------------------------------------------------------------------- |
|   104   | Event Log was Cleared                                                                           |
|  1001   | System Crash                                                                                    |
|  7022   | Service hung on starting                                                                        |
|  7023   | Service terminated with error                                                                   |
|  7024   | Service terminated with the following service-specific error                                    |
|  7026   | The boot-start or system-start driver(s) [did not/failed to] load                               |
|  7030   | Service Creation Errors                                                                         |
|  7031   | Service terminated unexpectedly                                                                 |
|  7032   | Service tried to take a corrective action (1) after the unexpected termination of the % service |
|  7034   | service terminated unexpectedly                                                                 |
|  7035   | The [Service Name] service was successfully sent a [start/stop] control                         |
|  7036   | The [Service Name] service entered the [Status] state                                           |
|  7040   | The service state has changed                                                                   |
|  7045   | A service was installed in the system                                                           |


### Application

| EventID | Description       |
| :-----: | :---------------- |
|  1001   | Application Crash |
|  1002   | Application Hang  |
|  1003   | Application Error |


### Microsoft-Windows-PrintService/Operational Events

| EventID | Description       |
| :-----: | :---------------- |
|   307   | Printing Document |


### Microsoft-Windows-Kernel-PnP/Device Configuration

| EventID | Description                   |
| :-----: | :---------------------------- |
|   400   | New Mass Storage Installation |
|   410   | New Mass Storage Installation |


### Microsoft-Windows-TaskScheduler/Operational

| EventID | Description    |
| :-----: | :------------- |
|   106   | Task Scheduled |
|   140   | Task Updated   |
|   141   | Task Removed   |
|   200   | Task Executed  |
|   201   | Task Completed |


### Microsoft-Windows-Powershell/Operational

| EventID | Description                 |
| :-----: | :-------------------------- |
|  4103   | Pipeline executed           |
|  4104   | Scriptblock executed        |
|  40961  | PowerShell Console Starting |
|  40962  | PowerShell Console Started  |
|  24577  | Powershell script ran       |


### Microsoft-Windows-PowerShell/Operational

|  EventID   | Description                     |
| :--------: | ------------------------------- |
| 8193, 8194 | Session created                 |
|    8197    | Session Closed                  |
|   53504    | Records the authenticating user |


### Windows PowerShell

| EventID | Description                  |
| :-----: | ---------------------------- |
|   400   | Engine started               |
|   403   | Engine stopped               |
|   800   | Includes partial script code |


### Microsoft-Windows-PowerShell/Analytic

| EventID | Description                      |
| :-----: | -------------------------------- |
|  32850  | Creating a server remote session |
|  32867  | PowerShell input object          |
|  32868  | PowerShell output object         |


### Microsoft-Windows-Windows Defender/Operational

| EventID | Description                                                                                                                                                                      |
| :-----: | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
|  1000   | An antimalware scan started.                                                                                                                                                     |
|  1001   | An antimalware scan finished.                                                                                                                                                    |
|  1002   | An antimalware scan was stopped before it finished.                                                                                                                              |
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
|  2001   |                                                                                                                                                                                  |


### Microsoft-Windows-Windows Firewall With Advanced Security/Firewall

| EventID | Description                               |
| :-----: | ----------------------------------------- |
|  2002   | Windows Defender Firewall setting changed |
|  2004   | Firewall Rule Added                       |
|  2005   | Firewall Rule Changed                     |
|  2006   | Firewall Rule Deleted                     |
|  2033   | Firewall Rule Deleted                     |
|  2009   | Firewall Failed to load group policy      |


### Microsoft-Windows-RemoteDesktopServices-RdpCoreTS/Operational

| EventID | Description                                 |
| :-----: | ------------------------------------------- |
|   131   | Accepted new TCP connection                 |
|   140   | Connection failed; bad username or password |


### Microsoft-Windows-TerminalServices-RDPClient/Operational

| EventID | Description                        |
| :-----: | ---------------------------------- |
|  1024   | RDP connection attempt             |
|  1025   | RDP connection made                |
|  1102   | multi-transport connection attempt |
|  1103   | multi-transport connection made    |


### Microsoft-Windows-TerminalServices-RemoteConnectionManager/Operational

| EventID | Description                   |
| :-----: | ----------------------------- |
|  1149   | User authentication succeeded |


### Microsoft-Windows-TerminalServices-LocalSessionManager/Operational

| EventID | Description                                        |
| :-----: | -------------------------------------------------- |
|   21    | Session logon succeeded                            |
|   22    | Shell start notification received                  |
|   23    | Session logoff succeeded                           |
|   24    | Session has been disconnected                      |
|   25    | Session reconnection succeeded                     |
|   39    | Session <X> has been disconnected by session <Y>   |
|   40    | Session <X> has been disconnected, reason code <Z> |


### Microsoft-Windows-SmbClient/Security

| EventID | Description                 |
| :-----: | --------------------------- |
|  31001  | Failed login to destination |


### Microsoft-Windows-WMI-Activity/Operational

| EventID | Description                              |
| :-----: | ---------------------------------------- |
|  5857   | Provider started                         |
|  5858   | Provider error                           |
|  5860   | Registration of Temporary Event Consumer |
|  5861   | Registration of Permanent Event Consumer |


### Microsoft-Windows-WinRM/Operational

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


### Microsoft-Windows-AppLocker/MSI and Script

| EventID | Description        |
| :-----: | ------------------ |
|  8005   | Allowed to run     |
|  8006   | Would have blocked |

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


* [DonatStudios.com Markdown table formatter](https://donatstudios.com/CsvToMarkdownTable)