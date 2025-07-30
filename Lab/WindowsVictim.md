In order to build a lab for Windows logs, a Windows system is required. The content on this page will focus on setting up a victim system with advanced logging. While production systems may not have such high levels of logging, it remains important to understand how attacks and activities can be logged. It may be the case that observations in a lab environment warrant increasing logging on production systems to allow detection.

- [Windows Configuration](#windows-configuration)
  - [Set Logging Defaults](#set-logging-defaults)
  - [Disable Windows Firewall](#disable-windows-firewall)
  - [Disable Password Protected Sharing](#disable-password-protected-sharing)
  - [PowerShell Logging](#powershell-logging)
    - [Enable ScriptBlock Logging](#enable-scriptblock-logging)
    - [Enable Module Logging](#enable-module-logging)
    - [Transcription](#transcription)
  - [Increase Log Size](#increase-log-size)
  - [Enable Process Creation (Event ID 4688)](#enable-process-creation-event-id-4688)
    - [Include Command Line in 4688 Events](#include-command-line-in-4688-events)
  - [Enable Task History](#enable-task-history)
- [Sysmon](#sysmon)
- [WinLogBeat](#winlogbeat)
    - [Break SleepStudy](#break-sleepstudy)
- [Other Useful Tidbits](#other-useful-tidbits)
  - [Clear all the Logs](#clear-all-the-logs)


# Windows Configuration


## Set Logging Defaults
- Computer Configuration > Policies > Administrative Templates > Windows Components > Event Log Service > [Log Name] > Specify the maximum log file size
  - 500 MB
    - HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\WINEVT\Channels\<LogName>\MaxSize (REG_DWORD of 52428800)
- Computer Configuration > Policies > Administrative Templates > Windows Components > Event Log Service > [Log Name] > Control event log behavior when the log file reaches its maximum size
  - Overwrite events as needed (oldest events first)
    


## Disable Windows Firewall
Windows Security > Firewall & Network Protection > Private Network > Turn Off


## Disable Password Protected Sharing

- Control Panel > Network and Internet > Network and Sharing Center > Advanced Sharing Settings > All Networks > ...
  - Public Folder Sharing > Turn on...
  - Password Protected Sharing > Turn off...


## PowerShell Logging
- %SystemRoot%\system32\winevt\logs\Microsoft-Windows-PowerShell%4Operational.evtx


### Enable ScriptBlock Logging
(Event ID 4104)
- Create they key path: HKLM\SOFTWARE\Wow6432Node\Policies\Microsoft\Windows\PowerShell\ScriptBlockLogging
  - Create new DWORD
  - EnableScriptBlockLogging = 1
  - EnableScriptBlockInvocationLogging = 1
- Event ID 4104 will populate the Microsoft-Windows-PowerShell/Operational log

-OR-

- gpedit.msc
- Computer Configuration > Administrative Templates > Windows Components > Windows Powershell
- Turn On Script Block Logging: Enabled
- Log Stop/Start Events: Checked


### Enable Module Logging
- Create the key path: HKLM\SOFTWARE\Wow6432Node\Policies\Microsoft\Windows\PowerShell\ModuleLogging
  - Create new DWORD EnableModuleLogging = 1
- Create the key path: HKLM\SOFTWARE\Wow6432Node\Policies\Microsoft\Windows\PowerShell\ModuleLogging\ModuleNames
    - Create new STRING VALUE \* = * (an asterisk for the value and data)

-OR-

- gpedit.msc
- Computer Configuration > Administrative Templates > Windows Components > Windows Powershell
- Turn On Module Logging: Enabled
- Module Name: *

Event ID 4103 will populate the Microsoft-Windows-PowerShell/Operational log


### Transcription
- Create the key path: HKLM\SOFTWARE\Wow6432Node\Policies\Microsoft\Windows\PowerShell\Transcription\
  - Create new DWORD EnableInvocationHeader = 1
  - Create new DWORD EnableTranscripting = 1
  - Create new STRING VALUE OutputDirectory = <path_to_directory>
- Logs will be stored in .txt files in teh specified directory, using the format `..\YYYYMMDD\PowerShell_transcript.PCNAME.RANDOM.YYYYMMDDHHMMSS.txt`

-OR-

- gpedit.msc
- Computer Configuration > Administrative Templates > Windows Components > Windows Powershell
- Turn On PowerShell Transcription: Enabled
- Log Stop/Start Events: Checked


## Increase Log Size
- Event Viewer > Application and Service Logs > Microsoft > Windows > PowerShell > Operational
- Event Viewer > Application and Service Logs > Microsoft > Windows > Sysmon > Operational
- Right Click > Properties
- Maximum Log Size ( KB ): 100,032 or higher is recommended


## Enable Process Creation (Event ID 4688)
- Secpol.exe
- Advanced Audit Policy Configuration > System Audit Policies > Detailed Tracking
- Audit Process Creation: Enabled, Success


### Include Command Line in 4688 Events
- gpedit.msc
- Computer Configuration > Windows Settings > Security Settings > Local Policies > Security Options
  - Audit: Force audit policy subcategory settings (Windows Vista or later) to override audit policy category settings: Enabled
- Computer Configuration > Administrative Templates > System > Audit Process Creation
  - Include command line in process creation events: Enabled
- Computer Configuration > Policies > Windows Settings > Security Settings > Advanced Audit Configuration > Audit Polcies > Detailed Tracking
  - Audit Process Creation: Success and Failure


## Enable Task History
- Task Scheduler
- Click Enable All Tasks History


# Sysmon
- Copy Sysmon to virtual host and install as a service
- c:\windows\sysmon\sysmon64.exe -accepteula -i [sysmonlabconfig.xml](/Lab/sysmonlabconfig.xml)
- %SystemRoot%\system32\winevt\logs\Microsoft-Windows-Sysmon%4Operational.evtx


# WinLogBeat
- https://www.elastic.co/downloads/beats/winlogbeat
- Configure WinLogBeat by editing winlogbeat.yml
- Recommended starter config: https://raw.githubusercontent.com/Cyb3rWard0g/HELK/master/winlogbeat/winlogbeat.yml
- Ensure the ```hosts:``` section of the config file has the correct destination IP
- Install via install-service-winlogbeat.ps1, then start via ```Start-Service winlogbeat```


### Break SleepStudy
Sometimes this odd service will begin creating an endless loop of .etl files. This command breaks that "feature," since there is no proper option to disable it.
```
Set-ItemProperty -Path C:\Windows\System32\SleepStudy\*.etl -Name IsReadOnly -Value $true
```


# Other Useful Tidbits


## Clear all the Logs
`wevtutil el | Foreach-Object {wevtutil cl "$_"}`
