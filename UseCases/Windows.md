# Event Logs

| Description                                              | [Method](/Detection-Methods.md) | Notes |
| -------------------------------------------------------- | ------------------------------------------------------- | ----- |
| Brute Force Attempts (4625)                              | Threshold Alert                                         |       |
| Clearing of Event Logs (1102)                            | Blacklist Alert                                         |       |
| New Service Creation (4697)                              | Rolling Whitelist Alert                                 |       |
| Newly observed executable (4688)                         | Rolling Whitelist Alert                                 |       |
| Non-default PowerShell module use (4103)                 | Whitelist Alert                                         |       |
| Anomalous User Interactive Logon (4624, IDs 2,10)        | Rolling Alert                                           |       |
| Anomalous Member Added to Admin Group (4728, 4732, 4756) | Blacklist Alert                                         |       |
| Anomalous Install via Microsoft Windows Installer (1040) | Rolling Whitelist Alert                                 |       |


## Brute Force Attempts (4625)
An influx of failed logon attempts (4625) indicates a possible brute force attempt on an account.

### Requirements
- Enable "Audit Logon Events > Failure" via local security or GPO
- SecPol > Local Policies > Audit Policy > Audit Logon Events > Check Failure
- Ensure event ID 4625 from the Windows Security log is collected/forwarded appropriately.

### Methods
- Use a threshold alert to indicate when > 5 failures occurred on a single account in 1 hour.
- Use a threshold alert based on your normal activity to indicate when the failure count is 2x the normal count (across all accounts).

### Responses
- Contact the account owner and determine if the issue is a configuration error.
- Block the traffic with an in-line security device.
- Block the traffic with the local firewall or other security software.

### Bonuses
- This method may pick up failed service accounts repeatedly trying to "do their job" with a locked account. Notifying the appropriate admin is a good idea here.


## Clearing of Event Logs (1102)
Clearing event logs is a way for adversaries to clear their tracks. With proper event collection, this should occure seldom, making it a relatively easy detection method. Event logs set to "fill" rather than roll or that allow a large enough rolling file size that it causes system administrators to want to clear the logs should be avoided.

### Requirements
- Ensure event ID 1102 from the Windows Security log is collected/forwarded appropriately.

### Methods
- Simply alert on every occurrence.

### Exceptions
- Implement exceptions as they are discovered in the environment. If event logs are set to roll, rather than fill, this should minimize the frequency and number of required exceptions.

### Responses
- Contact the source account owner and determine if the activity was authorized.
- Investigate the last 8 hours of centrally-collected logs from the affected system to reveal any malicious activity.
- Contain the system with a security tool that blocks traffic, then proceed with forensics.
- Contain the system by disconnecting all network devices, then proceed with forensics.


## New Service Creation (4697)
Service creation can be used by an adversary to achieve persistence.

### Requirements
- Ensure event ID 4697 from the Windows Security log is collected/forwarded appropriately.

### Methods
- Build a "Rolling Whitelist" of created service, specifically the "Service File Name" and "Service Account" fields. Review the list regularly, and build an alert if the frequency of new entries is low enough.
- ...OR... Manually build a large filter of expected services, and alert on anything not listed (Whitelist Alert).

### Responses
- Consider the file path of the "Service File." Is it resting in a strange location, like user writeable folders or shares?
- Determine if the affected system should logically have this type of service created.
- Contact the source account owner and determine if the activity was authorized.
- Obtain a copy of the "Service File" and analyze with a malware detonation sandbox.
- Conduct static analysis on the "Service File".

### Exceptions
- Implement exceptions as they are discovered in the environment.

# Data Collection (not in default Microsoft Logs)

| Description                                                  | [Method](/Detection-Methods.md) | Notes |
| ------------------------------------------------------------ | ------------------------------------------------------- | ----- |
| Trusted Certificate Authorities on endpoints                 | Aggregate Count                                         |       |
| Running Process without a Parent Process ID                  | Blacklist Alert                                         |       |
| Running Process With Original File on Disk Deleted           |                                                         |       |
| System/Hidden Attributes Enabled on Unexpected Files/Folders |                                                         |       |


