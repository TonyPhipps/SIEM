# TODO: Merge into Tactics md's

# Use Cases by Detection Method

Grouped by [Detection Method](/Detection-Methods.md)

## Aggregate Count
- Count of Events per Source User
- Count of Events per Target User



## Blacklist Alert
- Member Added to Privileged Group (e.g. destination group contains "admin")
- Smart Card Logon Disabled (in environments with required 2FA)



## Whitelist Alert
- Non-Privileged User Modifying Accounts
- Non-Authorized Service Account Modifying Accounts
- System Account Modifying Accounts
- Non-Privileged User Added to Privileged Group


## Levenshtein Score Alert


## Rolling Whitelist Alert
- Newly Observed Source User


## Shannon Entropy Score Alert


## Threshold Alert
- Source User, Destination User where Destination User Count exceeds threshold


# Log Source Examples
- Windows Security Event ID 4728: A member was added to a security-enabled global group
- Windows Security Event ID 4738: A user account was changed
- Windows Security Event ID 4732: A member was added to a security-enabled local group
- Windows Security Event ID 4756: A member was added to a security-enabled universal group
- Windows Security Event ID 4767: A user account was unlocked
- Windows Security Event ID 4722: A user account was enabled
- Windows Security Event ID 4723: An attempt was made to change an account's password
- Windows Security Event ID 4724: An attempt was made to reset an accounts password
- Windows Security Event ID 4725: A user account was disabled
- Windows Security Event ID 4726: A user account was deleted
- Windows Security Event ID 4781: The name of an account was changed


# Possible False Positives
