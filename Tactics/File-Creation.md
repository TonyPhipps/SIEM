# File Creation Use Cases

Grouped by [Detection Method](/Detection-Methods.md)

## Aggregate Count
- Count of User and Extension
- Count of User and File Path
- Count of Process and File Path


## Blacklist Alert
- File Created with Known-Malicious Name
- File Created with Known-System Name in Unexpected Folder
- File Created in System Space by Process in User Space
- File Created in User Space by Privileged Account
- File Created in System Space by Nonprivileged Account
- A file is created in a non-standard location (e.g. a non-ini/otf/compositefont/ttc/ttf/fon/dat/tmp file created in c:\windows\fonts)


## Whitelist Alert
- File Created in System Folder
- File Created by Process
- File Created with Extension
- Executable File Created in User Space


## Levenshtein Score Alert
- Suspicious File Name Closely Matching System File Name


## Rolling Whitelist Alert
- Newly Observed Destination File Extension
- Newly Observed Source Process and Destination File Extension
- Newly Observed Source Process and Destination File Path
- Newly Observed Source User and Destination File Extension
- Newly Observed Source User and Destination File Path


## Shannon Entropy Score Alert
- File Created with High Entropy Score


## Threshold Alert


# Log Source Examples
- Microsoft Sysmon Event ID 11: FileCreate
- Windows Security Event ID 4656: A handle to an object was requested
- Host-Based IPS Signatures
 

# Response Options


## Possible False Positives
