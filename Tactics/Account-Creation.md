# Account Creation Use Cases

Grouped by [Detection Method](/Detection-Methods.md)


## Aggregate Count
- Count of Events per Source User
- Count of Events per Hour
 

## Blacklist Alert
- Account Created Outside Business Hours
- Account Created by Non-Privileged User
- Local Account Created 


## Whitelist Alert
- Account Created With Unrecognized Naming Convention


## Levenshtein Score Alert
- Account Created With Name Similar to "Admin"
- Account Created With Name Similar to "Administrator"
- Account Created With Name Similar to the local service account naming convention


## Rolling Whitelist Alert
- Newly Observed Source User


## Shannon Entropy Score Alert
- Account Created With Randomized Name


## Threshold Alert
- Count exceeds threshold


# Log Source Examples
- Windows Security Event ID 4720: A user account was created


# Possible False Positives
