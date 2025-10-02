# File Creation Detection Content

Grouped by [Detection Method](/Detection-Methods.md)

## Match Alert
- New Startup items created at
  - %AppData%\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
- File Created with Known-Malicious Name
- File Created in System Space by Process in User Space
- User creating a .dll file
- Any .mof file creation (WMI Consumer)


## Aggregate Count
- Count of User and Extension
- Count of User and File Path
- Count of Process and File Path
- 10 or more unique .txt file saved within 1 min


## Blacklist Alert
- File Created in System Folders by unexpected accounts (Local System)
  - c:\windows\
  - c:\windows\fonts\
  - c:\windows\system32\
- File Created in User Space by Privileged Account
- File Created that matches known-system executables
  - sethc.exe
  - utilman.exe
  - osk.exe
  - narrator.exe
  - magnify.exe
  - displayswitch.exe
  - etc
- Files typically related to ransomware "recovery"
  - .txt file with one or more of the following
    - Two or more !'s
    - name contains "decrypt"
    - name contains "recover"
    - name contains "restore"
    - File name starts with ! 


## Whitelist Alert
- File Created with Known-System Name in Unexpected Folder
- Executable File Created in User Space
- A file is created in a non-standard location (e.g. a non-ini/otf/compositefont/ttc/ttf/fon/dat/tmp file created in c:\windows\fonts)


## Levenshtein Score Alert
- Suspicious File Name Closely Matching System File Name


## Rolling Whitelist Alert
- Newly Observed Destination File Extension
- Newly Observed Source Process, Destination File Extension
- Newly Observed Source Process, Destination File Path
- Newly Observed Source User, Destination File Extension
- Newly Observed Source User, Destination File Path


## Shannon Entropy Score Alert
- File Created with High Entropy Score


## Threshold Alert


# Log Source Examples
- Microsoft Sysmon Event ID 11: FileCreate
- Windows Security Event ID 4656: A handle to an object was requested
- Host-Based IPS Signatures
- Cloud Bucket Logs
 

# Possible False Positives
