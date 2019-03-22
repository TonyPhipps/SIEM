Sysmon

- [General Process Monitoring](#general-process-monitoring)
- [Suspicious Command-Line Interface Activity](#suspicious-command-line-interface-activity)
- [Uncommonly Used Port](#uncommonly-used-port)
- [General Network Connection Monitoring](#general-network-connection-monitoring)
- [Suspicious Loading of PowerShell DLLs](#suspicious-loading-of-powershell-dlls)
- [DLL Side-Loading Attack](#dll-side-loading-attack)


## General Process Monitoring
- Event ID 1
- Running Process with Original File Deleted from Disk
- Newly-observed executables
- Running Process without a Parent Process ID
- Long Command/PowerShell Command observed

Observe general process execution with the goal of understanding normal and detecting anomalies. Use of multiple visualizations, tables, and aggregation methods is recommended. Any confirmed malicious behavior from this use case should be considered as a foundation for a new alert.

### Requirements

### Methods  
- Rolling Whitelist
- Command length threshold of 250+ characters


## Suspicious Command-Line Interface Activity
MITRE ATT&CK Framework: [Command-Line Interface (T1059)](https://attack.mitre.org/techniques/T1059), [PowerShell (T1086)](https://attack.mitre.org/techniques/T1086)
- Event ID 1

### Methods
- Blacklist
  - -nop (from noprofile)
  - hidden
  - -noni (from noninteractive)
  - bypass
  - -enc (from encodedcommand)
  - invoke-webrequest
  - iwr
  - curl
  - wget


## Uncommonly Used Port
MITRE ATT&CK Framework: [Uncommonly Used Port (T1065)](https://attack.mitre.org/techniques/T1065)
- Event ID 3

Adversaries may conduct C2 communications over a non-standard port to bypass proxies and firewalls that have been improperly configured.

### Methods
- Rolling Whitelist


## General Network Connection Monitoring
- Event ID 3
- Newly observed Network-Active Processes
- Newly observed port

### Methods
- Rolling Whitelist
- 

## Suspicious Loading of PowerShell DLLs 
MITRE ATT&CK Framework: [Scripting (T1064)](https://attack.mitre.org/techniques/T1064), [Command-Line Interface (T1059)](https://attack.mitre.org/techniques/T1059), [PowerShell (T1086)](https://attack.mitre.org/techniques/T1086)
- Event ID 7

### Methods
- Rolling Whitelist


## DLL Side-Loading Attack
MITRE ATT&CK Framework: [DLL Side-Loading (T1073)](https://attack.mitre.org/techniques/T1073)

### Methods
- Rolling Whitelist





