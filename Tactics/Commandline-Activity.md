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
- Command contains very uncommon "LOLBAS/LOLBIN" commands
  - hh.exe


## Whitelist Alert


## Levenshtein Score Alert


## Rolling Whitelist Alert
- Newly observed Source Process=cmd.exe, Child Process
- Newly observed Source Process=powershell.exe, Child Process
- Newly observed Source Process=powershell_ise.exe, Child Process


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
- Endpoint Detection and Response product


# Possible False Positives
- Many commandline activities performed by authorized privileged users may false-positive on this content.
