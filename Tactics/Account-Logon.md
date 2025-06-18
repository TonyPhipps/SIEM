# Account Logon Use Cases

Grouped by [Detection Method](/Detection-Methods.md)


## Aggregate Count
- Count of Successful/Failed Events per Hour
- Count of Successful/Failed Events per Source System
- Count of Successful/Failed Events per Source User


## Blacklist Alert
- Account Logon After Employee End Date
- Account Logon During Unusual Time of Day
- Account Logon During Unusual Day of Week
- Service Account Interactive Logon


## Whitelist Alert
- A user with an unrecognized naming convention is observed


## Levenshtein Score Alert
- 


## Rolling Whitelist Alert
- Newly Observed Source User, Source Host
- Newly Observed Source User, Destination Host


## Shannon Entropy Score Alert


## Threshold Alert
- User Name, Destination Host where Destination Host Count exceeds threshold
- Source Account, Outcome=Failure where Count exceeds threshold
- Source Account, Outcome=Failure, Destination Host where Destination Host Count exceeds threshold


# Log Source Examples
- Windows Security Event ID 4624: An account was successfully logged on
- Windows Security Event ID 4625: An account failed to log on
- Windows Security Event ID 4648: A logon was attempted using explicit credentials
- VPN Logons
- SSH Logons
- Application Logons


# Possible False Positives
- May pick up failed service accounts repeatedly trying to "do their job" with a locked account. Notifying the appropriate admin is a good idea here.
