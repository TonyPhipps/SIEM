# Process Execution Use Cases

This use case is purposefully separated from commandline activity. These detections assume you have all process execution details other than commandline (process name, PID, full path, etc.)

Grouped by [Detection Method](/Detection-Methods.md)

MITRE ATT&CK Framework: 

- Observe general process execution with the goal of understanding normal and detecting anomalies. Use of multiple visualizations, tables, and aggregation methods is recommended. Any confirmed malicious behavior from this use case should be considered as a foundation for a new alert.

## Match Alarm
- Alternate Data Stream Use
  - Process command line contains regex \.[\w]+:

- Execution of sysinternals processes (include name.exe and name64.exe variants)
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
  
- Unexpected invocation of system executables (LOLBAS)
  - appcmd.exe (t1218)
  - at.exe
  - atbroker.exe (t1015)
  - attrib.exe (t1158)
  - bash.exe (t1202)
  - bitsadmin.exe (t1197)
  - certutil.exe (t1202)
  - cmdkey.exe (t1087)
  - computerdefaults.exe (t1088)
  - control.exe (t1202)
  - dcsync.exe
  - dism.exe (t1088)
  - displayswitch.exe (t1015)
  - esentutl.exe (t1003)
  - findstr.exe (t1081)
  - fodhelper.exe (t1088)
  - fodhelper.exe (t1088)
  - forfiles.exe (t1222)
  - hh.exe (t1047)
  - icacls.exe (t1222)
  - jjs.exe (t1218)
  - klist.exe (t1087)
  - magnify.exe (t1015)
  - makecab.exe
  - mofcomp.exe (t1047)
  - mshta.exe (t1170)
  - narrator.exe (t1015)
  - nbtstat.exe (t1016)
  - netsh.exe (t1063)
  - netstat.exe (t1049)
  - nltest.exe (t1033)
  - nslookup.exe (t1016)
  - odbcconf.exe (t1073)
  - osk.exe (t1015)
  - pcalua.exe (t1202)
  - psexec.exe
  - psexesvc.exe
  - qprocess.exe (t1057)
  - query.exe (t1057)
  - quser.exe (t1033)
  - qwinsta.exe (t1057)
  - reg.exe (t1112)
  - regasm.exe (t1121)
  - regsvcs.exe (t1121)
  - regsvr32.exe (t1117)
  - replace.exe (t1218)
  - robocopy.exe (t1074)
  - route.exe (t1016)
  - runas.exe (t1134)
  - rwinsta.exe (t1057)
  - sc.exe (t1031)
  - schtasks.exe (t1053)
  - scrcons.exe (t1047)
  - sdbinst.exe (t1138)
  - sethc.exe (t1015)
  - syncappvpublishingserver.exe (t1218)
  - systeminfo.exe (t1033)
  - takeown.exe (t1222)
  - taskeng.exe (t1053)
  - taskkill.exe (t1112)
  - tasklist.exe (t1057)
  - tree.com (t1016)
  - utilman.exe (t1015)
  - vssadmin.exe (t1490)
  - wevtutil.exe (t1070)
  - where.exe (t1081)
  - whoami.exe (t1033)
  - winrm.cmd (t1028)
  - winrs.exe (t1202)
  - wmiprvse.exe (t1047)
  - wsmprovhost.exe (t1028)
  - wusa.exe
  - xcopy.exe (t1074)
  - klist.exe (pass-the-ticket)
  - compmgmtlauncher.exe (TA0043)
  - find.exe  (TA0043)
  - fsutil.exe (TA0043)
  - hostname.exe (TA0043)
  - ipconfig.exe (TA0043)
  - net.exe (TA0043)
  - net1.exe (TA0043)
  - ping.exe (TA0043)
  - set.exe (TA0043)
  - time.exe (TA0043)
  - tracert.exe (TA0043)
  - vds.exe (TA0043)
  - vdsldr.exe (TA0043)
  - ver.exe (TA0043)
  - winver.exe (TA0043)
  - wmic.exe (TA0043)
  - winrshost.exe (TA0043)


- System process with suspicious starting location
  - backgroundTaskHost.exe not starting from c:\windows\system32\
  - CompPkgSrv.exe not starting from c:\windows\system32\
  - conhost.exe not starting from c:\windows\system32\
  - csrss.exe not starting from c:\windows\system32\
  - ctfmon.exe not starting from c:\windows\system32\
  - dasHost.exe not starting from c:\windows\system32\
  - dllhost.exe not starting from c:\windows\system32\
  - dwm.exe not starting from c:\windows\system32\
  - explorer.exe not starting from c:\windows\
  - iexplore.exe not starting from c:\program files\internet explorer\
  - lsass.exe not starting from c:\windows\system32\
  - ntoskrnl.exe not starting from c:\windows\system32\
  - RuntimeBroker.exe not starting from c:\windows\system32\
  - services.exe not starting from c:\windows\system32\
  - splwow64.exe not starting from c:\windows\
  - svchost.exe not starting from c:\windows\system32\
  - taskhostw.exe not starting from c:\windows\system32\
  - taskmgr.exe not starting from c:\windows\system32\
  - wininit.exe not starting from c:\windows\system32\
  - winlogon.exe not starting from c:\windows\system32\

