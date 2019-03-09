SIEM Use Cases Based on Windows Logs

- [Event Logs](#event-logs)
  - [Brute Force Attempts (4625)](#brute-force-attempts-4625)
  - [Clearing of Event Logs (1102)](#clearing-of-event-logs-1102)
  - [New Service Creation (4697)](#new-service-creation-4697)
  - [Newly observed executable (4688)](#newly-observed-executable-4688)
  - [Non-default PowerShell module use (4103)](#non-default-powershell-module-use-4103)
  - [Anomalous User Interactive Logon (4624, Types 2,10)](#anomalous-user-interactive-logon-4624-types-210)
  - [Anomalous Member Added to Admin Group (4728, 4732, 4756)](#anomalous-member-added-to-admin-group-4728-4732-4756)
  - [Service Account Activity Originating from Unauthorized System](#service-account-activity-originating-from-unauthorized-system)
  - [User Logon More than an Hour Outside Expected Times](#user-logon-more-than-an-hour-outside-expected-times)
  - [User Logged In to Multiple Systems Interactively](#user-logged-in-to-multiple-systems-interactively)
  - [Account Use After Employee End Date](#account-use-after-employee-end-date)
- [Data Collection](#data-collection)
  - [Trusted Certificate Authorities on endpoints](#trusted-certificate-authorities-on-endpoints)
  - [Running Process without a Parent Process ID](#running-process-without-a-parent-process-id)
  - [Running Process with Original File Deleted from Disk](#running-process-with-original-file-deleted-from-disk)
  - [System/Hidden Attributes Enabled on Unexpected Files/Folders](#systemhidden-attributes-enabled-on-unexpected-filesfolders)

# Event Logs
These use cases depend on Windows logs. Some will need to be enabled, but all are found in the various Event Logs.

## Brute Force Attempts (4625)
An influx of failed logon attempts (4625) indicates a possible brute force attempt on an account.

##### Requirements
- Enable "Audit Logon Events > Failure" via local security or GPO
- SecPol > Local Policies > Audit Policy > Audit Logon Events > Check Failure
- Ensure event ID 4625 from the Windows Security log is collected/forwarded appropriately.

##### Methods
- Use a Threshold Alert to indicate when > 5 failures occurred on a single account in 1 hour.
- Use a Threshold Alert based on your normal activity to indicate when the failure count is 2x the normal count (across all accounts).

#### Responses
- Contact the account owner and determine if the issue is a configuration error.
- Block the traffic with an in-line security device.
- Block the traffic with the local firewall or other security software.

#### Bonuses
- This method may pick up failed service accounts repeatedly trying to "do their job" with a locked account. Notifying the appropriate admin is a good idea here.


## Clearing of Event Logs (1102)
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


## New Service Creation (4697)
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


## Newly observed executable (4688)                         

#### Requirements
#### Methods
- Rolling Whitelist Alert 
#### Responses

## Non-default PowerShell module use (4103)

#### Requirements
#### Methods
- Whitelist Alert 
#### Responses

## Anomalous User Interactive Logon (4624, Types 2,10)

#### Requirements
#### Methods
- Rolling Whitelist Alert
#### Responses

## Anomalous Member Added to Admin Group (4728, 4732, 4756)

#### Requirements
#### Methods
- Blacklist Alert
#### Responses

## Service Account Activity Originating from Unauthorized System
#### Methods
- Whitelist Alert

## User Logon More than an Hour Outside Expected Times
- Blacklist Alert
## User Logged In to Multiple Systems Interactively
- Threshold Alert

## Account Use After Employee End Date
- Blacklist Alert









# Data Collection
- These data points are not typically stored in Event Logs. Instead, the data must be collected periodically with a script.

## Trusted Certificate Authorities on endpoints
- Aggregate Count
#### Requirements
#### Methods
#### Responses

## Running Process without a Parent Process ID
- Blacklist Alert
#### Requirements
#### Methods
#### Responses

## Running Process with Original File Deleted from Disk
#### Requirements
#### Methods
#### Responses

## System/Hidden Attributes Enabled on Unexpected Files/Folders
#### Requirements
#### Methods
#### Responses
