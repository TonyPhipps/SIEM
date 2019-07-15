# Use Cases by Detection Method

Grouped by [Detection Method](/Detection-Methods.md)

MITRE ATT&CK Framework: 

- Observe general process execution with the goal of understanding normal and detecting anomalies. Use of multiple visualizations, tables, and aggregation methods is recommended. Any confirmed malicious behavior from this use case should be considered as a foundation for a new alert.

## Aggregate Count


## Blacklist Alert
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


## Rolling Whitelist Alert
- Newly observed executables
- Newly observed executables in User-Editable Folders

## Shannon Entropy Score Alert


## Threshold Alert
- Excessive Command Length


# Log Source Examples
- Windows Security Event ID 4688
  - Secpol.exe > Advanced Audit Policy Configuration > System Audit Policies > Detailed Traking > Audit Process Creation: Enabled, Success
  - gpedit.msc > Computer Configuration > Administrative Templates > System > Audit Process Creation > Include command line in process creation events: Enabled
- Sysmon Event ID 1


# Response Options
- Acquire a copy of the suspicious file for further analysis.


## Possible False Postivies
