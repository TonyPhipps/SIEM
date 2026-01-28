This document aims to assist in inspection of a c:\users\userprofile folder for lightweight forensics.

# General Review of Contents
Some sections will be highlighted, but a general, high-level review may reveal things specific to the user/host.


## Review Powershell Transcript Logs
If enabled, the default stores PowerShell Transcript logs under folders named by the date up to the month in Documents.
```$UserDir\Documents\########```


## Review RDP Cache
These are literal bitmap "screenshots" of the RDP session. You can parse them (using tools like BMC-Tools) to see what the attacker was looking at on the other machine.
```AppData\Local\Microsoft\Terminal Server Client\Cache\```


## Review contents of Appdata\Local\Temp
Malware often unpacks itself here, runs, and then attempts to delete itself. However, it frequently fails to clean up fully, leaving behind "droppers" or partial scripts.


# Helpful PowerShell Scripts
Create a variable for the root of the User Directory
```$UserDir="C:\Path\To\UserDir"```


## Search for Suspicous Executables
```Get-ChildItem -Path $UserDir -Recurse -Force -ErrorAction SilentlyContinue | Where-Object { $_.Extension -match "\.(exe|bat|ps1|vbs|js|jar|scr|pif|cmd|com)$" } | Select-Object LastWriteTime, CreationTime, Length, FullName | Sort-Object LastWriteTime -Descending | Format-Table -AutoSize```


## Search for Suspicious Double-File Extensions
```Get-ChildItem -Path $UserDir -Recurse -Force | Where-Object { $_.Name -match "\.[a-zA-Z]{3,4}\.exe$" } | Select-Object FullName```


## Inspect Startup Folder
```Get-ChildItem -Path "$UserDir\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup" -Force -ErrorAction SilentlyContinue | Select-Object LastWriteTime, Name, Length, FullName | Format-Table -AutoSize```


## Inspect OneDrive Upload Folder
If the user uses OneDrive, the logs can tell you if massive amounts of data were suddenly synced (uploaded) to the cloud.
```Get-ChildItem -Path "$UserData$\AppData\Local\Microsoft\OneDrive\logs\" -Force -ErrorAction SilentlyContinue | Select-Object LastWriteTime, Name, Length, FullName | Format-Table -AutoSize```


## Review Recent Powershell Commands
Attackers love PowerShell for "living off the land" (using built-in tools for malicious ends).
```Get-Content -Path "$UserDir\AppData\Roaming\Microsoft\Windows\PowerShell\PSReadLine\ConsoleHost_history.txt"```


## Scan for Large Staging Files
```
Get-ChildItem -Path $UserDir -Recurse -Force -ErrorAction SilentlyContinue | 
    Where-Object { $_.Extension -match "\.(zip|rar|7z|tar|gz)$" -and $_.Length -gt 50MB } | 
    Select-Object LastWriteTime, @{N='Size(MB)';E={[math]::round($_.Length/1MB,2)}}, FullName
```


## Review Symantec Endpoint Protection Logs
(If present)
```
$SymantecDetections = Import-Csv -Path "$UserDir\AppData\Local\Symantec\Symantec Endpoint Protection\Logs\*.Log" -Header "Event Type","Real Action","Action Taken","User Name","Risk Name","File Path","Description","Scan ID","Time Hex","Event Source","Severity","Action Type","Location","Application Name"
$SymantecDetections | Format-Table -AutoSize
```


## Review Edge Browsing History
```
$HistoryFile = "$UserDir\AppData\Local\Microsoft\Edge\User Data\Default\History"
Get-Content -Path $HistoryFile -Encoding Byte -ReadCount 0 | 
    Select-String "http[s]?://[a-zA-Z0-9./?=_-]+" -AllMatches | 
    ForEach-Object { $_.Matches.Value } | 
    Select-Object -Unique
```


## Review Edge Logon Emails
This scrapes the file for Email Addresses. This tells you where they have accounts and who they logged in as (e.g., personal emails vs. work emails).
```
Get-Content -Path "$UserDir\AppData\Local\Microsoft\Edge\User Data\Default\Login Data" -Encoding Latin1 -ReadCount 0 | 
    Select-String -Pattern "\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}\b" -AllMatches | 
    ForEach-Object { $_.Matches.Value } | Select-Object -Unique
```


## Review Edge Logon Addresses
This scrapes the file for URLs. This tells you where they have accounts and who they logged in as (e.g., personal emails vs. work emails).
```
Get-Content -Path "$UserDir\AppData\Local\Microsoft\Edge\User Data\Default\Login Data" -ReadCount 0 | 
    Select-String -Pattern "https?://[a-zA-Z0-9.\-]+(?:\.[a-zA-Z]{2,})+(?:/[^\s]*)?" -AllMatches | 
    ForEach-Object { $_.Matches.Value } | Select-Object -Unique
```


## Review Edge Cookies
This scrapes for Domains. This helps you identify if the user has active sessions on suspicious sites (e.g., mega.nz, protonmail.com) or cloud consoles (aws.amazon.com) without needing a password.
```
Get-Content -Path "$UserDir\AppData\Local\Microsoft\Edge\User Data\Default\Cookies" -ReadCount 0 | 
    Select-String -Pattern "\b(?:[a-z0-9](?:[a-z0-9-]{0,61}[a-z0-9])?\.)+[a-z0-9][a-z0-9-]{0,61}[a-z]\b" -AllMatches | 
    ForEach-Object { $_.Matches.Value } | 
    Where-Object { $_ -match "\.(com|net|org|io|gov|edu|cn|ru|xyz)$" } | # Filter for common TLDs to reduce noise
    Select-Object -Unique
```


## Review Edge Autofill Data
This file is messy, so this command is targeted. It looks for Keywords (like "password", "upload", "hack") to see if they were typed into search bars or forms.
```
Get-Content -Path "$UserDir\AppData\Local\Microsoft\Edge\User Data\Default\Web Data" -ReadCount 0 | 
    Select-String -Pattern $Keywords -AllMatches | 
    ForEach-Object { $_.Matches.Value } | 
    Group-Object | Sort-Object Count -Descending | Format-Table Count, Name -AutoSize
```


# Third Party Tools


## Review Thumbnail Cache
Even if the attacker deletes the incri minating images or files, Windows keeps a thumbnail database so Explorer can load icons quickly. If the attacker downloaded a screenshot of a password, or a picture of a diagram, and then deleted it, the thumbnail might still be in this database. It proves the file existed.
Download, then open all files in this folder at once ```$UserDir\AppData\Local\Microsoft\Windows\Explorer```
https://thumbcacheviewer.github.io/


## Investigate "Recent" Links
- Use Zimmmerman's LECmd.exe to scan Recent docs and investigate output for suspicous activity. Files even clicked on in this directory will modify them while inspecting, so tread carefully.
- The LNK file's "Date Modified" timestamp indicates the last time the user opened/interacted with that specific target file or folder via Windows Explorer (or an Open/Save dialog).
```LECmd.exe -d "$UserDir\AppData\Roaming\Microsoft\Windows\Recent" --csv d:\temp --html d:\temp --xml d:\temp --pretty```