# Process Execution Use Cases

Grouped by [Detection Method](/Detection-Methods.md)

MITRE ATT&CK Framework: 

- Observe general process execution with the goal of understanding normal and detecting anomalies. Use of multiple visualizations, tables, and aggregation methods is recommended. Any confirmed malicious behavior from this use case should be considered as a foundation for a new alert.


## Aggregate Count


## Blacklist Alert
- Unexpected use of sysinternals processes (include name.exe and name64.exe variants)
  - pslist.exe
  - psservice.exe
  - psexec.exe
  - psgetsid.exe
  - pskill.exe
  - pkill.exe
  - psloggedon.exe
  - psfile.exe
  - PipeList.exe
  - AccessChk.exe
  - AccessEnum.exe
  - LogonSessions.exe
  - PsLogList.exe
  - PsInfo.exe
  - PsPasswd.exe
  - ru.exe
  - procdump.exe
  - ShellRunas.exe
  - LoadOrd.exe
  - LoadOrdC.exe
  - regsize.exe

- Unexpected invocation of system executables
  - appcmd.exe (T1218)
  - attrib.exe (T1158)
  - bash.exe (T1202)
  - certutil.exe (T1202)
  - cmdkey.exe (T1087)
  - computerdefaults.exe (T1088)
  - control.exe (T1202)
  - dism.exe (T1088)
  - esentutl.exe (T1003)
  - findstr.exe (T1081)
  - fodhelper.exe (T1088)
  - forfiles.exe (T1222)
  - hh.exe (T1047)
  - icacls.exe (T1222)
  - jjs.exe (T1218)
  - klist.exe (T1087)
  - makecab.exe
  - mofcomp.exe (T1047)
  - mshta.exe (T1170)
  - nbtstat.exe (T1016)
  - netsh.exe (T1063)
  - netstat.exe (T1049)
  - nltest.exe (T1033)
  - nslookup.exe (T1016)
  - odbcconf.exe (T1073)
  - pcalua.exe (T1202)
  - qprocess.exe (T1057)
  - query.exe (T1057)
  - quser.exe (T1033)
  - qwinsta.exe (T1057)
  - reg.exe (T1112)
  - regasm.exe (T1121)
  - regsvcs.exe (T1121)
  - regsvr32.exe (T1117)
  - replace.exe (T1218)
  - robocopy.exe (T1074)
  - route.exe (T1016)
  - runas.exe (T1134)
  - rwinsta.exe (T1057)
  - sc.exe (T1031)
  - schtasks.exe (T1053)
  - scrcons.exe (T1047)
  - SyncAppvPublishingServer.exe (T1218)
  - systeminfo.exe (T1033)
  - takeown.exe (T1222)
  - taskeng.exe (T1053)
  - taskkill.exe (T1112)
  - tasklist.exe (T1057)
  - tree.com (T1016)
  - vassadmin.exe (T1490)
  - wevtutil.exe (T1070)
  - where.exe (T1081)
  - whoami.exe (T1033)
  - winrm.cmd (T1028)
  - winrs.exe (T1202)
  - wmiprvse.exe (T1047)
  - wsmprovhost.exe (T1028)
  - wusa.exe
  - xcopy.exe (T1074)
  - sdbinst.exe (T1138)
  - bitsadmin.exe (T1197)
  - fodhelper.exe (T1088)
  - sethc.exe (T1015)
  - utilman.exe (T1015)
  - osk.exe (T1015)
  - magnify.exe (T1015)
  - displayswitch.exe (T1015)
  - narrator.exe (T1015)
  - atbroker.exe (T1015)

- Commandline Obfuscation
  - Commandline containing a caret (^) (T1027)
  - Commandline containing /c echo
  - Commandline containing two double quotes ("")
  - Commandline containing a comma immediately followed by a  (,;)
  - Commandline containing a semicolon immediately followed by a comma (;,)
  - Commandline containing consecutive commas
  - Commandline containing consecutive semicolons
  - Commandline containing COMSPEC (part of %COMSPEC%)
  - Commandline containing \.\ 
  - Commandline containing ./
  - Commandline containing | cmd or |cmd
  - Commandline containing final
- Suspicious process path with system process name
- Microsoft process name without digital signature
- Suspicious parent process of system executable
  - eventvwr.exe child of process other than mmc.exe (T1088)
