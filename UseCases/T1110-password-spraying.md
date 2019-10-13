# Executive Summary


## Name

Detect Password Spraying


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

Typically, management services over commonly used ports are used when password spraying. Commonly targeted services include the following:

    SSH (22/TCP)
    Telnet (23/TCP)
    FTP (21/TCP)
    NetBIOS / SMB / Samba (139/TCP & 445/TCP)
    LDAP (389/TCP)
    Kerberos (88/TCP)
    RDP / Terminal Services (3389/TCP)
    HTTP/HTTP Management Services (80/TCP & 443/TCP)
    MSSQL (1433/TCP)
    Oracle (1521/TCP)
    MySQL (3306/TCP)
    VNC (5900/TCP)


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

Event sources may include a combination of:
- Windows Security Event ID 4624
- Windows Security Event ID 4625
- Windows Security Event ID 4648


## Data Stream Analysis

.


## Assurance Metrics

.