# Use Cases by Detection Method

Grouped by [Detection Method](/Detection-Methods.md)

MITRE ATT&CK Framework: [Modify Existing Service (T1031)](https://attack.mitre.org/techniques/T1031)

- Service modification can be used by an adversary to achieve persistence.

## Aggregate Count


## Blacklist Alert


## Whitelist Alert


## Levenshtein Score Alert


## Rolling Whitelist Alert
- Newly observed Source User

## Shannon Entropy Score Alert


## Threshold Alert


# Log Source Examples



# Response Options
- Determine if the source account should be modifying services at all.
- Contact the source account owner and determine if the activity was authorized.
- Obtain a copy of the "Service File" and analyze with a malware detonation sandbox.
- Conduct static analysis on the "Service File".


## Possible False Postivies
