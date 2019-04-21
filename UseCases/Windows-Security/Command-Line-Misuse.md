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