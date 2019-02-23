## Logs

| Description                                              | [Method](/Detection-Methods.md) | Notes |
| -------------------------------------------------------- | ------------------------------------------------------- | ----- |
| Brute Force Attempts (4625)                              | Threshold Alert                                         |       |
| Clearing of Event Logs (1102)                            | Blacklist Alert                                         |       |
| New Service Creation (7045)                              | Rolling Whitelist Alert                                 |       |
| Newly observed executable (4688)                         | Rolling Whitelist Alert                                 |       |
| Non-default PowerShell module use (4103)                 | Whitelist Alert                                         |       |
| Anomalous User Interactive Logon (4624, IDs 2,10)        | Rolling Alert                                           |       |
| Anomalous Member Added to Admin Group (4728, 4732, 4756) | Blacklist Alert                                         |       |
| Anomalous Install via Microsoft Windows Installer (1040) | Rolling Whitelist Alert                                 |       |


## Data Collection (not in default Microsoft Logs)

| Description                                                  | [Method](/Detection-Methods.md) | Notes |
| ------------------------------------------------------------ | ------------------------------------------------------- | ----- |
| Trusted Certificate Authorities on endpoints                 | Aggregate Count                                         |       |
| Running Process without a Parent Process ID                  | Blacklist Alert                                         |       |
| Running Process With Original File on Disk Deleted           |                                                         |       |
| System/Hidden Attributes Enabled on Unexpected Files/Folders |                                                         |       |
