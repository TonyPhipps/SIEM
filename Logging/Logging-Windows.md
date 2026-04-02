# GPO / Local Policies


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


## Audit Windows Filtering Platform Policy Changes
- The Windows Filtering Platform (WFP) may be abused to block the outbound traffic of running EDR agents based on specific hardcoded filter names.
- Event ID: 5441, 5447
- MITRE: T1562
- GPO Location: Computer Configuration > Windows Settings > Security Settings > Advanced Audit Policy Configuration > Audit Policies > Policy Change > Audit Filtering Platform Policy Change


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