- Suspicious child process of system executable
- Unexpected source user of system executable
  - Administrator account running chrome.exe, iexplore.exe, MicrosoftEdge.exe, msedge.exe
  - ipconfig.exe ran by non sysadmin/helpdesk/developer (T1016)
  - powershell.exe ran by non sysadmin/heldesk/developer(T1086)
  - powershell_ise.exe ran by non sysadmin/helpdesk/developer (T1086)
  - net.exe ran by non sysadmin/helpdesk/developer (T1018)
  - cscript.exe ran by non sysadmin/helpdesk/developer (T1202)
  - wscript.exe ran by non sysadmin/helpdesk/developer (T1202)
  - MSBuild.exe ran by non sysadmin/developer(T1127)
  - tracert.exe ran by non sysadmin/helpdesk/developer (T1016)
  - runas.exe ran by non sysadmin/helpdesk/developer
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
  - PowerShell.exe or powershell_ise.exe with one of the following in the command line
    - -nop or /nop (from -noprofile)
    - hidden
    - -noni or /noni (from -noninteractive)
    - -ep or /ep (from -execution-policy)
    - bypass
    - -enc or /enc (from -encodedcommand)
    - invoke-webrequest or iwr or curl or wget
    - invoke-restmethod or irm
    - invoke-expression or iex
    - bitstransfer
    - downloadstring
    - downloadfile
    - winhttprequest
    - http
    - ftp
  - whoami.exe ran by 'NT AUTHORITY\SYSTEM'
  - msiexec.exe with command line containing 'http' or 'ftp'
  - regsvr32.exe with command line containing 'http' or 'ftp'
  - Use of wevutil.exe with 'cl' in command line
- Suspicious commandline parameters of commonly installed apps
  - chrome.exe with commandline containing "headless" or "remote-debugging"
- cmd.exe with command line containing 'http' or 'ftp'
- Administrator account running "daily use" applications
  -  chrome.exe 
  -  iexplore.exe
  -  MicrosoftEdge.exe
  -  msedge.exe
  -  firefox.exe
  -  brave.exe

## Whitelist Alert
- Unexpected process from non-admin/helpdesk/developer
  - ipconfig.exe ran by non sysadmin/helpdesk/developer (T1016)
  - powershell.exe ran by non sysadmin/heldesk/developer(T1086)
  - powershell_ise.exe ran by non sysadmin/helpdesk/developer (T1086)
  - net.exe ran by non sysadmin/helpdesk/developer (T1018)
  - cscript.exe ran by non sysadmin/helpdesk/developer (T1202)
  - wscript.exe ran by non sysadmin/helpdesk/developer (T1202)
  - MSBuild.exe ran by non sysadmin/developer(T1127)
  - tracert.exe ran by non sysadmin/helpdesk/developer (T1016)
  - runas.exe ran by non sysadmin/helpdesk/developer
- A file with a non-executable extension is executed
  - bat, bin, cmd, com, cpl, exe, gadget, inf, ins, inx, isu, job, jse, lnk, msc, msi, msp, mst, paf, pif, ps1, reg, rgs, scr, sct, shb, shs, u3p, vb, vbe, vbs, vbscript, ws, wsf, wsh
- Unrecognized Child Processes of Office Products (T1137)
  - excel.exe
  - winword.exe
  - powerpnt.exe
  - outlook.exe
  - msaccess.exe
  - mspub.exe
- Unrecognized processes with owner of 'NT AUTHORITY\SYSTEM'
- Unrecognized processes with owner of 'NETWORK SERVICE'
- Urecognized folder path where process name matches a system executable name (T1036)
- Unrecognized parent process of
  - c:\windows\system32\w3wp.exe
- Unrecognized process starting from (T1036)
  - c:\windows\system32\
  - c:\windows\



## Levenshtein Score Alert
- Processes with filenames that closely resemble system files.


## Rolling Whitelist Alert
- Newly observed Destination File Path
- Newly observed Destination File Path=[User-Editable Path]
- Newly observed Destination File, User=[Privileged Account]
- Newly observed Destination File, User=[Serivce Account]
- Newly observed Destination File, User=[System Account]
- Newly observed Source Executable and Destination File
- Newly observed Source User executing items on list [LOLBAS](https://github.com/LOLBAS-Project/LOLBAS)


## Shannon Entropy Score Alert
- Processes executed with randomized file names.


## Threshold Alert
- Command Length where Command Length exceeds threshold


# Log Source Examples
- Windows Security Event ID 4688
  - Secpol.exe > Advanced Audit Policy Configuration > System Audit Policies > Detailed Traking > Audit Process Creation: Enabled, Success
  - gpedit.msc > Computer Configuration > Administrative Templates > System > Audit Process Creation > Include command line in process creation events: Enabled
- Sysmon Event ID 1


# Possible False Positives


# Resources
- https://www.fireeye.com/content/dam/fireeye-www/blog/pdfs/dosfuscation-report.pdf
- https://lolbas-project.github.io