## Clearing of Event Logs
MITRE ATT&CK Framework: [Indicator Removal on Host (T1070)](https://attack.mitre.org/techniques/T1070/)

- Clearing event logs is a way for adversaries to clear their tracks. With proper event collection, this should occure seldom, making it a relatively easy detection method. Event logs set to "fill" rather than roll or that allow a large enough rolling file size that it causes system administrators to want to clear the logs should be avoided.

#### Requirements
- Ensure event ID 1102 from the Windows Security log is collected/forwarded appropriately.

#### Methods
- Simply alert on every occurrence (Blacklist Alert).

#### Responses
- Contact the source account owner and determine if the activity was authorized.
- Investigate the last 8 hours of centrally-collected logs from the affected system to reveal any malicious activity.
- Contain the system with a security tool that blocks traffic, then proceed with forensics.
- Contain the system by disconnecting all network devices, then proceed with forensics.
