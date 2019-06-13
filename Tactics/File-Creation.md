# Use Cases by Detection Method

## Aggregate Count
- Executable Files Created in User Space
    - Aggregate by Process, Full File Path
- Files Created in System Space by an Executable Ran from User Space
    - Aggregate by Process, Full File Path

## Blacklist Alert
- File Created with Known-Malicious Name
- File Created with Known-System Name in Unexpected Folder

## Whitelist Alert
- File Created in System Folder
- File Created by Process
- File Created with Extension
- Executable File Created in User Space

## Levenshtein Score Alert
- Suspicious File Name Closely Matching System File Name

## Rolling Whitelist Alert
- File Extension
- Source Process and File Extension
- Source Process and File Path
- User and File Extension
- User and File Path

## Shannon Entropy Score Alert
- File Created with High Entropy Score

## Threshold Alert

# Log Source Examples
- Sysmon
  - Event ID 11: FileCreate
- Windows Security Log 
  - Event ID 4656: A handle to an object was requested
- Host-Based IPS Signatures