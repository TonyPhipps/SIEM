# Use Cases by Detection Method

Grouped by [Detection Method](/Detection-Methods.md)

MITRE ATT&CK Framework: 

- Observe general process execution with the goal of understanding normal and detecting anomalies. Use of multiple visualizations, tables, and aggregation methods is recommended. Any confirmed malicious behavior from this use case should be considered as a foundation for a new alert.

## Aggregate Count


## Blacklist Alert


## Whitelist Alert


## Levenshtein Score Alert


## Rolling Whitelist Alert
- Newly observed executable file names

## Shannon Entropy Score Alert


## Threshold Alert


# Log Source Examples
- Winows Security Event ID 4688
  - Secpol.exe
  - Advanced Audit Policy Configuration > System Audit Policies > Detailed Traking > Audit Process Creation: Enabled, Success
  - Include Command Line in 4688 Events
    - gpedit.msc
    - Computer Configuration > Administrative Templates > System > Audit Process Creation > Include command line in process creation events: Enabled


# Responses
- Acquire a copy of the suspicious file for further analysis.


# Possible False Postivies
