Tables and their fields are listed below.
- Fields are focused on enabling information sharing between analysts and useful metrics.
- Fields with dropdowns have selection values provided in-line.
- Tables may "lookup" entries in another table to establish a relationship.

- [Monitored Groups](#monitored-groups)
- [Log Sources](#log-sources)
- [Indicator of Compromise](#indicator-of-compromise)
- [Systems](#systems)
- [Users](#users)
- [Playbooks](#playbooks)
- [Signatures](#signatures)
- [Hunts](#hunts)
- [Hunt Backlog](#hunt-backlog)
- [Incidents](#incidents)
- [MITRE Attack Techniques](#mitre-attack-techniques)
- [MITRE Tactics](#mitre-tactics)
- [MITRE Software](#mitre-software)
- [MITRE Groups](#mitre-groups)
- [MITRE Campaigns](#mitre-campaigns)
- [MITRE Mitigations](#mitre-mitigations)
- [MITRE Relationships](#mitre-relationships)
- [MITRE Datasources](#mitre-datasources)

# Monitored Groups
- ID
- Name
- onWatchlist
- Aliases
- Reasons
  

# Groups
(To append to MITRE Groups those not covered)
- ID
- STIX ID
- name
- description
- url
- created
- last modified
- domain
- version
- contributors
- associated groups


# Relationships
(To append to MITRE Relationships those not covered)
- source ID
- source name
- source ref
- source type
- mapping type
- target ID
- target name
- target ref
- target type
- mapping description
- STIX ID
- created
- last modified


# Log Sources
- logsource
- ingestionStatus


# Indicator of Compromise
- Name
- Type
  - IP
  - Hostname
  - Domain Name
- Data
- Date Last Observed
- Notes


# Systems
- Internal IP(s)
- Public IP(s)
- MAC(s)
- Hostname
- Location
- Platform
- Operating System
- Operating System Version
- Device Make
- Device Model
- Primary User/POC (Lookup)


# Users
- Name
- Email
- Phone
- Username


# Playbooks
- Title
- Link


# Signatures
- Name
- Date Last Reviewed
- Date Last Simulated
- Severity
- Fidelity
- Status
- References
- Attack Simluation Preparation
- Attack Simulation Steps
- Event Provider/Channel/EventID
- Sample Source Events
- Logic
- Notes
- Playbook (Lookup)
- Adversaries (Lookup)
- Attack Techniques (Lookup)
- SourceID (Lookup)


# Settings
- ID
- STIG
- Location / Command
- Notes


# Hunts
- Name 
  - Hypothesis statement - what is being hunted for
- Description 
  - Details to provide context surrounding who, what, when, where, how, etc. Anticipate questions and answer them here.
- Data Sources 
  - Types of data to be analyzed and where they come from
- Duration 
  - Dataset mininum and maximum age
- Scope 
  - which systems, assets, etc. should be included
- Script 
  - how the hunt is actually conducted. May be geared toward a specific tool, but should have enough detail to allow reproduction in another tool. Should include specific techniques and detail sufficient for another hunter to reproduce the hunt.
- Resources
- MITRE Tactics (lookup)
- MITRE Techniques (lookup)
- Adversary Groups (lookup)


# Hunt Backlog
- Name 
  - (hypothesis or trigger)
- Hunt Model 
  - Reactive or Proactive
- Date performed
- Hunters
- Result 
  - (proven, disproven, inconclusive)
- Lessons Learned
- Script 
  - (how this specific hunt was conducted)
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
- Hunt (lookup)


# Incidents
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
- Adversaries (Lookup)
- Signatures (lookup)
  - Playbooks (Lookup)
    - Attack Techniques (Lookup)
    - Mitigations (Lookup)
- Organzaiton Software (Lookup)
- Organzaiton Systems (Lookup)
- Organzaiton Users (Lookup)
- Incidents (Lookup)
- Resolutions (Lookup)
- Owner (Lookup)


# MITRE Attack Techniques
(from MITRE (https://attack.mitre.org/resources/attack-data-and-tools/))
- ID
- STIX ID
- name
- description
- url
- domain
- tactics
- detection
- platforms
- data sources
- is sub-technique
- sub-technique of
- impact type
- supports remote
- created
- last modified


# MITRE Tactics
(from MITRE (https://attack.mitre.org/resources/attack-data-and-tools/))
- ID
- STIX ID
- name
- description
- url
- created
- last modified
- domain


# MITRE Software
(from MITRE (https://attack.mitre.org/resources/attack-data-and-tools/))
- ID
- STIX ID
- name
- description
- url
- created
- last modified
- domain
- version
- contributors
- platforms
- aliases
- type


# MITRE Groups
(from MITRE (https://attack.mitre.org/resources/attack-data-and-tools/))
- ID
- STIX ID
- name
- description
- url
- created
- last modified
- domain
- version
- contributors
- associated groups


# MITRE Campaigns
(from MITRE (https://attack.mitre.org/resources/attack-data-and-tools/))
- ID
- STIX ID
- name
- description
- url
- created
- last modified
- domain
- associated campaigns
- associated campaigns citations
- first seen
- first seen citation
- last seen
- last seen citation


# MITRE Mitigations
(from MITRE (https://attack.mitre.org/resources/attack-data-and-tools/))
- ID
- STIX ID
- name
- description
- url
- created
- last modified
- domain


# MITRE Relationships
(from MITRE (https://attack.mitre.org/resources/attack-data-and-tools/))
- source ID
- source name
- source ref
- source type
- mapping type
- target ID
- target name
- target ref
- target type
- mapping description
- STIX ID
- created
- last modified


# MITRE Datasources
(from MITRE (https://attack.mitre.org/resources/attack-data-and-tools/))
- name
- ID
- STIX ID
- description
- collection layers
- platforms
- created
- modified
- type
- url


# Sigma as CSV
(From https://github.com/TonyPhipps/Powershell/blob/master/Get-FlatYAML.ps1)
(Or, if using PowerBI, from https://github.com/TonyPhipps/tech-notes/blob/main/Products/powerbi/sigma.md)
(Command: .\Get-FlatYAML.ps1 -InputDir "d:\Github\sigma\rules" -Outputfile "d:\sigma.csv" -IgnoreFields detection, related)
- author
- date
- description
- falsepositives
- Filepath
- id
- level
- logsource.category
- logsource.definition
- logsource.product
- logsource.service
- modified
- Original
- references
- status
- tags
- title


# NIST SP-00-53
(From https://csrc.nist.gov/pubs/sp/800/53/r5/upd1/final)
- Control Identifier
- Control (or Control Enhancement) Name
- Control (or Control Enhancement) 
- Discussion
- Related Controls


# NIST to MITRE Techniques
(From https://center-for-threat-informed-defense.github.io/mappings-explorer/external/nist/)
- mapping_framework
- mapping_framework_version
- capability_group
- capability_id
- capability_description
- mapping_type
- attack_object_id
- attack_object_name
- attack_version
- technology_domain
- score_category
- score_value
- related_score
- references
- comments
- organization
- creation_date
- last_update
