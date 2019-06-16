# Use Cases by Detection Method

Grouped by [Detection Method](/Detection-Methods.md)

## Aggregate Count


## Blacklist Alert
- User Logged In to 3 or more Systems Interactively
- Anomalous Servic Account Interactive Logon
- Account Logon After Employee End Date
- User Logon More than an Hour Outside Expected Times
- Over 5 failures occurred on a single account in 1 hour
- Over 5 failures occurred from one source account to more than 1 destination account in 1 hour
- 5 failures occurred on a single account in 1 hour
- 
## Whitelist Alert


## Levenshtein Score Alert


## Rolling Whitelist Alert


## Shannon Entropy Score Alert


## Threshold Alert

# Log Source Examples
- Winows Security Event ID 4624
- Winows Security Event ID 4625
- Winows Security Event ID 4648

# Responses
- Contact the account owner and determine if the issue is a configuration error.
- Block the traffic from the source IP.

# Possible False Postivies
- This method may pick up failed service accounts repeatedly trying to "do their job" with a locked account. Notifying the appropriate admin is a good idea here.