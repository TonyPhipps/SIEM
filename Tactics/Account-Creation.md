# Use Cases by Detection Method

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
- Account Created With Name Similar to "svc" (or the local service account naming convention)


## Rolling Whitelist Alert
- Newly Observed Source User


## Shannon Entropy Score Alert
- Account Created With Randomized Name


## Threshold Alert
- More than 1 Account Created Per Minute


# Log Source Examples
- Windows Security Event ID 4720: A user account was created


# Response Options


## Possible False Positives
