# Use Cases by Detection Method

Grouped by [Detection Method](/Detection-Methods.md)

MITRE ATT&CK Framework: 

- Observe general process execution with the goal of understanding normal and detecting anomalies. Use of multiple visualizations, tables, and aggregation methods is recommended. Any confirmed malicious behavior from this use case should be considered as a foundation for a new alert.

## Aggregate Count


## Blacklist Alert
- A file with a non-executable extension is executed
- Execution Command contains one of the following strings
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


# Response Options
- Acquire a copy of the suspicious file for further analysis.


## Possible False Postivies
