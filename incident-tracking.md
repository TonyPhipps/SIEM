Tables and their fields are listed below.
- Fields are focused on enabling information sharing between analysts and useful metrics.
- Fields with dropdowns have selection values provided in-line.
- Tables may "lookup" entries in another table to establish a relationship.

- [Incidents](#incidents)
- [Indicator of Compromise](#indicator-of-compromise)
- [Adversary](#adversary)
- [Software](#software)
- [Affected Systems](#affected-systems)
- [Affected Users](#affected-users)
- [Attack Techniques](#attack-techniques)
- [Emails](#emails)
- [Use Cases/Plays](#use-casesplays)
- [Work Log](#work-log)
- [Mitigations](#mitigations)
- [Owner](#owner)
- [Signature](#signature)

# Incidents
- Adversary (Lookup)
- Signature (lookup)
  - Use Cases/Plays (Lookup)
    - Attack Techniques (Lookup)
    - Mitigations (Lookup)
- Affected Software (Lookup)
- Affected Systems (Lookup)
- Affected Users (Lookup)
- Emails (Lookup)
- Related Incidents (Lookup)
- Work Log (Lookup)
- Resolutions (Lookup)
- Owner (Lookup)
- Date Activity Started
- Date Activity Stopped
- Date Client Notified
- Date Closed
- Closed By
- Date Reported
- Reported By
- Date Reviewed
- Reviewed by
- Date Last Updated
- Last updated by
- Date Created
- Created By
- Title/Subject
- Executive Summary
- Internal Comments
- Origination
  - Threat Hunting
  - SIEM Correlation
  - Alarm from EDR
  - Alarm from AV
  - Alarm from IDS/IPS
  - Reported by Internal User
  - Reported by Third Party
  - Reported by Adversary
  - Threat Hunting
  - Audit
- Origination Details
- External Related IDs
- Priority
  - Emergency
  - High
  - Medium
  - Low
- Outcome
  - True Positive
  - False Positive
  - Benign
  - Indeterminate
- Root Cause
  - Training/Awareness
  - Policy Violation
  - Missing Patch
  - Zero Day
  - Configuration Weakness
  - Power Failure
  - Hardware Failure
  - Software Failure
  - Sabotage
- Scope of Compromise
  - Initial Access
  - Execution
  - Persistence
  - Privilege Escalation
  - Defense Evasion
  - Credential Access
  - Discovery
  - Lateral Movement
  - Collection
  - Command and Control
  - Exfiltration
  - Impact
  - No Compromise
- Status
  - New
  - In Progress
  - Closed
  - Pending
  - On Hold
  - Cancelled
  - Duplicate
- Escalation Level
  - Level 1
  - Level 2
  - Level 3
  - External
- Attachments
- Change Log


# Indicator of Compromise
- IP
- Hostname
- Domain Name
- Date Last Observed


# Adversary
- Name
- Aliases
- References
- Signatures (lookup)
  - Attack Techniques (lookup)



# Software
- Vendor
- Product
- Version

# Affected Systems
- MAC(s)
- IP(s)
- Hostname
- User (Lookup)
- Location
- Operating System
- Operating System Version

# Affected Users
- Name
- Email
- Phone
- Username

# Attack Techniques
- ID
- Name
- URL

# Emails
- Subject
- Sender
- Recipients
- Body
- Attachments
- Date Sent
- Header


# Use Cases/Plays
- Title
- Link

# Work Log
- Owner (Lookup)
- Date and Time of Work
- Title
- Details

# Mitigations
- Title
- Description

# Owner
- Username
- Full Name


# Signature
- Name
- Use Case (Lookup)
- Event Feed (lookup)
- Adversaries (lookup)
- Use Case (lookup)
  - Attack Techniques (lookup)
- Date Last Reviewed
- Date Last Validated
- Severity
- Fidelity
- Status
- References
- Attack Simluation
- Notess
- Change Log
- Sample Source Events
- Pseudologic
- Deployed Logic
- Sigma Logic

