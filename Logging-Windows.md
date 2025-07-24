# GPO / Local Policies

## Audit Process Creation
- Description: 
- Event ID: 4688, 4696
- MITRE: 
- GPO Location: Computer Configuration > Policies > Windows Settings > Security Settings > Advanced Audit Configuration > Detailed Tracking > Audit Process Creation
- ```reg add "hklm\software\microsoft\windows\currentversion\policies\system\audit" /v ProcessCreationIncludeCmdLine_Enabled /t REG_DWORD /d 1```


### Add Commandline to Process Creation
- Description: Adds commandline to Proceess Creation Events (4688)
- Event ID: 4688 impacted
- MITRE: 
- GPO Location: Computer Configuration > Administrative Templates > System > Audit Process Creation >Include command line in process creation events



## Audit Computer Account Management
- MITRE: T1207
- Event ID: 4741, 4743
- GPO Location: Computer Configuration > Policies > Windows Settings > Security Settings > Advanced Audit Policy Configuration > Audit Policies > Account Management > Audit Computer Account Management
    - Setting: Check Configure the following audit events:
    - Setting: Check Success
    - Setting: Check Failure
- Event Location: Domain Controller


## Audit Computer Account Management
- Event ID: 4738
- MITRE: T1207
- GPO Location: Computer Configuration > Windows Settings > Security Settings > Advanced Audit Policy Configuration > Audit Policies\Account Management > Audit User Account Management
    - Setting: Check Configure the following audit events:
    - Setting: Check Success
    - Setting: Check Failure
- Event Location: Domain Controller


## Audit User Rights in AD to Control User Objects
- Description: If a user is assigned the SeEnableDelegationPrivilege right in Active Directory it would allow control of other AD user objects.
- Event ID: Security 4704
- Event Location: Affected endpoint
- MITRE: T1098
- GPO Location: Computer Configuration > Windows Settings > Security Settings > Advanced Audit Policy Configuration > Audit Policies > Policy Change > Audit Authorization Policy Change


## Audit AllowedToDelegateTo and AllowedToActOnBehalfOfOtherIdentity
- With these rights, one can control another users or computers account without having to use their credentials.
- Event ID: Security\5136, Security\4738
- Event Location: Domain Controller
- MITRE: T1098
  - GPO Location: Computer Configuration > Windows Settings > Security Settings > Advanced Audit Policy Configuration > Audit Policies > DS Access > Audit Directory Service Changes


## Audit Code Integrity Failures
- Detect code integrity failures such as missing page hashes or corrupted drivers due unauthorized modification. This could be a sign of tampered binaries.
- Event ID: 5038, 6281
- MITRE: T1027.001
- GPO Location: Computer Configuration > Windows Settings > Security Settings > Advanced Audit Policy Configuration > Audit Policies > System > Audit System Integrity


## Audit Device Installations
- Audit installation of all devices
- Event ID: 6423, 4663 on affected endpoint
- MITRE: T1200
  - GPO Location: Computer Configuration > Windows Settings > Security Settings > Advanced Audit Policy Configuration > Audit Policies > Object Access > Audit Removable Storage > Audit Handle Manipulation


## Audit Policy Changes
- Event ID: 4719
- MITRE: T1112, T1562
- GPO Location: Computer Configuration > Windows Settings > Security Settings > Advanced Audit Policy Configuration > System Audit Policies > Policy Change > Audit Policy Change > Audit Authentication Policy Change
- GPO Location: Computer Configuration > Windows Settings > Security Settings > Advanced Audit Policy Configuration > System Audit Policies > Policy Change > Audit Policy Change > Audit Authorization Policy Change


## Audit ETW Logging Disablement
- Potential adversaries stopping ETW providers recording loaded .NET assemblies.
- Event ID: 4657
- MITRE: T1112, T1562
- GPO Location: Computer Configuration > Windows Settings > Security Settings > Advanced Audit Policy Configuration > System Audit Policies > Object Access > Audit Registry


## Audit GPO Scheduled Task
- Event ID: 5136
- Event Location: DC
- MITRE: T1053.005
- GPO Location:  Computer Configuration > Policies > Windows Settings > Security Settings > Advanced Audit Policy Configuration > System Audit Policies > Object Access > Audit Detailed File Share
- GPO Location:  Computer Configuration > Policies > Windows Settings > Security Settings > Advanced Audit Policy Configuration > System Audit Policies > DS Access
  - Policy: Audit Directory Services Changes


## Audit Windows Filtering Platform Policy Changes
- The Windows Filtering Platform (WFP) may be abused to block the outbound traffic of running EDR agents based on specific hardcoded filter names.
- Event ID: 5441, 5447
- MITRE: T1562
- GPO Location: Computer Configuration > Windows Settings > Security Settings > Advanced Audit Policy Configuration > Audit Policies > Policy Change > Audit Filtering Platform Policy Change


# Audit Bits-Client Operational Logs
```powershell
wevtutil set-log Microsoft-Windows-Bits-Client/Operational /enabled:true /rt:true /q:true
```

# PowerShell Transcription
https://devblogs.microsoft.com/powershell/powershell-the-blue-team/

- Set up PowerShell Transcription logging via GPO at
  - Windows Components -> Administrative Templates -> Windows PowerShell
- Turn On PowerShell Transcription: ON
  - Set Transcript output directory to the \\server\transcripts share path
  - Check Include Invocation Headers

# Windows Event Forwarding and Collector
https://docs.microsoft.com/en-us/windows/security/threat-protection/use-windows-event-forwarding-to-assist-in-intrusion-detection
https://docs.microsoft.com/en-us/windows/win32/wec/windows-event-collector
https://medium.com/palantir/windows-event-forwarding-for-network-defense-cb208d5ff86f
https://hackernoon.com/the-windows-event-forwarding-survival-guide-2010db7a68c4
http://zenshaze.com/wp/?p=57

- Set WEC timezone to UTC / GMT
- Set up GPO Computer Configuration > Policies > Administrative Templates > Windows Components > Event Forwarding > Configure Target Subscription Manager
- Set up subscriptions

# References
- https://github.com/atc-project/atomic-threat-coverage/tree/master/Atomic_Threat_Coverage/Logging_Policies