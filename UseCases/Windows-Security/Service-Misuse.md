## Service Misuse
MITRE ATT&CK Framework: [Modify Existing Service (T1031)](https://attack.mitre.org/techniques/T1031), [New Service (T1050)](https://attack.mitre.org/techniques/T1050), [Service Execution (T1035)](https://attack.mitre.org/techniques/T1035/)

Service creation can be used by an adversary to achieve persistence.

#### Requirements
- Ensure event ID 4697 from the Windows Security log is collected/forwarded appropriately.

#### Methods
- Build a "Rolling Whitelist" of the "Service File Name" and "Service Account" fields. Review the list regularly, and build a Rolling Whitelist Alert if the frequency of new entries is low enough.
- ...OR... Manually build a large filter of expected services, and alert on anything not listed (Whitelist Alert).

#### Responses
- Consider the file path of the "Service File." Is it resting in a strange location, like user writeable folders or shares?
- Determine if the affected system should logically have this type of service created.
- Contact the source account owner and determine if the activity was authorized.
- Obtain a copy of the "Service File" and analyze with a malware detonation sandbox.
- Conduct static analysis on the "Service File".

