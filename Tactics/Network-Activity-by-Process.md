# Network Activity by Process Detection Content

Grouped by [Detection Method](/Detection-Methods.md)


## Aggregate Count


## Blacklist Alert
- mstsc.exe from an unexpected source user
- wscript.exe
- cscript.exe
- bitsadmin.exe


## Whitelist Alert
- Unexpected Process Names with network activity


## Levenshtein Score Alert
- Processes Matching or Similar to System Processes in Unexpected Directories


## Rolling Whitelist Alert
- Newly observed Process
- Newly observed Port
- Newly observed Source Port
- Newly observed Source Port Name
- Newly observed Destination Port
- Newly observed Destnation Port Name


## Shannon Entropy Score Alert
- Processes with Random Names


## Threshold Alert
- Source System, Destination System, Protocol=UDP where Source System Count exceeds threshold
- Source System, Destination System, Protocol=UDP where Destination System Count exceeds threshold
- Source System, Protocol=TCP where Count exceeds threshold
- Destination System, Protocol=TCP where Count exceeds threshold
- Bytes In Total, Bytes Out Total, Bytes In/Out Ratio where Bytes In/Out Ratio exceeds threshold
- Connection Length where Connection Length exceeds threshold


# Log Source Examples
- Sysmon Event ID 3


# Possible False Positives
