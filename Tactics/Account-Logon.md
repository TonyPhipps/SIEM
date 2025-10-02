# Account Logon Detection Content

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
- Source User where Type=Failure AND Count > threshold
- Source User Count, Source Host where Type=Failure AND Source User Count > threshold
- Source User Count, Source Host where Type=Failure AND Source Host Count > threshold
- Source User Count, Destination Host where Type=Failure AND Source User Count > threshold
- Source User Count, Destination Host where Type=Failure AND Destination User Count > threshold
- User Name, Destination Host where Type=Failure AND Destination Host Count exceeds threshold
- Source Account, Outcome=Failure where Type=Failure AND Count exceeds threshold
- Source Account, Outcome=Failure, Destination Host where Type=Failure AND Destination Host Count exceeds threshold


# Log Source Examples
- Windows Security Event ID 4624: An account was successfully logged on
- Windows Security Event ID 4625: An account failed to log on
- Windows Security Event ID 4648: A logon was attempted using explicit credentials
- VPN Logons
- SSH Logons
- Application Logons


# Possible False Positives
- May pick up failed service accounts repeatedly trying to "do their job" with a locked account. Notifying the appropriate admin is a good idea here.
