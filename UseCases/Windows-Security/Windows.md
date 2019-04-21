SIEM Use Cases Based on Windows Logs
SIEM Use Cases Based on Windows Logs

- [Event Logs](#event-logs)
  - [Brute Force](#brute-force)
  - [Clearing of Event Logs](#clearing-of-event-logs)
  - [Service Exploitation](#service-exploitation)
  - [General Process Monitoring](#general-process-monitoring)
  - [Suspicious Command-Line Interface Activity](#suspicious-command-line-interface-activity)
  - [Valid Account Compromise](#valid-account-compromise)
  - [Account Manipulation](#account-manipulation)
- [Other Sources](#other-sources)
  - [Installation of Root Certificates](#installation-of-root-certificates)
  - [Hidden Files and Directories](#hidden-files-and-directories)

# Event Logs
These use cases depend on Windows logs. Some will need to be enabled, but all are found in the various Event Logs.

## Brute Force
MITRE ATT&CK Framework: [Brute Force (T1110)](https://attack.mitre.org/techniques/T1110/)

An influx of failed logon attempts indicates a possible brute force attempt on an account.

##### Requirements
- Enable "Audit Logon Events > Failure" via local security or GPO
- SecPol > Local Policies > Audit Policy > Audit Logon Events > Check Failure
- Ensure event ID's 4625 and 4648 from the Windows Security log are collected/forwarded appropriately.

##### Methods
- 4624- Use a Threshold Alert to indicate when > 5 failures occurred on a single account in 1 hour.
- 4648 - Use a Threshold Alert to indicate when > 5 failures occurred from one source account to more than 1 destination account in 1 hour.

#### Responses
- Contact the account owner and determine if the issue is a configuration error.
- Block the traffic with an in-line security device.
- Block the traffic with the local firewall or other security software.

#### Bonuses
- This method may pick up failed service accounts repeatedly trying to "do their job" with a locked account. Notifying the appropriate admin is a good idea here.


## Clearing of Event Logs
MITRE ATT&CK Framework: [Indicator Removal on Host (T1070)](https://attack.mitre.org/techniques/T1070/)

- Clearing event logs is a way for adversaries to clear their tracks. With proper event collection, this should occure seldom, making it a relatively easy detection method. Event logs set to "fill" rather than roll or that allow a large enough rolling file size that it causes system administrators to want to clear the logs should be avoided.

#### Requirements
- Ensure event ID 1102 from the Windows Security log is collected/forwarded appropriately.

#### Methods
- Simply alert on every occurrence (Blacklist Alert).

#### Responses
- Contact the source account owner and determine if the activity was authorized.
- Investigate the last 8 hours of centrally-collected logs from the affected system to reveal any malicious activity.
- Contain the system with a security tool that blocks traffic, then proceed with forensics.
- Contain the system by disconnecting all network devices, then proceed with forensics.


## Service Exploitation
MITRE ATT&CK Framework: [Modify Existing Service (T1031)](https://attack.mitre.org/techniques/T1031), [New Service (T1050)](https://attack.mitre.org/techniques/T1050), [Service Execution (T1035)](https://attack.mitre.org/techniques/T1035/)

Service creation can be used by an adversary to achieve persistence.

#### Requirements
- Ensure event ID 4697 from the Windows Security log is collected/forwarded appropriately.

#### Methods
- Build a "Rolling Whitelist" of the "Service File Name" and "Service Account" fields. Review the list regularly, and build a Rolling Whitelist Alert if the frequency of new entries is low enough.
- ...OR... Manually build a large filter of expected services, and alert on anything not listed (Whitelist Alert).

#### Responses
- Consider the file path of the "Service File." Is it resting in a strange location, like user writeable folders or shares?
- Determine if the affected system should logically have this type of service created.
- Contact the source account owner and determine if the activity was authorized.
- Obtain a copy of the "Service File" and analyze with a malware detonation sandbox.
- Conduct static analysis on the "Service File".


## General Process Monitoring
Observe general process execution with the goal of understanding normal and detecting anomalies. Use of multiple visualizations, tables, and aggregation methods is recommended. Any confirmed malicious behavior from this use case should be considered as a foundation for a new alert.

- Running Process with Original File Deleted from Disk
- Newly-observed executables

#### Requirements
- Enable Process Creation (Event ID 4688)
  - Secpol.exe
  - Advanced Audit Policy Configuration > System Audit Policies > Detailed Traking > Audit Process Creation: Enabled, Success

- Include Command Line in 4688 Events
  - gpedit.msc
  - Computer Configuration > Administrative Templates > System > Audit Process Creation > Include command line in process creation events: Enabled

#### Methods
- Rolling Whitelist Alert

#### Responses
- Acquire a copy of the suspcious file for further analysis.

## Suspicious Command-Line Interface Activity
MITRE ATT&CK Framework: [Command-Line Interface (T1059)](https://attack.mitre.org/techniques/T1059), [PowerShell (T1086)](https://attack.mitre.org/techniques/T1086)
- Non-default PowerShell Module Use (4103)

Execution of malicious commands and scripts from command-line interfaces.

#### Requirements
-  Enable ScriptBlock Logging
(Event ID 4104)
  - Create they key path: HKLM\SOFTWARE\Wow6432Node\Policies\Microsoft\Windows\PowerShell\ScriptBlockLogging
    - Create new DWORD
    - EnableScriptBlockLogging = 1
    - EnableScriptBlockInvocationLogging = 1
  - Event ID 4104 will populate the Microsoft-Windows-PowerShell/Operational log

- Enable Module Logging
(Event ID 4103)
  - Create the key path: HKLM\SOFTWARE\Wow6432Node\Policies\Microsoft\Windows\PowerShell\ModuleLogging
    - Create new DWORD EnableModuleLogging = 1
  - Create the key path: HKLM\SOFTWARE\Wow6432Node\Policies\Microsoft\Windows\PowerShell\ModuleLogging\ModuleNames
      - Create new STRING VALUE \* = * (an asterisk for the value and data)
  - Event ID 4103 will populate the Microsoft-Windows-PowerShell/Operational log

- Transcription
  - Create the key path: HKLM\SOFTWARE\Wow6432Node\Policies\Microsoft\Windows\PowerShell\Transcription\
    - Create new DWORD EnableInvocationHeader = 1
    - Create new DWORD EnableTranscripting = 1
    - Create new STRING VALUE OutputDirectory = <path_to_directory>
  - Logs will be stored in .txt files in teh specified directory, using the format `..\YYYYMMDD\PowerShell_transcript.PCNAME.RANDOM.YYYYMMDDHHMMSS.txt`

#### Methods
- Whitelist Alert
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
#### Responses

## Valid Account Compromise
- Anomalous User Interactive Logon
- Service Account Activity Originating from Unauthorized System
- User Logon More than an Hour Outside Expected Times
- User Logged In to Multiple Systems Interactively
- Account Use After Employee End Date

#### Requirements
- Event logs attributable to user accounts (4624, 4625, 4688, etc.)
  - Datetime stamps
  - Source System
  - Destination System

#### Methods
- Rolling Whitelist Alert
- Threshold Alert
- Blacklist Alert
- Whitelist Alert

#### Responses

## Account Manipulation
MITRE ATT&CK Framework: [Account Manipulation (T1098)](https://attack.mitre.org/techniques/T1098)
- Anomalous Member Added to Admin Group (4728, 4732, 4756)

#### Requirements
#### Methods
- Blacklist Alert
#### Responses

#### Methods
- Whitelist Alert


# Other Sources

## Installation of Root Certificates
MITRE ATT&CK Framework: [Install Root Certificate (T1130)](https://attack.mitre.org/techniques/T1130)
  
#### Requirements
- No viable event ID contains information on this action. Instead, the data must be collected periodically with a script.

#### Methods
- Blacklist Alert

#### Responses


## Hidden Files and Directories 
MITRE ATT&CK Framework: [Hidden Files and Directories (T1158)](https://attack.mitre.org/techniques/T1158)

#### Requirements
- No viable event ID contains information on this action. Instead, the data must be collected periodically with a script.

#### Methods
#### Responses
