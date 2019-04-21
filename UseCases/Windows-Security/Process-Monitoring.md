## General Process Monitoring
Observe general process execution with the goal of understanding normal and detecting anomalies. Use of multiple visualizations, tables, and aggregation methods is recommended. Any confirmed malicious behavior from this use case should be considered as a foundation for a new alert.

- Running Process with Original File Deleted from Disk
- Newly-observed executables

#### Requirements
- Enable Process Creation (Event ID 4688)
  - Secpol.exe
  - Advanced Audit Policy Configuration > System Audit Policies > Detailed Traking > Audit Process Creation: Enabled, Success

- Include Command Line in 4688 Events
  - gpedit.msc
  - Computer Configuration > Administrative Templates > System > Audit Process Creation > Include command line in process creation events: Enabled

#### Methods
- Rolling Whitelist Alert

#### Responses
- Acquire a copy of the suspcious file for further analysis.
