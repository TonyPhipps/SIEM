# Account Logon Use Cases

Grouped by [Detection Method](/Detection-Methods.md)


## Aggregate Count
- Count of Events per Hour
- Count of Events per Source System
- Count of Events per Source User


## Blacklist Alert
- Account Logon After Employee End Date
- Service account logs on interactively


## Whitelist Alert
- Logon More than an Hour Outside Expected Times
- A user with an unrecognized naming convention is observed


## Levenshtein Score Alert
- Account Created With Name Similar to "Admin"
- Account Created With Name Similar to "Administrator"
- Account Created With Name Similar to the local service account naming convention


## Rolling Whitelist Alert
- Newly Observed Source User
- Newly Observed Source User=Service Account, Type=Interactive
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


# Possible False Positives
- May pick up failed service accounts repeatedly trying to "do their job" with a locked account. Notifying the appropriate admin is a good idea here.