- System process with suspicious parent process
  - taskhost.exe with a parent other than services.exe
  - lsass.exe with a parent other than wininit.exe
  - iexplore.exe with a parent other than explorer.exe
  - explorer.exe with a parent other than userinit.exe
  - winlogon.exe with a parent other than smss.exe
  - wininit.exe with a parent other than smss.exe
  - smss.exe with a parent process other than System
  - csrss.exe with a parent other than smss.exe
  - services.exe with a parent other than wininit.exe
  - svchost.exe with a parent other than services.exe
  - lsm.exe with a parent other than wininit.exe

- System process with suspicious owner
  - csrss.exe with an owner other than Local System
  - smss.exe with an owner other than Local System
  - services.exe with an owner other than Local System
  - wininit.exe with an owner other than Local System
  - lsass.exe with an owner other than Local System
  - lsm.exe with an owner other than Local System
  - winlogon.exe with an owner other than Local System


- SYSTEM account launching processes other than
  - 

- Microsoft process name without digital signature
- svchost.exe
- services.exe
- smss.exe
- lsass.exe
- csrss.exe
- wininit.exe
- taskhostw.exe
- runtimebroker.exe


- Suspicious parent process of system executable
  - eventvwr.exe child of process other than mmc.exe (T1088)

- Executable running from $Recylce.Bin
- Executable running from \System Volume Information
- Executable running from \Temp folders


## Aggregate Count
- Suspicious child process of system executable

- Unrecognized Child Processes of Office Products (T1137)
  - excel.exe
  - winword.exe
  - powerpnt.exe
  - outlook.exe
  - msaccess.exe
  - mspub.exe
  
- Unexpected source user of system executable  
  - ipconfig.exe (T1016)
  - powershell.exe (T1086)
  - powershell_ise.exe (T1086)
  - net.exe (T1018)
  - cscript.exe (T1202)
  - wscript.exe (T1202)
  - MSBuild.exe (T1127)
  - tracert.exe (T1016)
  - runas.exe
  - scrcons.exe (parent process of wmi ActiveScriptConsumers)


## Blacklist Alert
- Executables masquerading as c:\windows system files running from bad paths (blacklist of processes expected in c:\windows\)
- Executables masquerading as c:\windows\sysem32 system files running from bad paths (blacklist of processes expected in c:\windows\system32\)
- Executables running from any folder with TEMP in the path

- Administrator account running "daily use" applications (blacklist of admin names)
  -  chrome.exe 
  -  iexplore.exe
  -  MicrosoftEdge.exe
  -  msedge.exe
  -  firefox.exe
  -  brave.exe


## Whitelist Alert
- A file with a non-executable extension is executed (whitelist of extensions)
  - bat, bin, cmd, com, cpl, exe, gadget, inf, ins, inx, isu, job, jse, lnk, msc, msi, msp, mst, paf, pif, ps1, reg, rgs, scr, sct, shb, shs, u3p, vb, vbe, vbs, vbscript, ws, wsf, wsh
  
- Unexpected process from non-admin/helpdesk/developer (whitelist of admins, etc)
  - ipconfig.exe (T1016)
  - powershell.exe (T1086)
  - powershell_ise.exe (T1086)
  - net.exe ran (T1018)
  - cscript.exe (T1202)
  - wscript.exe (T1202)
  - MSBuild.exe (T1127)
  - tracert.exe (T1016)
  - runas.exe
  - mstsc.exe
  - cmd.exe
  - python*.exe

- Unrecognized processes with owner of 'NT AUTHORITY\SYSTEM' (whitelist of expected full process paths)
- Unrecognized processes with owner of 'NETWORK SERVICE' (whitelist of expected full process paths)

- Unrecognized process starting from c:\windows\ (T1036) (whitelist of processes expected) 
  - ```Get-ChildItem c:\windows\*.exe | select name```
- Unrecognized process starting from c:\windows\system32\ (T1036) (whitelist of processes expected)
  - ```Get-ChildItem c:\windows\system32\*.exe | select name```
- Unrecognized process starting from c:\windows\winsxs\ (T1036) (whitelist of processes expected)
  - ```Get-ChildItem c:\windows\winsxs\*.exe | group-object | select name```


## Levenshtein Score Alert
- Processes with filenames that closely resemble system files.


## Rolling Whitelist Alert
- Source Process=cmd.exe, Newly observed Child Process
- Source Process=powershell.exe, Newly observed Child Process
- Source Process=powershell_ise.exe, Newly observed Child Process
- Executing items on list [LOLBAS](https://github.com/LOLBAS-Project/LOLBAS), Newly observed User
- Source Process Path=c:\windows\, newly observed process
- Source Process Path=c:\windows\system32\, newly observed process
- Source Process Path=c:\windows\syswow64\, newly observed process
- Source Process Path=c:\windows\fonts\, newly observed process
- Source Process Path=C:\$Recycle.Bin\, newly observed process
- Source Process Path=c:\windows\system32\, newly observed process
- Source Process Path=c:\system volume information\, newly observed process
- Source Process Path=C:\ProgramData\, newly observed process


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
- Generally a lot of false positives can be expected from this log source. Understanding normal operating system, trusted application, user norms, and business norms is expected to efficiently tune down noise over time.


# Resources
- https://www.fireeye.com/content/dam/fireeye-www/blog/pdfs/dosfuscation-report.pdf
- https://lolbas-project.github.io
