# Log Sources
- Sysmon Event ID 11: FileCreate
- Windows Security Log Event ID 4656: A handle to an object was requested
- Host-Based IPS Signatures
- Other Application Logs

# Threat Hunting Use Cases
The use cases below are separated by the recommended detection method.

## Aggregate Count Use Cases
- Files Created in User Space
    - File Name ENDSWITH .exe, .dll, .scr, etc.
    - Aggregated by Process, Full File Path
- Files Created in System Space by an Executable Ran from User Space
    - Process Path NOT STARTSWITH c:\windows, c:\program files, c:\program files (x86)
    - File Name ENDSWITH .exe, .dll, .scr, etc.
    - Aggregated by Process, Full File Path

## Blacklist Alert
- Known Malicious File Names
- Files Created that Match System File Names (services.exe, taskmgr.exe, etc.)

## Whitelist Alert
- Unexpected Files Created in C:\Windows\System32\
- ... and other sensitive directories

## Levenshtein Score Alert
- Files created closely matching system file names

## Rolling Whitelist Alert

## Shannon Entropy Score Alert
- Files created with high entropy score

## Threshold Alert
