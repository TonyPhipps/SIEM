# Executive Summary


## Name

Detect Password Spraying via Windows Events


## Problem Statement

Password spraying targets the human tendency to both use weak password and reuse them. Adversaries attempt to avoid brute force detection and prevention by increasing time between password attempts. To account for the significant reduction in the speed of the attack, multiple accounts are targeted in parallel. Each of these parallel attacks are progressed slow enough to keep the account from reaching the failed attempts lockout policy.


## Objectives

- Detect low and slow brute force method known as password spraying.


## Compliance

.


## Mitre ATT&CK Framework

- Credential Access https://attack.mitre.org/tactics/TA0006/
- Brute Force https://attack.mitre.org/techniques/T1110/


## Assumptions and Limitations

.


# Analysis

Password spraying uses one password (e.g. 'Password01'), or a small list of passwords, that matches the complexity policy of the domain and may be a commonly used password. Logins are attempted with that password and many different accounts on a network to avoid account lockouts that would normally occur when brute forcing a single account with many passwords.


## Monitoring and Notifications

.


## Recommended Response Action(s)

- Determine source and destination account/systems
- Collect and analyze surrounding events
- Issue password change requirement to account owner(s)
- Determine if source/destination accounts/systems are compromised
- Consider quarantining, isolating, or disabling compromised accounts/systems


# Engineering

.


## Component Names



## Data Stream Analysis

- Windows Security Event ID 4624
- Windows Security Event ID 4625
- Windows Security Event ID 4648


## Assurance Metrics

.