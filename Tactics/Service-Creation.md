# Use Cases by Detection Method

Grouped by [Detection Method](/Detection-Methods.md)

MITRE ATT&CK Framework: [New Service (T1050)](https://attack.mitre.org/techniques/T1050), [Service Execution (T1035)](https://attack.mitre.org/techniques/T1035/)

- Service creation can be used by an adversary to achieve persistence.

## Aggregate Count


## Blacklist Alert


## Whitelist Alert
- Anomalous Services

## Levenshtein Score Alert


## Rolling Whitelist Alert
- Newly observed combination of "Service File Name" and "Service Account"

## Shannon Entropy Score Alert


## Threshold Alert


# Log Source Examples
- Windows Security Event ID 4697


# Response Options
- Consider the file path of the "Service File." Is it resting in a strange location, like user writeable folders or shares?
- Determine if the affected system should logically have this type of service created.
- Contact the source account owner and determine if the activity was authorized.
- Obtain a copy of the "Service File" and analyze with a malware detonation sandbox.
- Conduct static analysis on the "Service File".


## Possible False Postivies
