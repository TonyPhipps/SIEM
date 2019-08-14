# Use Cases by Detection Method

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


## Rolling Whitelist Alert
- Newly Observed Logon
- Newly Observed Service Account Interactive Logon

## Shannon Entropy Score Alert


## Threshold Alert
- Logon to 3 or more Systems Simultaneously
- Over 5 failures occurred on a single account within 1 hour
- Over 5 failures occurred from one source account to more than 1 destination account within 1 hour


# Log Source Examples
- Windows Security Event ID 4624: An account was successfully logged on
- Windows Security Event ID 4625: An account failed to log on
- Windows Security Event ID 4648: A logon was attempted using explicit credentials


# Response Options
- Contact the account owner and determine if the issue is a configuration error.
- Block the traffic from the source IP.


## Possible False Postivies
- This method may pick up failed service accounts repeatedly trying to "do their job" with a locked account. Notifying the appropriate admin is a good idea here.