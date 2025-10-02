# Commandline Activity Detection Content

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
- CustomShellHost.exe to execute an explorer.exe child process
- DeviceCredentialDeployment.exe to hide a process (T1564)
- makecab.exe (T1105, T1564.004, T1036)
- pktmon.exe to capture packets (T1040)
- rpcping.exe to exploit RPC (T1003, T1187)

#### !!!! IMPORTANT NOTES !!!!
- MANY commandlines can use - OR / interchangeably. Account for this!
- Commandlines can have junk characters like ^ to obfuscate detections, where the command is ran as if those characters didn't exist.
- Any inclusion of "http" can be supplemented by a pattern to match IP addresses for web communication.

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
  - DeviceCredentialDeployment.exe" to hide a process (T1564)

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

- csc.exe
  - "-out:" to compile code locally, bypassing defenses. (T1127)
  - "-target": to compile code locally, bypassing defenses. (T1127)

- cscript.exe
  - ".js"
  - ".jse"
  - ".vba"
  - ".vbe"
  - ".vbs"
  - ".wsf"
  - "//e:" to execute a script file with a specific engine (not a typo, two slashes)
  
- datasvcutil.exe
  - "http" to upload files (T1567)

- desktopimagedownldr.exe
  - "http" to download a file and set it as the screensaver (T1105)

- diantz.exe
  - ":" to compress a file into an alternate data stream (T1564.004)
  - "http" to download and compress a file (T1105)

- diskshadow.exe
  - "/s" to execute a prepared diskshadow script (T1003.003)
  - "> exec " to execute a child process (T1202)

- dnscmd.exe
  -  "/config" AND "/serverlevelplugindll" to add a malicious dll as a plugin of the DNS service. (T1543.003)

- esentutl.exe
  - "/y" AND "/vss" to copy a file via volume shadow copy (T1003.003)
  - "y" AND "/d" AND ":" AND "/o" to copy a file to an alternate data stream (T1564.004)
  - "http" to download a file (T1564.004)

- expand.exe
  - ":" to expand into an alternate data stream. (T1564.004)

- extexport.exe
  - ":\" to load an executable named mozcrt19.dll, mozsqlite3.dll, or sqlite.dll from a supplied folder path (T1218)

- extrac32.exe
  - ":" to extract a CAB file into an alternate data stream. (T1564.004)
  - "/C" to copy a file to another folder. (T1105)

- explorer.exe
  - ".exe" to indirectly execute commands (T1202)

- findstr.exe
  - ":" and "/V" to write to an alternate data stream (T1564.004)

- finger.exe
  - "http" to download a malicious payload (T1105)

- fltMC.exe
  - "unload" to unload a driver used by a security agent (T1562.001)
  - "detach" (T1054)

- forfiles.exe
  - "/p" and "/m" to execute another binary (T1202)

- fsutil.exe
  - "setZeroData" to forensically erase a file (T1485)
  - "deletejournal" to delete the USN journal volume, hiding file creation activity (T1485)
  - "trace decode" to executes a binary named netsh.exe from the current directory (T1218)

- ftp.exe
  - "-s:" to execute cmd commands from a referenced text file (T1202)

- hh.exe1
  - "http" to download a file (T1105)
  - ".exe" to execute another executable (T1218.001)

- ie4uinit.exe
  - "-BaseSettings" to execute malicious commands from a prepared ie4uinit.inf file (T1218)

- iediagcmd.exe
  - "set" and "/out:" to execute a binary that is pre-planted at C:\somedir\system32\netsh.exe. (T1218)

- ieexec.exe
  - "http" to download a file (T1105)
  
- ilasm.exe
  - "/exe" or "/dll" to compile a file (T1127)

- installutil.exe
  - "http" to download a file to INetCache (T1105)

- imewdbld.exe
  - "http" to download a file to INetCache (T1105)

- InstallUtil.exe
  - "logfile="
  - "LogToConsole=false"
  - "/U" (T1118)

- ldifde.exe
  - "-i -f" to import a file into LDAP (T1105)

