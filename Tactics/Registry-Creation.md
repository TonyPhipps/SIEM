# File Access Detection Content

Grouped by [Detection Method](/Detection-Methods.md)


### Match Alert
- Startup items
- "HKU\{SID}\Software\Microsoft\Windows\CurrentVersion\Run"
- "HKU\{SID}\Software\Microsoft\Windows\CurrentVersion\RunOnce"
- "HKU\{SID}\Software\Microsoft\Windows\CurrentVersion\RunOnceEx"
- "HKU\{SID}\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\Run"
- "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run"
- "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunOnce"
- "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunOnceEx"
- "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\Run"
- "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows NT\CurrentVersion\Winlogon\Userinit"

- Services
  - "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services"
  - "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunServicesOnce"
  - "HKU\{SID}\Software\Microsoft\Windows\CurrentVersion\RunServicesOnce"
  - "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunServices"
  - "HKU\{SID}\Software\Microsoft\Windows\CurrentVersion\RunServices"

- UAC bypass
  - "HKU\*\Software\Microsoft\Windows\CurrentVersion\Policies\System\EnableLUA"
  - "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System\EnableLUA"

- Others
  - "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows NT\CurrentVersion\Winlogon\Shell"
  - "HKU\{SID}\Software\Microsoft\Windows NT\CurrentVersion\Windows"
  - "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\"
  - "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\"
  - "HKU\{SID}\Software\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders"
  - "HKU\{SID}\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders"
  - "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders"
  - "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders"


## Aggregate Count


## Blacklist Alert



## Whitelist Alert


## Levenshtein Score Alert


## Rolling Whitelist Alert


## Shannon Entropy Score Alert


## Threshold Alert


# Log Source Examples
 

# Possible False Positives
