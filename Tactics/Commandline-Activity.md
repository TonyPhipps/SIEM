# Commandline Activity Use Cases

Grouped by [Detection Method](/Detection-Methods.md)

MITRE ATT&CK Framework: [Command-Line Interface (T1059)](https://attack.mitre.org/techniques/T1059), [PowerShell (T1086)](https://attack.mitre.org/techniques/T1086), [Inhibit System Recovery](https://attack.mitre.org/versions/v12/techniques/T1490/)

- Execution of malicious commands and scripts from command-line interfaces.


## Aggregate Count
- Process file names (without path)
- Process file names (with path)
- Rundll32.exe commandlines


## Match Alert
- PowerShell.exe or powershell_ise.exe with one of the following in the command line (or straight commandline use)
  - '-nop' or '/nop' (from -noprofile)
  - 'hidden'
  - '-noni' or '/noni' (from -noninteractive)
  - '-ep' or '/ep' (from -execution-policy)
  - 'bypass'
  - '-e or /e (from -encodedcommand)
  - 'invoke-webrequest' or 'iwr' or 'curl' or 'wget'
  - 'invoke-restmethod' or 'irm'
  - 'invoke-expression' or 'iex'
  - 'invoke-wmimethod' or 'invoke-cimmethod'
  - 'bitstransfer'
  - 'downloadstring'
  - 'downloadfile'
  - 'winhttprequest'
  - 'http'
  - 'ftp'
  - 'get-ciminstance' or 'gcim'
  - 'get-wmiobject' or 'gwmi'
  - 'ToBase64String'
  - 'FromBase64String'
  - set-wmiinstance
  - createInstance

- Powershell third-party functions tied to malicious activity
  - nishang
    - Enable-DuplicateToken
    - Get-LsaSecret

- sc.exe with 'create'

- schtasks.exe with 'create'

- wmic.exe where commandline contains
  - process call create
  - useraccount list full
  - group list full
  - netuse list full
  - qfe get
  - startup get
  - service get

- Suspicious commandline parameters of system executables
  - CMSTP.exe with commandline containing '/ni' or '-ni' or '/s' or '-s' (T1191)
  - MpCmdRun.exe with commandline containing 'Add-MpPreference' OR 'RemoveDefinitions' OR 'DisableIOAVProtection' (T1089)
  - nltestrk.exe with command line containing 'domain_trusts (T1482)
  - Mavinject.exe with command line containing 'INJECTRUNNING'(T1218)
  - fltMC.exe with commandline contains 'unload' OR 'detach' (T1054)
  - InstallUtil.exe with commandline contains 'logfile=' OR 'LogToConsole=false' OR '/u' or '-u' (T1118)
  - 'certutil.exe' with any of the following in the command line
    - urlcach
    - url
    - ping
    - http
    - ftp
    - -decode

- mofcomp.exe with '-N' and '\\' (WMI with remote host namespace)

- msiexec.exe with command line containing 'http' or 'ftp'

- regsvr32.exe with command line containing 'http' or 'ftp'

- Use of wevutil.exe with 'cl' in command line

- cmd.exe with command line containing these strings (or straight commandline use)
  - 'http' or 'ftp'
  - 'reg add'

- chrome.exe with commandline containing "headless" or "remote-debugging"


## Blacklist Alert  
- Commandline Obfuscation
  - Commandline containing
    - a caret (^) (T1027)
    - /c echo
    - two double quotes ("")
    - a comma immediately followed by a  (,;)
    - a semicolon immediately followed by a comma (;,)
    - consecutive commas
    - consecutive semicolons
    - COMSPEC (part of %COMSPEC%)
    - /\\ or \\/ or \\.\\ or /./ or\\./ or ..
    - | cmd or |cmd
    - final


## Whitelist Alert


## Levenshtein Score Alert


## Rolling Whitelist Alert



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
