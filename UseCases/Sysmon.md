Sysmon

- [Uncommonly Used Port](#Uncommonly-Used-Port)
- [General Network Connection Monitoring](#General-Network-Connection-Monitoring)
- [Suspicious Loading of PowerShell DLLs](#Suspicious-Loading-of-PowerShell-DLLs)
- [DLL Side-Loading Attack](#DLL-Side-Loading-Attack)


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





