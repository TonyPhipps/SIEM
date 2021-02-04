# File Creation Use Cases

Grouped by [Detection Method](/Detection-Methods.md)

## Match Alert
- Startup items
  - %AppData%\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
- File Created with Known-Malicious Name
- File Created in System Space by Process in User Space


## Aggregate Count
- Count of User and Extension
- Count of User and File Path
- Count of Process and File Path


## Blacklist Alert
- File Created in System Folder
- File Created in User Space by Privileged Account
- File Created in System Space by Nonprivileged Account
- File Created that matches known-system executables (pre-staging)
  - sethc.exe
  - utilman.exe
  - osk.exe
  - narrator.exe
  - magnify.exe
  - displayswitch.exe
- Files typically related to ransomware "recovery"
  - RECOVER-FILES.TXT (egregor)
  - [HOW TO RECOVER FILES].TXT (ProLock)
  - \_readme.txt (Weui, Lisp, Epor)
  - hard2decrypt_readme.txt (Hard2decrypt)
  - HELP_DECRYPT_YOUR_FILES.txt (Sext)
  - !!! YourDataRestore !!! txt (STOP)
  - !!RestoreProcess!!!.txt (STOP)
  - !!!!RESTORE_FILES!!!.txt (STOP)
  - !!!DATA_RESTORE!!!.txt (STOP)
  - !!!DECRYPTION__KEYPASS__INFO!!!.txt (STOP)
  - !!!WHY_MY_FILES_NOT_OPEN!!!.txt (STOP)
  - !!SAVE_FILES_INFO!!!.txt (STOP)
  - !readme.txt (STOP)


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
