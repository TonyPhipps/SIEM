Plans and procedures use a clear, directive tone to outline actionable steps and processes. Deep explanation should not be expected or needed in this document, as it assumes the reader is already trained and familiar with the IR Policy.

- [Purpose and Introduction](#purpose-and-introduction)
- [Compliance](#compliance)
- [Applicability](#applicability)
- [Assumptions and Limitations](#assumptions-and-limitations)
- [Important Notes](#important-notes)
- [Identification](#identification)
  - [Conduct an Initial Assessment](#conduct-an-initial-assessment)
  - [Investigation](#investigation)
  - [Create a Ticket for an Incident](#create-a-ticket-for-an-incident)
  - [Notify the Appropriate Individuals/Groups/Organizations](#notify-the-appropriate-individualsgroupsorganizations)
  - [Create and Fill a Tracking Spreadsheet](#create-and-fill-a-tracking-spreadsheet)
    - [Conduct Analysis](#conduct-analysis)
      - [Gather Logs](#gather-logs)
      - [Determine Priority](#determine-priority)
      - [Determine Attack Technique](#determine-attack-technique)
      - [Develop Next Courses of Action](#develop-next-courses-of-action)
    - [Determine Root Cause](#determine-root-cause)
- [Containment](#containment)
  - [Containment Courses of Action](#containment-courses-of-action)
  - [User Participation](#user-participation)
- [Eradication](#eradication)
- [Recovery](#recovery)
- [References and Resources](#references-and-resources)


# Purpose and Introduction
This plan provides for Incident Responders a standardized approach to the documentation, analysis and resolution of cybersecurity incidents within the [Organization].

Goals include:
- Provide Incident Responders with a means to use both best practices and procedures in the defense of the network, to degrade the network, if necessary, and to maintain business/system operations during an active cyber attack.
- Reduce repetition of info/steps by providing a Playbook Library to defer to for deviations/specifics.
- Maintain compliance with applicable security frameworks requirements.


# Compliance
This IR Plan aims to comply with the following Compliance Framework requirements and individual checks and requirements:
- [list]


# Applicability
This plan applies to all [Organization] owned, operated, or maintained [System Type(s)].


# Assumptions and Limitations
- [List]


# Important Notes
- [List]


# Identification


## Conduct an Initial Assessment

Conduct an initial assessment to determine if the identified event or activity constitutes an incident. This initial assessment should be performed quickly, even with limited details and analysis. If the activity or event is determined to be clearly benign, no incident or ticket is required. If there is clear evidence of malicious activity, the Incident Responder will declare an incident and notify the appropriate parties.

The following questions are provided for consideration during initial assessment:
- Was the activity observed conducted by an expected, authorized party?
- Was the activity observed conducted on an expected, authorized system?
- Can the activity observed be explained fully as hardware/software malfunctions or administrative issues?
- Were there any recent changes recorded that could be related?
- Did the activity occur during an expected time of day?
- What does the recent activity look like for the assets and/or identities affected?
- Were any relevant security alarms triggered?
- When did the activity first begin? When did it end, or is it on-going?
- What would the potential business impact be if an incident is confirmed?
- Do any related file hashes appear on VirusTotal? NOTE: NEVER submit the actual file, even if there are no matching results for the hash.


## Investigation
Collect, validate, and analyze information related to the incident to characterize the perceived threat and to assist in identifying the attack techniques, scope of compromise, root cause(s), and potential business impact. Continue to update the ticket with any actions taken and other useful information that may help to better characterize the incident.

The primary objectives of investigation include:
- Ensuring the accuracy and completeness of steps taken during investigation.
- Characterizing and communicating the potential impact to the business.
- Systematically capturing the methods used in the attack and the security controls that could prevent future occurrences.
- Determining the present scope of compromise and identifying containment options.
- Determining options available to eradicate the adversarial presence.
- Identifying the root cause(s) of the incident through technical analysis.

The following questions are provided as a starting point for investigation; tailoring is likely required and recommended:
- What is the earliest observable event relevant to the investigation?
- What symptoms has the user experienced?
- What is the current state of the affected system? Is it compromised at the user or root/admin level?
- If policy allows the choice, should the system be isolated or should the team monitor closely?
  - What is the impact on the mission if the system is isolated from the network immediately?
    - If a server or appliance is involved, what notable applications/services are installed/running?
    - If a workstation is involved, how long would it take to restore operations to its user, and how would that downtime affect the business?
- What surrounding events exist with matching source/destination user/IP addresses?
- Are there any logs available outside the centralized logging solution that would benefit the investigation?
- If the system was compromised, what did its most recent vulnerability scan data reveal?
  - Are there any recent zero-day or otherwise notable vulnerabilities present?
- What is the hypothesis for what happened? What logs will be needed to confirm or deny that hypothesis?

Unless a suspicion arises early in the investigation of an insider threat, affected users may be asked relevant questions via email or telephone interview depending on the characteristics of the incident. Such interview questions and answers shall be recorded in the ticket, even when a verbal interview was conducted.

When possible, conduct Investigation actions in parallel with containment, eradication, and recovery stages. Linear incident response tends to result in a far lengthier and expensive process than is necessary due to prolonging adversarial exposure and impact to confidentiality, integrity, and availability.


## Create a Ticket for an Incident
Create a ticket in [ticket management system] to track all activities. Keep the related ticket updated with, at a minimum, an executive summary of ongoing actions and findings.


## Notify the Appropriate Individuals/Groups/Organizations
Ensure all communication, files, and information related to an incident are disseminated only on a need-to-know basis. Incident details may not be discussed outside of the Incident Response Team, management, and those with a clear need-to-know without previous consent from management.

- Include [Incident Resposne Team] in all Incident-related correspondence.
- Emails containing sensitive information must have all recipients verified for authorized access and must be encrypted.
- Emails containing attachments with sensitive information must be encrypted and sent via [service].
- Sanitize all files being sent to product vendors by sufficiently anonymizing all hostnames, IP addresses, and user-specific account names.

[Add Details as to who should be notified under which conditions.]


## Create and Fill a Tracking Spreadsheet
Create a tracker for the recording of Investigative Notes, Contact Info, Timeline, Assets, Identities, Host Indicators, Network Indicators, Requests and Tasks, Evidence, Forensics Keywords, and Investigative Queries as detailed below. 

Given a tracker Excel (or equivalent) file, each column in the table below represents a tab, and each value under the tab name represents a column in that tab.

| Investigative Notes | Contact Info       | Timeline          | Assets                                           | Identities              | Host Indicators  | Network Indicators      | Requests and Tasks  | Evidence                      | Forensic Keywords | Investigative Queries |
| ------------------- | ------------------ | ----------------- | ------------------------------------------------ | ----------------------- | ---------------- | ----------------------- | ------------------- | ----------------------------- | ----------------- | --------------------- |
| Date Added          | Name               | Submitted By      | Submitted By                                     | Submitted By            | Submitted By     | Submitted By            | Date Added          | Evidence ID                   | Keyword ID        | Query ID              |
| Category            | Company/Firm       | Date Added        | Date Added                                       | Date Added              | Date Added       | Date Added              | Priority            | Evidence Type                 | Keyword(s)        | Added By              |
| Notes               | Role/Title         | Source            | Initial Lead (what led to including this system) | Source                  | Source           | Source                  | ID                  | Evidence Source               | Notes             | Platform              |
| Added By            | Email Address      | Status            | Status                                           | Status                  | Status           | Status                  | Work Stream         | Received By                   |                   | Purpose               |
|                     | Phone              | System Name       | System Name                                      | Account ID              | Indicator ID     | Indicator ID            | Request/Task        | Date Received                 |                   | Query                 |
|                     | Location/Time Zone | Date/Time (UTC)   | IP Address                                       | Account Name            | Indicator Type   | Indicator Type          | Significant Updates | Received From                 |                   | Notes                 |
|                     |                    | Date/Time (Local) | Domain                                           | SID                     | Indicator        | Indicator               | Assigned To         | Data Received                 |                   |                       |
|                     |                    | Activity          | System Role(s)                                   | Domain                  | Full Path        | Details/Comments        | Status              | Evidence Date (or Date Range) |                   |                       |
|                     |                    | Details/Comments  | Operating System                                 | Account Role            | SHA256 Hash      | Earliest Evidence (UTC) | Date Last Updated   | Evidence Location             |                   |                       |
|                     |                    | ATT&CK Alignment  | Significant Findings                             | Significant Findings    | SHA1 Hash        | Latest Evidence (UTC)   | Date Completed      | Notes                         |                   |                       |
|                     |                    | Size (bytes)      | Earliest Evidence (UTC)                          | Earliest Evidence (UTC) | MD5 Hash         | ATT&CK Alignment        |                     |                               |                   |                       |
|                     |                    | Hash              | Latest Evidence (UTC)                            | Latest Evidence (UTC)   | Type / Purpose   | Notes                   |                     |                               |                   |                       |
|                     |                    | Owner/Account     | Notes                                            | Notes                   | Size (Bytes)     |                         |                     |                               |                   |                       |
|                     |                    | Notes             |                                                  |                         | ATT&CK Alignment |                         |                     |                               |                   |                       |
|                     |                    |                   |                                                  |                         | Notes            |                         |                     |                               |                   |                       |

- Investigation Notes - Record investigation information such as related incident tickets, conference room/teleconference bridge details, etc.
- Contact Info - Record the following information
- Timeline - Record the following for historical activity observed related (or possibly related) to the investigation.
- Systems - Record the following information for systems that are involved (or may be involved) with the investigation.
- Accounts - Record the following information for accounts that are involved (or may be involved) with the investigation.
- Host Indicators - Record the following information for indicators of compromise discovered on hosts. These serve to assist in discovering the same activity/artifacts elsewhere.
- Network Indicators - Record the following information for indicators of compromise discovered in network logs. These serve to assist in discovering the same activity/artifacts elsewhere.
- Requests and Tasks - Record relevant "asks" and their details.
- Evidence - Record handling of evidence, especially hardware like hard drives.
- Forensic Keywords - Record incident-specific keywords that may facilitate forensic analysis
- Investigative Queries - Record incident-specific queries for SIEM / log correlation / investigative platforms to facilitate investigative analysis.


### Conduct Analysis
Record any logs from relevant hosts, network appliances, server applications, etc. that are determined to be related to the event in the tracker to allow proper analysis. This timeline may be used to correlate events among multiple sources, which is invaluable in confirming of denying any hypotheses formed in earlier stages of the investigation.

Note affected systems IPs, domain names, files, and accounts to allow retrospective analysis for repeat offenders, threat intelligence matches, and the potential for a wider scope than expected in the tracker. Analysis that does result in a widening of scope in relation to time, systems, users, files, etc. may require gathering of additional logs. Maintain a high level of awareness of data that could be used as internal indicators of compromise that could result in a shorter detection time (or even prevention of) future incidents.

Involve multiple teams and various functional communities by informing them, asking direct questions, and making direct requests for support as needed and as soon as possible (e.g., intelligence, subject-matter experts, and application owners) as doing so may significantly improve incident response. 


#### Gather Logs
Gather all logs relevant to the incident for analysis, export them, and store or associate them with the respective ticket. [Location or System] shall be the starting point for log acquisition. When necessary, valuable logs from non-centralized services may be collected or requested from the system owner(s). Details of queries executed (search string and date) to collect logs shall be recorded in the tracker.

Endpoint logs or a collection endpoint volatile state information is often necessary to confirm scope of compromise. This rarely may include a memory snapshot or a collection of scripts to collect information. If escalation to law enforcement or the court system is expected, carefully consider the evidence impact of accessing the endpoint at all beyond network isolation.

Network captures (in the form of .pcap files) may be required depending on the nature of the incident. Acquiring only traffic that matches specific criteria keeps the volume of data manageable and minimizes the inadvertent capture of sensitive, regulated information. 


#### Determine Priority
Tickets are classified by incident priority, which primarily determines notification timeline requirements. Ticket Priority be "Low," "Medium," "High," or "Emergency." Priority determination must include consideration of the current and potential impact on the confidentiality, availability, and integrity of organizational operations, data, assets, and individuals.

Emergency: Tickets are Emergency priority when one of the following is suspect or confirmed:
- An adversary causes impact to the confidentiality, integrity, or availability of a critical asset or confidential information.
- An adversary compromises a root/administrator level account that impacts a critical asset.
- An adversary causes impact that could lead to significant financial fines to the organization.

High: Tickets are High priority when one of the following is suspect or confirmed:
- An asset is compromised that could impact the confidentiality, integrity, or availability of critical assets or confidential information.
- An adversary causes impact that could lead to financial fines to the organization causing a delay in financial goals.

Medium: Tickets are Medium priority when one of the following is suspect or confirmed:
- An adversary causes impact to the confidentiality, integrity, or availability of a non-critical asset that may allow the compromise of additional assets.
- An adversary causes impact that could result in financial fines to the organization.
- A security control is successfully and intentionally bypassed.

Low: Tickets are Low priority when one of the following is suspect or confirmed:
- An adversary causes impact to the confidentiality, integrity, or availability of a non-critical asset with a limited scope.
- An concerted effort is made to bypass a security control.

Other considerations include direct or indirect impact on:
- Impact to asset health, including performance and resource consumption.
- Expected cost of the entire incident response process.
- Degraded, denied, or misdirected communication from leadership to subordinate offices.

_Establish any service level agreements or other requirements related to Priority_


#### Determine Attack Technique
Reference the MITRE ATT&CK Framework to determine which attack techniques may be associated with activity observed and record the information in the ticket and tracker.


#### Develop Next Courses of Action
Identify a base plan including actions necessary to respond to the incident including containment, eradication, and recovery.

The following list of consideration for determining appropriate courses of action includes may be used as a starting point: 
- Additional parties to be notified.
- Potential damage to and theft of resources. 
- Need for and extent of evidence preservation.
- Service availability impact of courses of action.
- Time and resources needed to implement the courses of action. 
- Effectiveness of courses of action (e.g., partially contains the incident, fully contains the incident). 
- Duration of the solution (e.g., emergency workaround to be removed in four hours, temporary workaround to be removed in two weeks, permanent solution). 


### Determine Root Cause
Determine Root Cause(s) to the recovery and of any affected system, unless it not practical or otherwise approved to forgoe root cause determination. The decision to restore a system without identifying the root cause(s) must be weighed carefully doing so may restore the original exposure for repeated exploitation.

Root Causes may include, but are not limited to:
- User Training/Awareness
- Non-technical Policy Violation
- Technical Security Control Bypass
- Unpatched Vulnerability
- Zero-Day Vulnerability
- Configuration Weakness
- Power Instability/Failure
- Hardware Instability/Failure
- Software Instability/Failure
- Natural Disaster
- Sabotage
- Negligence


# Containment
While activities in Identification, Containment, and Recovery can be executed in parallel, the [appropriate role] must grant their permission to begin either Containment or Recovery procedures.

When appropriate, take actions in an attempt to contain systems, software, and adversaries in an effort to reduce or eliminate further propogation.

The primary objectives of containment include:
- Ensuring understanding of the impact of containment, including what will NOT be impacted, both positively and negatively.
- Preventing an incident from causing further impact to confidentiality, integrity, and availability.
- Preventing the compromise of additional systems, users, and data.
- Maintaining control of the affected information system(s) and the surrounding environment.
- Preventing growth or reducing the estimated time for Eradication and Recovery.

No single malware containment category or individual method is appropriate or effective in every situation; A combination of containment methods is likely to be most effective. In some cases eradication may need to be immediately performed, skipping containment in favor of a more rapid response.

Containment actions that may affect the ability to acquire and preserve data about the incident must be decided on carefully. When making these decisions, it is important to assess the relative value of ensuring mission success by preventing further damage against the potential for containment actions to hinder further analysis. Malware on a host may attempt to exfiltrate sensitive data, replace system files, or cause other damage. Some malware is designed to cause additional damage when network connectivity is lost or other containment measures are performed.

When sufficient information to contain and eradicate the incident is lacking, consultation with internal and external resources may be required.


## Containment Courses of Action
Containment courses of action may include:
- Isolation from Internet
- Isolation from internal network segments via router, firewall, switch, or VLAN
- Isolation of host via EDR or similar software (usually can be performed remotely)
- Isolation of host by removal of network cable(s)
- Disablement of domain account(s)
- Disablement of local account(s)
- Revocation of account authorization/access
- LDAP Object disablement
- Redirection or blocking access to known-bad remote IP/Domain(s)
- Filter web access via web content filtering software by domain or category
- File blocking via hash-based signatures
- Disablement and/or Shutdown of Services/Processes
- Power Disconnection of endpoints or network appliances
- ISP assistance with DDoS response

Various courses of action can be taken to contain malware and malicious activity to allow further analysis and eradication. Courses of action may also evolve as additional information is developed during ongoing investigation.

Often signature-based or threat intelligence-based security tools are updated with capabilities that automate containment/prevention effectively. This may allow careful rolling back of containment steps. Note that if the scope of compromise includes the OS, it is possible for malware or adversaries to remain hidden from any security tools or controls.

NIST SP 800-83 may be referred to for COAs and Response Actions (RAs) for various attacks such as DoS, malicious code, unauthorized access, and inappropriate usage.

When possible, avoid powering off systems prior to acquiring and preserving volatile data such as running processes, network connections, and/or the entire contents of memory. This may not be an option if the compromised system begins to perform destructive tasks such as deleting files, exfiltrating sensitive data, formatting drives, or actively spreading to other hosts. In these cases, the system shall be promptly disconnected, or otherwise effectively isolated. If there is no backup or restoration efforts are significant, immediate shutdown through severing power shall be considered.


## User Participation
When possible, automated and/or remote containment actions must be performed by trained, experience staff. However, when a system administrator or pre-established contact for incident response assistance is unavailable, options are limited. Leveraging users for containment actions is a last resort due to varying levels of user expertise. In most cases, the level of user participation is expected to be limited to disconnecting from the network immediately and either notifying or delivering their system to the nearest administrator or shipping the hardware to the Incident Response Team.


# Eradication
The goal of eradication is to permanently remove the infection AND the weaknesses that were leveraged to achieve the initial compromise. Different situations necessitate various combinations of eradication techniques. It is important to accurately determine the root cause of each incident to allow confidence in the completeness of eradication courses of action.

Eradication options include:
- System replacement/rebuild, then applying latest patches
  - For servers and critical devices, save a current image of the system and memory beforehand, when possible
- Permanent firewall/ACL changes on border devices
- Disinfection via security software-provided solutions
- Required change of all affected account passwords with strong requirements, including all passwords to accounts the affected accounts had access to
- Disinfection by means of surgical removal/restoration/disinfection/reversal of any and every malicious action taken and file left/modified on the system

In general, a system rebuild is advised if any of the following characteristics are present:
- Administrator/root accounts were compromised
- Arbitrary code execution was performed at the administrator/root level
- Critical system files were replaced or modified
- Boot sectors, BIOS/UEFI, or firmware is confirmed or suspected to be compromised
- Physical access to the system was made available to an adversary
- After disinfection attempts, the system shows signs of instability
- There is a reasonable suspicion that a rootkit or similar means of persistence exists

Rebuilding is the best eradication option when the extent of a system's compromise is unknown, when a rootkit is suspected, or the fastest possible restoration is required. Rebuilding includes the reinstallation, updating, and hardening of the OS and subsequently installed applications. New, secured hardware may be swapped out during the rebuild process to allow an even faster recovery of operations. The rebuild process may be followed by data restoration from known-good backups. Great care and caution must be taken with any file preservation from a compromised system due to the potential for carrying-over infected files. Upon conclusion of an incident involving a compromised system requiring a rebuild, the original hard drive/device may be reused or be destroyed at the discretion of management. Master boot records must be erased on reused disks to eliminate any possible boot sector infection.

If an incident does not have any of the above characteristics it is generally acceptable to disinfect the host instead of rebuilding it. However, disinfection is most often not feasible or cost-effective, especially on non-critical systems. 

Considerations for manual eradication include:
- Validate Scheduled Tasks are legitimate
- Validate Startup Applications are legitimate
- Validate all Services are legitimate
- Ensuring the proper configuration of all management, operations, and security software
- Validate users and groups membership
- Validate permissions to users and groups
- Apply latest updates for OS, Firmware, BIOS/UEFI
- Validate only necessary and approved software is installed
- Ensure security software is in place with current engine, signature, and other updates
- Run a full-system scan with any/all endpoint protection software
- Run a full scan with remote scanning software (e.g. Nessus)
- Ensure files reported as quarantined automatically no longer exist in their original locations
- Ensure the system configurations match the applicable baseline
- Ensure compliance with applicable governance, regulations, policies, and best practices.


# Recovery
The main goals of recovery from incidents are restoring operations and data, removing temporary containment measures, and preventing reinfection and similar incidents. Once a resource is successfully attacked, it is often targeted again, or other resources are targeted in a similar manner.

Recovery may include but is not limited to the following:
- REplacement of confiscated, damaged, or stolen property.
- Creation of new signatures or other detection content.
- Issuing a warning or alert to employees, partners, and customers.
- Changing baseline configurations.
- Tightening network perimeter security.
- Conducting user training.
- Increasing levels or configuration of logging.
- Centralizing collection of additional event feeds.
- Documenting lessons learned during the incident process.
- Conducting an after-action-review meeting to discuss lessons learned as a team.
- Updating or introducing new documentation.
- Removal of any short-term restrictions/solutions applied.
- Final/long term handling of collected evidence.
- Pivoting around any residual impacts to service availability.
- Identification and acceptance of residual risk.

# References and Resources
Federal Information Security Modernization Act of 2014
- https://www.congress.gov/bill/113th-congress/senate-bill/2521
NIST Risk Management Framework
- https://csrc.nist.gov/Projects/risk-management
NIST Cybersecurity Framework (CSF) 2.0
- https://nvlpubs.nist.gov/nistpubs/CSWP/NIST.CSWP.29.pdf
NIST Special Publication (SP) 800-61 Rev. 2, Computer Security Incident Handling Guide
- https://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-61r2.pdf
NIST Special Publication (SP) 800-83 Rev. 1, Guide to Malware Incident Prevention and Handling for Desktops and Laptops
- https://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-83r1.pdf
CISA Cybersecurity Incident & Vulnerability Response Playbooks
- https://www.cisa.gov/sites/default/files/2024-08/Federal_Government_Cybersecurity_Incident_and_Vulnerability_Response_Playbooks_508C.pdf
Federal Information Security Modernization Act of 2014
- https://www.congress.gov/bill/113th-congress/senate-bill/2521
CISA Computer Security Incident Handling Guide
- https://csrc.nist.gov/pubs/sp/800/61/r3/final
DOD Instruction 8500.01 - Cybersecurity
- https://www.esd.whs.mil/portals/54/documents/dd/issuances/dodi/850001_2014.pdf
CJCSM 6510.01B - Cyber Incident Handling Program
- https://www.jcs.mil/Portals/36/Documents/Library/Manuals/m651001.pdf