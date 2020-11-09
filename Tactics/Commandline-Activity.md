# Commandline Activity Use Cases

Grouped by [Detection Method](/Detection-Methods.md)

MITRE ATT&CK Framework: [Command-Line Interface (T1059)](https://attack.mitre.org/techniques/T1059), [PowerShell (T1086)](https://attack.mitre.org/techniques/T1086)

- Execution of malicious commands and scripts from command-line interfaces.


## Aggregate Count
- Process file names (without path)
- Process file names (with path)


## Blacklist Alert
- Powershell execution containing one or more of these switches common in adversary tradecraft ...
  - -nop (from -noprofile)
  - hidden
  - -noni (from -noninteractive)
  - bypass
  - -ec or -enc (from -encodedcommand)
  - invoke-webrequest or iwr
  - curl or wget
- Powershell specific cmdlet use
  - 'get-ciminstance' or 'gcim'
  - 'get-wmiobject' or 'gwmi'
- Powershell command line with particularly interesting keywords
  - 'http' or 'ftp'
- Very uncommon "LOLBAS/LOLBIN" process execution, regardless of commandline
  - hh.exe


## Whitelist Alert
- List of expected users acting as a whitelist to each of the following processes
  - runas.exe
  - mstsc.exe
  - powershell*.exe
  - cmd.exe
  - python*.exe


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
