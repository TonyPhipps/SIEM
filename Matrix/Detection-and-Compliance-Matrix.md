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
- [Playbooks](#Playbooks)
- [Work Log](#work-log)
- [Mitigations](#mitigations)
- [Owner](#owner)
- [Signature](#signature)
- [Hunts](#hunts)
- [Hunt Backlog](#hunt-backlog)


# Incidents
- Adversary (Lookup)
- Signature (lookup)
  - Playbooks (Lookup)
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
- Internal IP(s)
- Public IP(s)
- MAC(s)
- Hostname
- User (Lookup)
- Location
- Platform
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


# Playbooks
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


# Playbook



# Signatures
- Name
- Playbook (Lookup)
- Event Feed (lookup)
- Adversaries (lookup)
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


# Hunts
- Name - Hypothesis statement - what is being hunted for
- Description - Details to provide context surrounding who, what, when, where, how, etc. Anticipate questions and answer them here.
- Data Sources - Types of data to be analyzed and where they come from
- Duration - Dataset mininum and maximum age
- Scope - which systems, assets, etc. should be included
- MITRE Tactics (lookup) - if any are applicable
- MITRE Techniques (lookup) - if any are applicable
- Adversary Groups (lookup) - or related recognizable names like botnet names, ransomware as a service names, etc.
- Script - how the hunt is actually conducted. May be geared toward a specific tool, but should have enough detail to allow reproduction in another tool. Should include specific techniques and detail sufficient for another hunter to reproduce the hunt.
- Resources (links, report names)


# Hunt Backlog
- Hunt (lookup)
- Name (hypothesis or trigger)
- Hunt Model - Reactive or Proactive
- Date performed
- Hunters
- Result (proven, disproven, inconclusive)
- Lessons Learned
- Script (how this specific hunt was conducted)
- Count of incidents created
- Count of Playbooks/signatures updated
- Threat Intelligence output produced
- Security Recommendations produced
- Vulnerability findings produced
- Knowledge gained
- Visiblity gained
- New analysis techniques extracted
- New data sources obtained
- Time Spent