- mavinject.exe
  - "/injectrunning" to inject a dll into a process (T1218.013)

- MpCmdRun.exe 
  - "DownloadFile" to download from internet (T1105)
  - "Add-MpPreference"
  - "RemoveDefinitions"
  - "DisableIOAVProtection" (T1089)

- mofcomp.exe
  - "-N" AND "\\" (WMI with remote host namespace)

- msconfig.exe
  - "-5" to execute commands inside crafted c:\windows\system32\mscfgtlc.xml (T1218)

- msdt.exe
  - "PCWDiagnostic" to execute arbitrary code (T1202)

- mshta.exe
  - ".hta" AND "c:\users" to execute a .hta file in user space (T1218.005)
  - "http" to download a file (T1105)
  - "vbscript" to execute vbscript file (T1218.005)
  - "javascript" to execute javascript file (T1218.005)
  - ":" to interact with an alternate data stream (T1218.005)

- msiexec.exe
  - "/i" OR "/y"  AND "http" to download and install remote msi (T1218.007)
  - "/i" OR "/y" AND "ftp" to download and install remote msi (T1218.007)
  - "/i" OR "/y" AND "c:\users" to install msi (T1218.007)
  - "TRANSFORMS=" to leverage a secondary, malicious file (T1218.007)

- net
  - with "localgroup" AND "/add"
  - with "user" AND "/add"

- netsh.exe
  - "add helper" to execute a given .dll and gain persistence (T1546.007)

- netstat

- ngen.exe
  - "http" or "\d+\.\d+\.\d+\.\d+" to download a file (T1105)

- nltestrk.exe
  - "domain_trusts (T1482)

- odbcconf.exe
  - "/A" to Execute DllREgisterServer from DLL specified. (T1218.008)
  - "/F" toj Load DLL specified in target .RSP file. (T1218.008)

- OfflineScannerShell.exe
  - "OfflineScannerShell" to execute mpclient.dll library in the current working directory (T1218)

- pcalua.exe
  - "-a" to get this exe to open another command or DLL (T1202)

- pcwrun.exe
- ".exe" to get this exe to open another command or DLL (T1202)

- pnputil.exe
  - "-i -a" to install drivers (T1547)

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

- presentationhost.exe
  - "http" to download a remote file (T1105)

- print.exe
  - "/d:" to copy or hide something inside an alternate data stream (T1564.004, T1105)

- psr.exe
  - "/gui 0" to record the user's screen without creating a GUI (T1113)

- rasautou.exe
  - "-d" AND "-p" to load a target DLL and execute an export (T1218)

- rdrleakdiag.exe
  - "/p" to dump a process (T1003)

- reg.exe
  - "add" to add registry objects
  - "export" to export registry objects (T1564.004)
  - "save" to dump hives (T1003.002)

- regasm.exe 
  - ".dll" to load target DLL (T1218.009)

- regedit.exe
  - "/s" to silently import .reg files
  - "/e" to export registry objects

- register-cimprovider.exe
  - ".dll" to load a dll (T1218)

- regsvcs.exe
  - ".dll" to load a dll (T1218.009)

- regsvr32.exe
    - "/i" AND "scrobj.dll" to execute a .SCT file with scrobj.dll (T1218.010)

- rundll32.exe
  - "javascript" to execute javascript code (T1218.011)
  - ".dll" AND "\users\" to execute a .dll file in userspace (T1218.011)
  - ".dll" AND "http" to execute a .dll file from the Internet (T1218.011)

- runonce.exe
  - "/AlternateShellStartup" to execute a Run Once Task preconfigured in registry (T1218)

- runscripthelper.exe
  - "surfacecheck" to execute a PowerShell script with an arbitrary name and extension (T1218)

- sc.exe
  - "create" AND "start" to create and run a service (T1564.004)
  - "config" AND "start" to modify and run a service (T1564.004)

- schtasks.exe
  - "create" to creat a new scheduled task (T1053.005)

- scriptrunner.exe
  - "appvscript" to execute a binary (T1202)

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
