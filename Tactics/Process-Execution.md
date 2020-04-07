# Process Execution Use Cases

Grouped by [Detection Method](/Detection-Methods.md)

MITRE ATT&CK Framework: 

- Observe general process execution with the goal of understanding normal and detecting anomalies. Use of multiple visualizations, tables, and aggregation methods is recommended. Any confirmed malicious behavior from this use case should be considered as a foundation for a new alert.

## Aggregate Count


## Blacklist Alert
- A file with a non-executable extension is executed
- PowerShell with one of the following in the command line
  - -nop (from noprofile)
  - hidden
  - -noni (from noninteractive)
  - bypass
  - -enc (from encodedcommand)
  - invoke-webrequest
  - iwr
  - invoke-restmethod
  - irm
  - curl
  - wget
  - bitstransfer
  - downloadstring
  - downloadfile
  - winhttprequest
  - xmlhttp
- whoami ran by 'NT AUTHORITY\SYSTEM'
- 'certutil' with one of the following in the command line
  - urlcach
  - url
  - ping
  - http
  - ftp
-  Command line with http or ftp from the following executables
   -  msiexec
   -  regsvr32
   -  cmd
   -  powershell
   -  powershell_ise
- Destination Process name matches a system executable, but folder path does not start with c:\windows\
- Use of wevutil with 'cl' in command line


## Whitelist Alert
- Anomalous Office Product Child Process
- Anomalous process ran by 'NT AUTHORITY\SYSTEM'
- Anomalous process ran by 'NETWORK SERVICE'
- Anomalous use of 'wmic'
- Anomalous use of certutil with '-decode' in command line
- Anomalous use of 'reg'
- Anomalous use of 'echo'


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


# Possible False Postivies
