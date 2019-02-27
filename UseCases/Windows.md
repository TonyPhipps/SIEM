## Logs

| Description                                                                        | [Method](/Detection-Methods.md) | Notes |
| ---------------------------------------------------------------------------------- | ------------------------------- | ----- |
| Multiple Failed Logons in a Short Time Span (Brute Force Attempts) (Event ID 4625) | Threshold Alert                 |       |
| Clearing of Event Logs (1102)                                                      | Blacklist Alert                 |       |
| Newly Observed Service (7045)                                                      | Rolling Whitelist Alert         |       |
| Newly Observed Process (4688)                                                      | Rolling Whitelist Alert         |       |
| Non-default PowerShell Module Use (4103)                                           | Whitelist Alert                 |       |
| Anomalous Service Account Interactive Logon (Event ID 4624, Types 2, 10)           | Rolling Alert                   |       |
| User Account Interactive Logon on Multiple Systems (Event ID 4624, Types 2, 10)    | Threshold Alert                 |       |
| User Account Activity Outside 1hr of Expected Work Hours (Event ID 4624)           | Blacklist Alert                 |       |
| Use of Built-in Administator Account (Event ID 4624)                               | Blacklist Alert                 |       |
| Anomalous Member Added to Admin Group (4728, 4732, 4756)                           | Blacklist Alert                 |       |
| Newly Observed Software via Microsoft Windows Installer (1040)                     | Rolling Whitelist Alert         |       |
| User Account Activity Before/After Employee Start/End Date                         | Blacklist Alert                 |       |
| Newly Observed USB Devices                                                         | Rolling Whitelist Alert         |       |




## Data Collection (not in default Microsoft Logs)

| Description                                                  | [Method](/Detection-Methods.md) | Notes |
| ------------------------------------------------------------ | ------------------------------- | ----- |
| Trusted Certificate Authorities on endpoints                 | Aggregate Count                 |       |
| Running Process without a Parent Process ID                  | Blacklist Alert                 |       |
| Running Process With Original File on Disk Deleted           |                                 |       |
| System/Hidden Attributes Enabled on Unexpected Files/Folders |                                 |       |
