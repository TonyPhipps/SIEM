# Use Cases by Detection Method

Grouped by [Detection Method](/Detection-Methods.md)

MITRE ATT&CK Framework: [Indicator Removal on Host (T1070)](https://attack.mitre.org/techniques/T1070/)

- Clearing event logs is a way for adversaries to clear their tracks. With proper event collection, this should occure seldom, making it a relatively easy detection method. Event logs set to "fill" rather than roll or that allow a large enough rolling file size that it causes system administrators to want to clear the logs should be avoided.

## Aggregate Count


## Blacklist Alert
- Event log cleared

## Whitelist Alert


## Levenshtein Score Alert



## Rolling Whitelist Alert
- Newly Observed Source user clearing logs


## Shannon Entropy Score Alert


## Threshold Alert
- Ten or more occurrences of 1104


## LogSource Examples
- Windows Security Event ID 1102: The audit log was cleared
- Windows Security Event ID 1104: The security Log is now full


## Response Options
- Contact the source account owner and determine if the activity was authorized.
- Investigate the last 8 hours of centrally-collected logs from the affected system to reveal any malicious activity.
- Contain the system with a security tool that blocks traffic, then proceed with forensics.
- Contain the system by disconnecting all network devices, then proceed with forensics.


## Possible False Postivies
