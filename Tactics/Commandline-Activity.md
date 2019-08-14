# Use Cases by Detection Method

Grouped by [Detection Method](/Detection-Methods.md)

MITRE ATT&CK Framework: [Command-Line Interface (T1059)](https://attack.mitre.org/techniques/T1059), [PowerShell (T1086)](https://attack.mitre.org/techniques/T1086)

- Execution of malicious commands and scripts from command-line interfaces.

## Aggregate Count


## Blacklist Alert
- Command contains one or more of these PowerShell keywords...
  - -nop (from noprofile)
  - hidden
  - -noni (from noninteractive)
  - bypass
  - -enc (from encodedcommand)
  - invoke-webrequest
  - iwr
  - curl
  - wget

## Whitelist Alert


## Levenshtein Score Alert


## Rolling Whitelist Alert
- Newly observed child processes of cmd.exe, powershell.exe, or powershell_ise.exe


## Shannon Entropy Score Alert


## Threshold Alert


# Log Source Examples
- Windows Security Event ID 4104 (Enable ScriptBlock Logging)
- Windows Security Event ID 4103 (Enable Module Logging)
- Windows PowerShell Transcription Log (File)
  - Create the key path: HKLM\SOFTWARE\Wow6432Node\Policies\Microsoft\Windows\PowerShell\Transcription\
  - Create new DWORD EnableInvocationHeader = 1
  - Create new DWORD EnableTranscripting = 1
  - Create new STRING VALUE OutputDirectory = <path_to_directory>
  - Logs will be stored in .txt files in teh specified directory, using the format `..\YYYYMMDD\PowerShell_transcript.PCNAME.RANDOM.YYYYMMDDHHMMSS.txt`)


# Response Options
- Contact the source account owner and determine if the activity was authorized.
- Investigate the last 8 hours of centrally-collected logs from the affected system to reveal any malicious activity.
- Contain the system with a security tool that blocks traffic, then proceed with forensics.
- Contain the system by disconnecting all network devices, then proceed with forensics.


## Possible False Positives
- Many commandline activities performed by authorized privileged users may false-positive on this content.