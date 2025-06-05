#### Enable Audit Computer Account Management
- MITRE: T1207
- Location: Computer Configuration > Policies > Windows Settings > Security Settings > Advanced Audit Policy Configuration > Audit 
Policies > Account Management
  - Policy: Audit Computer Account Management
    - Setting: Check Configure the following audit events:
    - Setting: Check Success
    - Setting: Check Failure
- Event ID: 4741, 4743
- Event Location: Domain Controller


### Enable Auditing of User Rights in AD to Control User Objects
- If a user is assigned the SeEnableDelegationPrivilege right in Active Directory it would allow control of other AD user objects.
- MITRE: T1098
- Location: Computer Configuration > Windows Settings > Security Settings > Advanced Audit Policy Configuration > Audit Policies > Policy Change
  - Policy: Audit Authorization Policy Change
- Event ID: Security\4704
- Event Location: Affected endpoint


## Audit AllowedToDelegateTo and AllowedToActOnBehalfOfOtherIdentity
-  With these rights, one can control another users or computers account without having to use their credentials.
- MITRE: T1098
  - Location: Computer Configuration > Windows Settings > Security Settings > Advanced Audit Policy Configuration > Audit Policies > DS Access
    - Policy: Audit Directory Service Changes
- Event ID: Security\5136
- Event Location: Domain Controller
