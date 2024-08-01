# Commandline Activity Use Cases

Grouped by [Detection Method](/Detection-Methods.md)

MITRE ATT&CK Framework: [Command-Line Interface (T1059)](https://attack.mitre.org/techniques/T1059), [PowerShell (T1086)](https://attack.mitre.org/techniques/T1086), [Inhibit System Recovery](https://attack.mitre.org/versions/v12/techniques/T1490/)

- Execution of malicious commands AND scripts from command-line interfaces.


## Aggregate Count
- Process file names (without path)
- Process file names (with path)
- rundll32.exe DLL Paths
- regsvr32.exe DLL Paths


## [Match Alert](https://github.com/TonyPhipps/SIEM/blob/master/Detection-Methods.md#match-alarm)


Question the use of these, as they are infrequently used legitimately
- at.exe
- aspnet_compiler.exe

#### !!!! IMPORTANT NOTES !!!!
- MANY commandlines can use - OR / interchangeably. Account for this!
- Commandlines can have junk characters like ^ to obfuscate detections, where the command is ran as if those characters didn't exist.

----------------------

- addinutil.exe
  - "-AddinRoot:" to set root directory for addins

- appinstaller.exe
  - "http" to attempt to load/install a package from a URL and save in INetCache

- atbroker.exe
  - "/start" to execute code referenced in a prestaged registry key

- auditpol.exe
  - "/set" AND "disable"

-	bcdedit.exe
  - "recoveryenabled"
  - "ignoreallfailures"
  - "minimal" (T1059, T1490)

- bitsadmin.exe
  - "/create" to make a new job which can download, copy, execute, and create alternate data streams

- certoc.exe
  - "-loaddll"
  - "-getcacaps"

- certreq.exe
  - "-config" AND "http" to download content
  - "-post" AND "http" to either download or upload data

- certutil.exe
  - "-urlcache" to download files
  - "url"
  - "ping"
  - "http"
  - "ftp"
  - "-decode"
  - "-encode"
  - "-addstore"

- chrome.exe
  - "headless"
  - "remote-debugging"

- cmd.exe
  - "http"
  - "ftp"
  - "reg add"
  - "^" to attempt obfuscation
  - "<" AND ":" to execute an alternate data stream

- cmdkey.exe
  - "/list" to list cached credentials

- cmdl32.exe
  - "/vpn" AND "/lan" to download files

- cmstp.exe
  - "/ni" AND "/s" to execute malicious .INF (T1218.003)
  - "http" to download (T1218.003)

- colorcpl.exe
  - copies any file to C:\Windows\System32\spool\drivers\color\ for staging (T1036.005)

- configsecuritypolicy.exe
  - "http" to download or upload a file (T1567 or T1105)

- conhost.exe
  - ".exe" to execute another command (T1202)
  - "--headless" to hide child process window (T1202)

- control.exe
  - ":" to execute alternate data stream (T1218.002)

- fltMC.exe
  - "unload"
  - "detach" (T1054)

- InstallUtil.exe
  - "logfile="
  - "LogToConsole=false"
  - "/U" (T1118)

- Mavinject.exe
  - "injectrunning" (T1218)

- MpCmdRun.exe 
  - "Add-MpPreference"
  - "RemoveDefinitions"
  - "DisableIOAVProtection" (T1089)

- mofcomp.exe
  - "-N" AND "\\" (WMI with remote host namespace)

- mshta.exe
  - execution of .hta file in userspace
  - "http"
  - "vbscript"
  - "javascript"

- msiexec.exe
  - "/z" OR /y" AND "http"
  - "/z" OR /y" AND "ftp"
  - "/z" OR /y" AND "c:\users"

- net
  - with "localgroup" AND "/add"
  - with "user" AND "/add"

- netstat

- nltestrk.exe
  - "domain_trusts (T1482)

- odbcconf.exe
  - "/A" (T1218)
  - "/F" (T1218)

- PowerShell.exe OR powershell_ise.exe
  - "-noprofile" OR "-nop"
  - "hidden"
  - "-noninteractive" OR "-noni"
  - "-execution-policy" OR "-ep"
  - "bypass"
  - "-encodedcommand" OR "-e" OR "-enc"
  - "invoke-webrequest" OR "iwr" OR "curl" OR "wget"
  - "invoke-restmethod" OR "irm"
  - "invoke-expression" OR "iex"
  - "invoke-wmimethod" OR "invoke-cimmethod"
  - "bitstransfer"
  - "downloadstring"
  - "downloadfile"
  - "winhttprequest"
  - "http"
  - "ftp"
  - "get-ciminstance" OR "gcim"
  - "get-wmiobject" OR "gwmi"
  - "ToBase64String"
  - "FromBase64String"
  - "set-wmiinstance"
  - "createInstance"
  - "nishang" with "Enable-DuplicateToken"
  - "nishang" with Get-LsaSecret
  - "-stream" to interact with an alternate data stream

- reg.exe
  - "add" to add registry objects
  - "export" to export registry objects

- regasm.exe 
  - "/u"  to proxy execution of code

- regedit.exe
  - "/s" to silently import .reg files
  - "/e" to export registry objects

- regsvr32.exe
  - "/i" to execute a .dll file in userspace
  - "/i" AND "http" to execute a .dll file from Internet

- rundll32.exe
  - "javascript"
  - "http"
  - execution of .dll file in userspace
  - execution of .dll file from Internet

- sc.exe
  - "create"

- schtasks.exe
  - "create"

- shadowcopy
  - "delete" (T1059, T1490)

- taskkill.exe
  - [with any of your known antivirus/protection executable names]


- verclsid.exe
  - "/C" to proxy execution of code

-	vssadmin.exe
  - "delete" (T1059, T1490) to delete volume shadow copy
  - "resize" AND "/maxsize" to neuter volume shadow copy

-	wbadmin.exe
  - "delete" (T1059, T1490)

- wevutil.exe
  - "cl" to clear event logs
  - "clearn-log" to clear event logs

- wmic.exe where commandline contains
  - "process call create"
  - "useraccount list full"
  - "group list full"
  - "netuse list full"
  - "qfe get"
  - "startup get"
  - "service get" 

  


## [Blacklist Alert](https://github.com/TonyPhipps/SIEM/blob/master/Detection-Methods.md#blacklist-alarm)
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
    - /\\ OR \\/ OR \\.\\ OR /./ or\\./ OR ..
    - | cmd OR |cmd
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
- Endpoint Detection AND Response product


# Possible False Positives
- Many commandline activities performed by authorized privileged users may false-positive on this content.


# References
- https://lolbas-project.github.io/
- https://github.com/3CORESec/MAL-CL
