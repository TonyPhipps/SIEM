Notable Event IDs to record that will help in forensics, if not exclicity in detection. Exlcudes those already included in existing Sigma rules.
- Use in conjunction with [Notable-Event-IDs-Sigma.md]([Notable-Event-IDs-Sigma.md)
- Use in conjunction with [Notable-Event-IDs-Risk.md](Notable-Event-IDs-Risk.md)

Table of Contents

- [Security](#security)
- [Security (Domain Controller Specific)](#security-domain-controller-specific)
- [System](#system)
- [Microsoft-Windows-DNSServer/Audit](#microsoft-windows-dnsserveraudit)
- [Microsoft-Windows-Forwarding/Operational](#microsoft-windows-forwardingoperational)
- [Microsoft-Windows-PrintService/Operational](#microsoft-windows-printserviceoperational)
- [Microsoft-Windows-PowerShell-DesiredStateConfiguration-FileDownloadManager/Operational](#microsoft-windows-powershell-desiredstateconfiguration-filedownloadmanageroperational)
- [Microsoft-Windows-PowerShell/Analytic](#microsoft-windows-powershellanalytic)
- [Microsoft-Windows-Powershell/Operational](#microsoft-windows-powershelloperational)
- [Microsoft-Windows-Shell-Core/Operational](#microsoft-windows-shell-coreoperational)
- [Microsoft-Windows-SmartCard-Audit/Authentication](#microsoft-windows-smartcard-auditauthentication)
- [Microsoft-Windows-SmbClient/Security](#microsoft-windows-smbclientsecurity)
- [Microsoft-Windows-Sysmon/Operational](#microsoft-windows-sysmonoperational)
- [Microsoft-Windows-TaskScheduler/Operational](#microsoft-windows-taskscheduleroperational)
- [Microsoft-Windows-TerminalServices-RemoteConnectionManager/Operational](#microsoft-windows-terminalservices-remoteconnectionmanageroperational)
- [Microsoft-Windows-TerminalServices-LocalSessionManager/Operational](#microsoft-windows-terminalservices-localsessionmanageroperational)
- [Microsoft-Windows-TPM-WMI](#microsoft-windows-tpm-wmi)
- [Microsoft-Windows-UniversalTelemetryClient/Operational](#microsoft-windows-universaltelemetryclientoperational)
- [Microsoft-Windows-VHDMP-Operational](#microsoft-windows-vhdmp-operational)
- [Microsoft-Windows-Winlogon/Operational](#microsoft-windows-winlogonoperational)
- [Microsoft-Windows-WLAN-AutoConfig/Operational](#microsoft-windows-wlan-autoconfigoperational)
- [Microsoft-Windows-WMI-Activity/Operational](#microsoft-windows-wmi-activityoperational)
- [Microsoft-Windows-WinRM/Operational](#microsoft-windows-winrmoperational)
- [DNS Server](#dns-server)
- [Windows PowerShell](#windows-powershell)


## Security

| EventID | Description                                                                                                                                              | Filter |
| :-----: | -------------------------------------------------------------------------------------------------------------------------------------------------------- | ------ |
|  4647   | User initiated logoff.                                                                                                                                   |        |
|  4670   | Permissions on an object were changed.                                                                                                                   |        |
|  4696   | A primary token was assigned to process                                                                                                                  |        |
|  4700   | A scheduled task was enabled.                                                                                                                            |        |
|  4703   | A user right was adjusted.                                                                                                                               |        |
|  4705   | A user right was removed                                                                                                                                 |        |
|  4715   | The audit policy (SACL) on an object was changed.                                                                                                        |        |
|  4778   | A session was reconnected to a Window Station.                                                                                                           |        |
|  4779   | A session was disconnected from a Window Station.                                                                                                        |        |
|  4780   | The ACL was set on accounts which are members of administrators groups.                                                                                  |        |
|  4793   | The Password Policy Checking API was called.                                                                                                             |        |
|  4801   | The workstation was unlocked.                                                                                                                            |        |
|  4802   | The screen saver was invoked                                                                                                                             |        |
|  4803   | The screen saver was dismissed.                                                                                                                          |        |
|  4817   | Auditing settings on object were changed.                                                                                                                |        |
|  4885   | The audit filter for Certificate Services changed.                                                                                                       |
|  4890   | The certificate manager settings for Certificate Services changed.                                                                                       |
|  4906   | The CrashOnAuditFail value has changed.                                                                                                                  |
|  4907   | Auditing settings on object changed                                                                                                                      |
|  4908   | Special Groups Logon table modified                                                                                                                      |
|  4912   | Per-User Audit Policy changed                                                                                                                            |
|  4951   | A rule has been ignored because its major version number was not recognized by Windows Firewall.                                                         |
|  4952   | Parts of a rule have been ignored because its minor version number was not recognized by Windows Firewall. The other parts of the rule will be enforced. |
|  4953   | Windows Firewall ignored a rule because it could not be parsed.                                                                                          |
|  4956   | Windows Firewall has changed the active profile.                                                                                                         |
|  4957   | Windows Firewall did not apply the following rule.                                                                                                       |
|  4958   | Windows Firewall did not apply the following rule because the rule referred to items not configured on this computer.                                    |
|  4964   | Special groups assigned to a new logon                                                                                                                   |
|  5027   | Windows Firewall Service unable to retrieve the security policy from the local storage service will continue enforcing the current policy                |
|  5028   | Windows Firewall Service unable to parse the new security policy service will continue with currently enforced policy                                    |
|  5029   | Windows Firewall Service failed to initialize the driver service will continue to enforce the current policy                                             |
|  5146   | The Windows Filtering Platform has blocked a packet.                                                                                                     |
|  5158   | The Windows Filtering Platform has permitted a bind to a local port.                                                                                     |
|  6145   | One or more errors occurred while processing security policy in the group policy objects.                                                                |
|  6272   | Network Policy Server granted access to a user                                                                                                           |
|  6274   | Network Policy Server discarded the request for a user                                                                                                   |
|  6275   | Network Policy Server discarded the accounting request for a user                                                                                        |


## Security (Domain Controller Specific)

| EventID | Description                                                                                                         | Filter |
| :-----: | ------------------------------------------------------------------------------------------------------------------- | ------ |
|  4770   | A Kerberos service ticket was renewed.                                                                              |        |
|  4820   | A Kerberos Ticket-granting-ticket (TGT) was denied because the device does not meet the access control restrictions |        |


## System

| EventID | Description                                               | Filter              |
| :-----: | --------------------------------------------------------- | ------------------- |
|   12    | The operating system started at system time xxxx          |                     |
|   13    | The operating system is shutting down at system time xxxx |                     |
|   27    | Network link is disconnected                              | !source=Kernel-Boot |
|   33    | Network link has been established                         | !source=Kernel-Boot |
|   105   | Power source change                                       |                     |
|   107   | The system has resumed from sleep                         |                     |


## Microsoft-Windows-DNSServer/Audit

| EventID | Description                                                           | Filter |
| :-----: | --------------------------------------------------------------------- | ------ |
|   541   | The setting serverlevelplugindll on scope . has been set to $dll_path |        |


## Microsoft-Windows-Forwarding/Operational

(All)


## Microsoft-Windows-PrintService/Operational

| EventID | Description | Filter  |
| :-----: | :---------- | ------- |
|   307   | Print Job   | Level 4 |


## Microsoft-Windows-PowerShell-DesiredStateConfiguration-FileDownloadManager/Operational

(All)


## Microsoft-Windows-PowerShell/Analytic

| EventID | Description                      |
| :-----: | -------------------------------- |
|  32867  | PowerShell input object          |
|  32868  | PowerShell output object         |


## Microsoft-Windows-Powershell/Operational

|  EventID   | Description                     | Filter |
| :--------: | ------------------------------- | ------ |
|   40961    | PowerShell Console Starting     |
|   40962    | PowerShell Console Started      |
|   24577    | Powershell script ran           |
| 8193, 8194 | Session created                 |
|    8197    | Session Closed                  |
|   53504    | Records the authenticating user |


## Microsoft-Windows-Shell-Core/Operational

| EventID | Description                                                                                                                                                                                                     | Filter |
| :-----: | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------ |
|  9707   | Detects the start of the execution of a process from both the "Software\Microsoft\Windows\CurrentVersion\Run" and "Software\Microsoft\Windows\CurrentVersion\RunOnce" registry keys with the full command line. |
|  9708   | Detects when the aforementioned process finishes execution with the corresponding PID (Useful when the process is still running on the system).                                                                 |


## Microsoft-Windows-SmartCard-Audit/Authentication
(All)


## Microsoft-Windows-SmbClient/Security

| EventID | Description                 |
| :-----: | --------------------------- |
|  31001  | Failed login to destination |


## Microsoft-Windows-Sysmon/Operational

| EventID | Description                            |
| :-----: | -------------------------------------- |
|   15    | FileCreateStreamHash                   |
|   18    | PipeEvent (Pipe Connected)             |


## Microsoft-Windows-TaskScheduler/Operational

| EventID | Description    |
| :-----: | :------------- |
|   200   | Task Executed  |
|   201   | Task Completed |


## Microsoft-Windows-TerminalServices-RemoteConnectionManager/Operational

| EventID | Description                   |
| :-----: | ----------------------------- |
|  1149   | User authentication succeeded |


## Microsoft-Windows-TerminalServices-LocalSessionManager/Operational

| EventID | Description                                        |
| :-----: | -------------------------------------------------- |
|   22    | Shell start notification received                  |
|   23    | Session logoff succeeded                           |
|   24    | Session has been disconnected                      |
|   25    | Session reconnection succeeded                     |
|   39    | Session <X> has been disconnected by session <Y>   |
|   40    | Session <X> has been disconnected, reason code <Z> |


## Microsoft-Windows-TPM-WMI

| EventID | Description                                                                                             |
| :-----: | ------------------------------------------------------------------------------------------------------- |
|   513   | TPM Owner Authorization information was backed up successfully to Active Directory Domain Services.     |
|   514   | Failed to backup TPM Owner Authorization information to Active Directory Domain Services. Errorcode: %1 |


## Microsoft-Windows-UniversalTelemetryClient/Operational

| EventID | Description                                         |
| :-----: | --------------------------------------------------- |
|   55    | Indicates whether the computer has Internet or Not. |


## Microsoft-Windows-VHDMP-Operational

| EventID | Description                                                                    |
| :-----: | ------------------------------------------------------------------------------ |
|    1    | Triggers when you mount a VHD (Virtual Hard Disk).                             |
|    2    | Triggers when you unmount a VHD (Virtual Hard Disk).                           |
|   12    | Contains information about the type, path, handle count of the mounted device. |


## Microsoft-Windows-Winlogon/Operational

| EventID | Description                                                                                                                                                  |
| :-----: | ------------------------------------------------------------------------------------------------------------------------------------------------------------ |
|   811   | Triggers when a user logon to a machine. You can check for the "<SessionEnv>" subscriber notification in EID 811 to indicates that a user logged on via RDP. |


## Microsoft-Windows-WLAN-AutoConfig/Operational

| EventID | Description                                                                    |
| :-----: | ------------------------------------------------------------------------------ |
|  8001   | WLAN AutoConfig service has successfully connected to a wireless network.      |
|  8003   | WLAN AutoConfig service has successfully disconnected from a wireless network. |


## Microsoft-Windows-WMI-Activity/Operational

| EventID | Description                              |
| :-----: | ---------------------------------------- |
|  5857   | Provider started                         |
|  5858   | Provider error                           |


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


## DNS Server

| EventID | Description                           | Filter |
| :-----: | ------------------------------------- | ------ |
|   770   | DNS Server plugin DLL has been loaded |


## Windows PowerShell

| EventID | Description                  |
| :-----: | ---------------------------- |
|   400   | Engine started               |
|   403   | Engine stopped               |
|   800   | Includes partial script code |

