The following sample Incident Response Policy is meant to be tailored to your organization before use.

- [Authority](#authority)
- [Scope](#scope)
- [References](#references)
- [Responsibilities](#responsibilities)
  - [Incident Response Commander Shall:](#incident-response-commander-shall)
  - [Internal Liaisons Shall:](#internal-liaisons-shall)
- [Objectives](#objectives)
- [Regulatory and Compliance Mandates in Scope](#regulatory-and-compliance-mandates-in-scope)
  - [Crown Jewels](#crown-jewels)
- [Preparation](#preparation)
  - [Training, Simulations, and Tabletops](#training-simulations-and-tabletops)
  - [Tools and Access](#tools-and-access)
  - [Procedural Documents](#procedural-documents)
  - [Internal Points of Contact](#internal-points-of-contact)
  - [External Points of Contact](#external-points-of-contact)
  - [Alternate Communication Plan](#alternate-communication-plan)
  - [Documentation, Training, Awareness](#documentation-training-awareness)
  - [Log Generation and Collection](#log-generation-and-collection)
  - [Internally-Gathered Indicators of Compromise](#internally-gathered-indicators-of-compromise)
  - [Detection Deployment Prioritization](#detection-deployment-prioritization)
    - [Local Log Retention Requirements](#local-log-retention-requirements)
  - [OODA Loop](#ooda-loop)
  - [Ticketing System](#ticketing-system)
  - [Coordination \& Correspondence](#coordination--correspondence)
    - [Safeguarding Information](#safeguarding-information)
    - [Sanitization of Data](#sanitization-of-data)
    - [Escalation](#escalation)
    - [Incident-Related Correspondence](#incident-related-correspondence)
    - [External Correspondence](#external-correspondence)
    - [Activation of IR Plan](#activation-of-ir-plan)
    - [Law Enforcement Notification and Interaction](#law-enforcement-notification-and-interaction)
    - [Chain of Custody](#chain-of-custody)
    - [Turnover Log \& Call](#turnover-log--call)
  - [Backups](#backups)
- [Identification](#identification)
  - [Initial Assessment](#initial-assessment)
  - [Creating a Ticket for an Incident](#creating-a-ticket-for-an-incident)
  - [Investigation](#investigation)
    - [Gather Logs](#gather-logs)
    - [Analysis](#analysis)
    - [Determine Priority](#determine-priority)
    - [Determine Attack Technique](#determine-attack-technique)
    - [Determine Root Cause](#determine-root-cause)
    - [Develop Courses of Action](#develop-courses-of-action)
    - [Computer Forensics](#computer-forensics)
    - [Malware Analysis](#malware-analysis)
- [Containment](#containment)
  - [User Participation](#user-participation)
  - [Containment Courses of Action](#containment-courses-of-action)
    - [Disablement and/or Shutdown of Services/Processes](#disablement-andor-shutdown-of-servicesprocesses)
    - [Disabling Connectivity](#disabling-connectivity)
- [Eradication](#eradication)
- [Recovery](#recovery)
  - [Risk Acceptance](#risk-acceptance)
  - [Closing a Ticket](#closing-a-ticket)
  - [Lessons Learned](#lessons-learned)
    - [After Action Review and Reporting](#after-action-review-and-reporting)
  - [AAR Fundamentals](#aar-fundamentals)
  - [AAR Agenda](#aar-agenda)
    - [Introduction](#introduction)
    - [Review what was supposed to happen](#review-what-was-supposed-to-happen)
    - [Review what happened for a particular event (all levels)](#review-what-happened-for-a-particular-event-all-levels)
    - [Review what went right and wrong (all levels)](#review-what-went-right-and-wrong-all-levels)
    - [Determine how the event or task should be done next time](#determine-how-the-event-or-task-should-be-done-next-time)
  - [AAR Resources](#aar-resources)
    - [Signature Development](#signature-development)
- [Glossary](#glossary)
- [Resources](#resources)

# Authority
Authority to operate as the primary and sole incident response for the organization has been granted by XXXX.

Signature:

# Scope
This policy applies to all employees, customers, clients, visitors, and third-party affiliates working on behalf of this organization within all business areas and geographic markets ("Staff").  Compliance with this policy is required by related procedural documents and knowledge base articles. 


# References

- NIST SP 800-61, Revision 2, Computer Security Incident Handling Guide
  - https://doi.org/10.6028/NIST.SP.800-61r2
- NIST SP 800-83 rev. 1, Guide to Malware Incident Prevention and Handling for Desktops and Laptops
  - https://doi.org/10.6028/NIST.SP.800-83r1
- NIST SP 800-86 rev. 2, Guide to Integrating Forensic Techniques into Incident Response
  - https://doi.org/10.6028/NIST.SP.800-86
- CJCSM 6510.01B, Cyber Incident Handling Program
  - https://www.jcs.mil/Portals/36/Documents/Library/Manuals/m651001.pdf
- European Union General Data Protection Regulation (EU GDPR)
  - https://eur-lex.europa.eu/eli/reg/2016/679/oj
- Blue Team Handbook: SOC, SIEM, and Threat Hunting
  - https://www.amazon.com/dp/1091493898
- Blue Team Handbook: Incident Response Edition
  - https://www.amazon.com/dp/1500734756
- Crafting the InfoSec Playbook
  - https://www.amazon.com/dp/1491949406
- SANS Incident Response Process (outlined in GCIH)
  - https://www.sans.org/course/hacker-techniques-exploits-incident-handling


# Responsibilities

- Incident Responders shall:
  - Leverage experience, knowledge, tools, and available logs to identify, detect, and respond to adversaries.
  - Direct and/or recommend courses of action to be executed in response to a detected incident when autonomy is not possible.
  - Work with relevant personnel to complete the incident handling process outlined herein.
  - Coordinate, notify, and report requirements for computer incident response as necessary.
  - Interface with law enforcement agencies as necessary regarding criminal activities.
  - Maintain up-to-date work log and other details within the incident tracking system(s).
  - Provide feedback and/or adjustments regarding protection measures, identification and detection content, and response actions.
  - Share and document lessons learned to improve the overall service and team.

- Senior Incident Responders shall:
  - Provide oversight and management of responsibilities for Incident Responders.
  - Monitor the organization-wide status of computer incident response actions and activities.
  - Provide guidance and assistance to all organizational elements in dealing with computer incidents/events.
  - Maintain awareness of business operations to identify potential impact to organizational systems and anything that may impact incident response work load or incident response operations at large.

Incident Response Commander Shall:
  - 

Internal Liaisons Shall:
  - 

Note: Third party responsibilities must be outlined in respective contracts.

#  Objectives

This policy provides a general, standardized process that establishes the intent and requirements for detecting, analyzing, and responding to information or technology incidents for the purpose of mitigating any adverse operational or technical impact on critical client data, systems, networks, and services.

The primary objectives are to:
- Maintain a robust detection capability ensuring all suspicious activity is reported. This includes network, host, and/or wireless Intrusion Detection System alerts and any correlated events from other log sources.
- Effectively contain incidents and isolate systems, minimizing any damage or negative impact on client data, systems, networks, and services.
- Preserve the integrity of data during incident analysis, ensuring accurate time reconstruction and determination of root cause(s), scope of compromise, attacker techniques, and other relevant details.
- Ensure the effective coordination and communication of incident information through appropriate channels.
- Provide an effective and comprehensive response, leading to confident recovery of any affected systems and the return to a fully functioning and secure operational state for all services and systems involved. 
- Identify lessons learned, improving identification, protection, detection, and response strategies and incident handling procedures to prevent or reduce reoccurrence.
- Understand patterns of activity and trends, characterizing the threat and directing protective and defensive strategies.
- Follow an incident response life cycle wherein major steps may be performed repetitively, in parallel, or sequentially depending on the requirements of the incident.

# Regulatory and Compliance Mandates in Scope

The following compliance mandates are required by law or internal policy:

- HIPAA
- PCI-DSS
- GLBA
- FISMA
- Sarbanes-Oxley Act
- GDPR
- Other Foreign laws
- NIST 800-53
- ISO/IEC 27002

(include relevant scoping details for each mandate here)

## Crown Jewels

- What is the most sensitive data and where is it stored?
- Which are the most sensitive services and what infrastructure supports them?
- Which service accounts exist to support them?
- What are the permitted access methods?
- Who has authority to access these?
- What logs are available for monitoring?
- Which people would cause the most damage if they were socially engineered or their accounts were compromised or abused?

# Preparation

## Training, Simulations, and Tabletops

## Tools and Access
The Incident Response Team must include personnel with console access to the following tools.

- Active Directory
- File Servers
- Print Servers
- Cloud
- Virtualization
- DNS
- DHCP
- MFA
- HIPS
- IPS/IDS
- EDR
- AV
- Firewall
- NetFlow
- Web Proxy
- Domain Controllers
- EDR
- Email
- VPN
- File Sharing
- Switches
- Routers
- Door Access Systems
- Privileged Account Management System
- Service Management
- Third-party services
- Vulnerability Scanners

## Procedural Documents
The following Incident Management Procedures must be well documented and maintained to prevent unnecessary delays:

- Port closure
- DNS Redirect/Black-hole
- VLAN isolation
- Internal device blocking/isolation
- Border device blocking/isolation
- Account disabling
- Active Directory
- VPN
- Other accounts not tied to active directory
- Seizure of devices
- Log collection of any of the above


## Internal Points of Contact
Each internal point of contact is expected be aware of this role and to be comfortable acting as a liaison between the IR Team and their respective office. The goal is to eliminate surprises and confidently expect an efficient, streamlined workflow.

- IT Support
- IT Architecture/Server Teams
- Asset Management
- Identity and Access Management
- Data Backup Administration
- Networking
- Hosting/Application Teams
- Database Administration
- Development Teams
- Computer Security-related teams
- Physical Security
- Human Resources
- Public Relations
- Legal Department

(Include primary POC, initial contact guidance, and links or summary of requirements for each office)


## External Points of Contact
Each external point of contact must be aware they are a point of contact. Pricing, timing, support staff, and all other questions should be clarified prior to engagement in the middle of a large scale incident. The goal is to eliminate surprises and confidently expect an efficient, streamlined workflow.

- Advanced IR/Forensics
- Cybersecurity Insurance Provider
- Nearest Hospital, Fire, and other emergency services
- Law Firm
- FBI
- Internet Service Provider (ISP)
- Cell phone service provider
- Vendors of software and hardware technologies in use
- Local law enforcement
- Product Vendor and Technical Support
- Other external support

(Include primary POC, initial contact guidance, and links or summary of requirements for each organizaiton)

## Alternate Communication Plan
it is necessary to establish an alternate communications plan for use during any incident or potential incident where the existing organzational communications platforms may or have become unavailable or otherwise compromised.


## Documentation, Training, Awareness

Incident Responders shall be familiar with the following documents and have them readily accessible:
- IP Address Management
- Network Architecture Diagrams
- User Directory
- Asset Inventory
  - Hardware
  - Software
  - Critical systems and services to business operations
- Local laws and regulations applicable to the affected systems governing incident response, data privacy, and others with impact to investigations.
- Rules of Behavior / Acceptable Use Policy
- Login Warning Banner
- User Directory
- Account and Device Naming Conventions
- Disaster Recovery Plan
- Business Continuity Plan
- Configuration/Change Management Policy and Procedures
- Acceptable Use Policy
- Data Classification and Protection Guidelines
- Standard Security Configurations
- User Awareness and Training Policy
- Assessment, Authorization, and Monitoring Policy
- Access Control Policy
- Identification and Authentication Policy
- Contingency Planning Policy
- System and Information Integrity Policy
- Incident Response Policy
- Media Protection Policy
- Physical and Environmental Protection Policy
- Personnel Security Policy
- PII Policy
- System and Services Acquisition Policy

Incident Responders shall maximize off-peak duty hours by remaining productive and helpful to the team, including...
- remaining familiar with documents and diagrams listed in the preparation phase.
- performing and seeking cross-training.
- improving & updating documentation.
- maintaining awareness of cyber security through official and open-source intelligence.
- seeking to understand normal behavior of monitored logs, networks, systems, etc. with the goal of improving identification of anomalies.
- safely validating signatures fire as expected.

The internal Knowledge Base shall be kept up-to-date with detailed procedures for products and Incident Response-specific processes.

The Knowledge Base shall be referenced often and maintained by all Incident Responders. Incident Responders are to assist in keeping articles up to date and reflective of current procedures by updating as soon as possible when steps change for any reason (i.e. software updates, governance updates, improvements in knowledge or experience gained).

Incident Responders must have a strong command of the analysis tools at their disposal. This organization provides support by providing Incident Responders with specialized training, continuing education, and a lab environment to maintain awareness and familiarity. Automated analysis and alerting tools only provide the beginnings of understanding a security incident, and only a skilled analyst provided with appropriate tools can complete the picture.


## Log Generation and Collection

Logs shall be centrally gathered from systems that provide the ability to identify and investigate security incidents. Where possible, an NTP server shall be deployed, with as many systems as possible configured to utilize the service. Centralized logging minimizes the risk of tampering, clearing, and general integrity concerns of logs.

The following logs shall be collected and stored centrally in the SIEM. 
- (list)

For the above logs, the retention volume must be at least (x megabytes or days or both).

Where possible, systems that generate logs must store log dates in the GMT Time Zone.


## Internally-Gathered Indicators of Compromise

True-positive incidents may provide valuable indicators of compromise (IOC) including file names, URLs, IP addresses, domains, etc. that could reveal compromise of other systems being monitored. These internal IOCs and their respective details shall be tracked in such a way that allows Incident Responders to quickly find, study, and respond to ongoing investigations. Details shall include the context in which the IOC was first observed, when it will expire, and where it is currently being leveraged for automated detection.

Internal IOCs shall be reviewed annually at expiration time and each time it is referenced during an investigation. If the IOC is determined to still be of value, its expiration shall be set for one year from that review date.


## Detection Deployment Prioritization
The priority in which detections (signatures, alerts, etc.) will be deployed is outline in the below table. Alerts related to exploits characteristics listed higher in the table have a higher priority for detection development. An authoritive stance on prioritization ensures the team deploying detections aligns properly with the risk appetite and provides clarity on the workload and detection team bench strength.

| Exploit Characteristics      | Affecting Assets with these Characteristics |
| ---------------------------- | ------------------------------------------- |
| 9+ CVSS Score, Known Exploit | Any                                         |
| 8+ CVSS Score, Known Exploit | High Value Assets (HVA), Public Facing      |
| 8+ CVSS Score, Known Exploit | High Value Assets (HVA)                     |
| 8+ CVSS Score, Known Exploit | Servers or Network Appliances               |
| 8+ CVSS Score                | Servers or Network Appliances               |
| 8+ CVSS Score, Known Exploit | Non-Servers                                 |
| 8+ CVSS Score                | Non-Servers                                 |
| 7- CVSS Score, Known Exploit | Any                                         |
| 7- CVSS Score                | Any                                         |



### Local Log Retention Requirements
- Logging must be configured to allow X days/megabytes of local log retention and be configured to "roll over" the earliest logs in the event of a full log.

## OODA Loop

Incident Response Team members are encouraged to utilize the OODA Loop to maintain calm control under sometimes high-stress situations when responding to incidents:

1. Observe
2. Orient
3. Decide
4. Act

Following a simple model presents allows the opportunity to calmly assess, carefully process available choices, and act on the most appropriate one for the situation at hand.


## Ticketing System

A full-featured ticketing system shall be used to track all Incidents. All tickets and related data shall be stored for a period of no less than 1 (one) year. Tickets shall have relevant emails and correspondence attached in such a way that they are archived alongside other incident details.

Documents too large or otherwise not easily attached to the Ticket shall be stored in a secondary file system, encrypted and limited in access to the Incident Response Team and other parties with a need-to-know.

It is the shared responsibility of all Incident Responders to ensure all tickets receive proper attention and timely updates. Tickets must be actioned upon and updated at least once per shift until closure. Updates shall consist of, at a minimum, a Work Log entry specifying the last action taken, who took the actions, and when. The Executive Summary shall be kept up-to-date, reflecting the known beginning, middle, and end of each incident at a high level. Outstanding actions shall be included in this field, as they represent a portion the complete ticket summary.


## Coordination & Correspondence

Incident Responders will often need to communicate with outside parties regarding an incident, and shall do so whenever appropriate, such as contacting law enforcement, ISPs, vendors, other incident response teams, and seeking external expertise. The Incident Response Team shall maintain contacts with the public affairs office, legal department, and various persons in management.

All email correspondence related to incidents shall include a carbon-copy (CC) to the Incident Response Team email inbox. Emails containing sensitive information must have all recipients verified for authorized access and must be encrypted. Using an external, encrypting file sharing service is acceptable.

All communication, files, and information related to an incident shall be disseminated only on a need-to-know basis. Incident details shall not be discussed outside of the Incident Response Team, management, and those with a clear need-to-know without previous consent from management.

Incident Responders may need to speak to a software vendor about suspicious activity. This contact could include questions regarding the significance of certain log entries or known false positives for certain intrusion detection signatures, where minimal information regarding the incident may need to be revealed. Software vendors may also provide information on known threats (e.g., new attacks) to help organizations understand the current threat environment. Sanitization shall be performed on data prior to being sent to software vendors when possible and reasonable. Scripts may be used to significantly reduce what appears to be a large amount of manual effort.

At least one secondary communication channel shall be established for use in cases where primary means of communication may be compromised. This could be cell phones, secondary email accounts, etc. These communication channels must be established prior to their need to minimize their immediate use in a time of need.

Incident Responders shall collaborate with security and product administrators in advance in any incidents to identify data sources that can aid in detection, investigation, and response efforts. Incident Responders shall seek to understand what types of information each data source may record and identify data/logging relationships that could offer secondary sources of logs.

The following actions are likely to arise when investigating or responding to an incident; point(s) of contact shall be maintained for each, where possible:
- Taking a server or service offline or isolating it
- Taking a workstation offline or isolating it
- Making changes in Active Directory or other LDAPs
- Retrieving or deleting a file on a workstation, server, NAS, cloud storage, etc.
- Performing initial triage/data collection on an endpoint with administrative account locally or remotely
- Physically quarantine, collect, and/or ship a physical system or its hard drives
- Acquire and deliver a system image
- Block or redirect an IP address or domain
- Remove sensitive/confidential information
- Activities listed under Containment section

Additional points of contact that may be required to investigate or respond to an incident include the following.

- IT Support
- IT Architecture/Server Teams
- Asset Management
- Identity and Access Management
- Data Backup Administration
- Networking
- Hosting/Application Teams
- Database Administration
- Development Teams
- Computer Security-related teams
- Physical Security
- Human Resources
- Public Relations
- Legal Department
- Internet Service Provider(s)
- Local law enforcement
- Product Vendor and Technical Support

### Safeguarding Information

Incident Responders shall practice due diligence in safeguarding information related to incidents both while stored at rest and in transit. Every effort shall be made to reasonably secure data known to contain sensitive information with modern encryption techniques applied, both in transit (e.g. email encryption and secure web servers) and at rest (e.g. encrypted zip containers and physical media).


### Sanitization of Data

After receiving authorization for data release to third parties, a sanitization check shall be performed to ensure the data is appropriate for the audience. Possible concerns include the releasing of protected intellectual property or other data protected by laws and governance. This data can be stripped with custom scripts or tools design for such sanitization. Only after sensitive data is removed or obfuscated shall the data be shared.


### Escalation

Incident Responders requiring assistance shall escalate the ticket to the next higher position of seniority. The next level of escalation beyond the Incident Response Team is the manager and remaining chain of command, who may then request external, third-party assistance if needed.


### Incident-Related Correspondence

All external correspondence shall be sent with courtesy copies (CC) to the ticketing system inbox that allows for automated association to the ticket in the subject line. All correspondence with Emergency priority shall be sent with CC to sender's manager and the recipients manager, when possible.

Recipients are expected to acknowledge the receipt of notification emails following the same timeline above. If an acknowledgement is not received, the Incident Responder shall begin the notification process again seeking acknowledgement through another means of communication, like email or phone. Further lack of response shall result in escalating the ticket to a higher authority. The notification process shall be repeated until acknowledgement is received or if the ticket runs its course to complete recovery.


### External Correspondence

Any incident that may potentially affect another organization shall be reported to that organization as soon as possible along with a summary sufficiently detailed to allow them to begin an investigation.

Tickets being escalated or that are expected to be escalated to Law Enforcement or to parties outside the organization shall also include notification of management beforehand and during email, phone, or other correspondence.

Example external parties include:
- Law Enforcement
- Internet Service Providers (ISP) may assist in blocking major distributed attacks or tracing the origin.
- Organizations that own or are responsible for attacking/targeted systems
- Business Partners
- Clients/Customers
 
If attacks are originating from an external organization's IP address space, coordination with the designated security contacts for the organization shall be conducted to alert them of the activity, ask for a response, and any necessary followup collaboration.


### Activation of IR Plan
The following individuals and/or Teams shall be notified of IR Plan Activation
- (list)

### Law Enforcement Notification and Interaction

Law Enforcement shall be notified of all activity matching the following characteristics:
- Threatens public safety
- Threatens national security
- Substantial operational or financial impact to a U.S. citizen, company, or similar entity
- Involves child pornography
- Otherwise legally questionable

Report of such incidents shall occur according to priority timelines previously outlined. Any reported ticket shall include all related evidence and investigation shall be paused immediately. If the Incident Responder or takes action on behalf of Law Enforcement, they are considered an Agent of Law Enforcement, possibly leading to a court summons. Such authorization must be provided by a manager or a higher position of authority. If authorization is provided, the Incident Responder must ensure that all evidence handling, chain of custody forms, and notes are thoroughly recorded. Management and Law Enforcement must remain fully informed and involved regarding all decisions revolving around Law Enforcement requesting action of an Incident Responder.

For incidents to be investigated for computer crime, a qualifying Incident Responder shall have a firm understanding of proper forensics and evidence handling policies and procedures. Otherwise, the Incident Handler must stand by and seek the assistance of a qualified Incident Responder to perform proper evidence collection. Data and information gathered for forensics analysis or evidence must be obtained and handled in accordance with various applicable laws, possibly spanning many jurisdictions, in order to ensure the authenticity and reliability of the information ensuring it remains admissible in court.

Pornography alone is not enough to alert Law Enforcement unless it involves a minor or is otherwise legally questionable.


### Chain of Custody

It is important to clearly document how all evidence has been preserved. Evidence shall be accounted for at all times; whenever evidence is transferred from person to person, chain of custody forms shall detail the transfer and include each party’s signature.

A proper chain of custody must be maintained for all evidence including, but not limited to, log files, forensic images, hard drives, peripherals, removable media, and other hardware related to the incident. This also applies to backups of evidence created while in abeyance of further instruction, shipment, or onsite pickup by Law Enforcement.

Physical evidence shall be placed in a protected storage container or secure areas appropriate for the classification of the data/hardware, where access is limited to and tracked by those investigating the incident. The evidence shall have a log file containing the following information:
- Individual who created or acquired the evidence
- System from which the image was attained
- System IP and DNS name, if available
- Date and time of the image creation
- When applicable, an hash of the evidence immediately after creation time
- Date and time of the initial identification/discovery
- A list of all individuals who accessed the evidence
- The software utilized to obtain the evidence
- Date, time, and signature of the person who created the evidence
- Date, time, and signature of the person who secured the evidence


### Turnover Log & Call

In order to facilitate information exchange, a brief Turnover Call shall be conducted between each of the three shifts. Turnover calls will signify the relinquishing of monitoring duties and investigation continuation from one shift to the next including promptly responding to phone calls, emails, and other related duties.

A turnover page shall be maintained on Confluence/SharePoint/Collaboration Tool to track any ongoing tasks that must continue to the next shift including, but not limited to:
- Follow-up calls.
- Repeating notifications where acknowledgement was not received.
- Continuing to work open tickets.
- Attending scheduled and/or impromptu meetings on behalf of the team.

Other agenda items may include:
- Important documentation updates
- Important use case adjustments
- Zero-day announcements affecting monitored users, systems, software, etc.


## Backups
Critical systems must be backed up and stored in a way that prevents their being accessible from the network. Often connected backups are targeted for encryption or deletion.

- Test recovery from backups at least annually for critical data, servers, and domains.


# Identification

An event is any observable occurrence in a system or network. Events include a user connecting to a file share, a server receiving a request for a web page, a user sending email, and a firewall blocking a connection attempt. Suspicious activity includes events with a potentially negative consequence, such as system crashes, packet floods, unauthorized/questionable use of system privileges, unauthorized/questionable access to sensitive data, and destruction of data. An incident is a violation or imminent threat ...
- of compliance requirements
- of acceptable use policies
- of standard security practices
- to confidentiality of business-critical data
- to accessibility of business-critical services
- to integrity of business-critical data

Incident Responders shall monitor available dashboards, signatures, and logs for suspicious activity and events that have the potential to cause an incident. Identification by automated means (e.g. signatures, heuristics analysis, statistics-based anomalies, and automated correlation) shall be leveraged to increase the effectiveness of each Incident Responder. Manual identification methods, such as relying on users to identify and report infected hosts, and individually checking each host, are not feasible for most situations. However, a means of manual end-user reporting shall be made available by maintaining a group email box and a phone number.

Incidents can originate from several other sources, including:
- Users or individuals may report suspicious activity via email, telephone, or a support ticket.
- Reports from other organizations such as another service provider, governments agencies, law enforcement, partners, and competitors.

However, centralized log databases and Security Information and Event Management (SIEM) solutions are expected to be the primary points of monitoring and incident identification. Within the SIEM, correlation rules and dashboards shall be maintained that both display events of particular concern and present recent events for short-term correlation and analysis. Queries tuned to the business operating environment shall be maintained and shared among the team to speed up identification.

Identification can occur from multiple places in the environment, including:
- Network-level events including firewalls, VPN, proxy logs, network-level intrusion detection and prevention systems, network access control, routers, switches, and other appliances.
- Workstation-level events including operating system events, antivirus, host-based intrusion prevention systems, host-based firewalls, rogue detection, application whitelisting, etc.
- Server-level events including Active Directory, DNS, DHCP, web, database, and other application servers.


## Initial Assessment

An initial assessment shall be conducted to determine if the identified event or activity constitutes an incident. Initial assessment shall be performed quickly, even with limited details and analysis. After initial assessment, if the activity or event is determined to be benign, no incident is required.

An Incident Responder that suspects that an incident has occurred shall immediately start recording all facts regarding the potential incident. At the very least this shall include date/time, source party, destination party(ies), a description of the actions performed, and a copy of correspondence/events. Documenting system events, conversations, and observed changes in files can lead to a more efficient, more systematic, and less error-prone handling of the incident. Every step taken from the time the incident was detected to its final resolution shall be documented and time-stamped. Information of this nature can also be used as evidence in a court of law if legal prosecution is pursued.

When conducting an initial assessment, the following shall be considered:
- When did the activity first begin? When did it end, or is it on-going?
- Was the activity observed conducted by an expected, authorized party?
  - Implies gathering data on involved users.
- Was the activity observed conducted on an expected, authorized system?
  - Implies gathering data on involved systems.
- Did the activity occur during an expected time of day?
  - Implies gathering and normalizing time stamps.
- What would the potential business impact be if an incident is confirmed?
  - Implies understanding business processes and criticality of systems.
- Were any relevant security alarms triggered?


## Creating a Ticket for an Incident

The investigating Incident Responder shall create a ticket and assign it to themselves. Senior Incident Responders may assign and reassign tickets as needed. Incident Responders may request ticket reassignments, which remains at the discretion of the present Senior Incident Responders, management, or the most senior Incident Responder on duty. The Incident Responder assigned to a ticket is responsible for successful execution of all actions required in handling the ticket until otherwise notified or relieved during the next shift change. The assigned Incident Responder may request assistance from team members, but ultimately maintains all responsibility for the progression of the ticket.

High or emergency tickets that require continuous attention shall be passed along during each shift turnover until resolved.


## Investigation

Available information related to the incident shall be collected, validated, and analyzed to characterize the perceived threat and to assist in identifying the attack technique, scope of compromise, root cause(s), and potential business impact. The associated ticket shall continue to be updated with any actions taken and other useful information that may help to better characterize the incident. Tickets shall be handed over to the next shift, rather than remain inactive while the original Incident Responder is off duty.

The primary objectives of investigation include:
- Ensuring the accuracy and completeness of steps taken during investigation.
- Characterizing and communicating the potential impact to the business.
- Systematically capturing the methods used in the attack and the security controls that could prevent future occurrences.
- Determining the present scope of compromise and identifying containment options.
- Determining options available to eradicate the adversarial presence.
- Identifying the root cause(s) of the incident through technical analysis.

The following questions are provided as a starting point for investigation; tailoring is likely required and recommended:
- Was the activity observed authorized, and was it performed by an authorized account at an authorized time on an authorized system?
- What is the current state of the affected system? Is it compromised at the user or root/admin level?
- Who is the affected user/system owner, and who is their supervisor?
- What is the impact on the mission if the system is isolated from the network immediately?
    - If a server or appliance is involved, what notable applications/services are installed/running?
    - If a workstation is involved, how long would it take to restore operations to its user, and how would that downtime affect the business?
- If policy allows the choice, should the system be isolated or should the team monitor closely?
- What was the time of the event that began the investigation?
- What surrounding events exist with matching source/destination user/IP addresses?
- Are there any logs available outside the centralized logging solution that would benefit the investigation?
- What is the earliest observable event relevant to the investigation?
- What symptoms has the user experienced?
- If the system was compromised, what did its most recent vulnerability scan data reveal?
    - Are there any recent zero-day or otherwise notable vulnerabilities present?
- Which tenets of security (Confidentiality, Integrity, and Availability) are affected?
- What is my hypothesis for what happened? What logs will I need to confirm or deny it?

Unless a suspicion arises early in the investigation of an insider threat, affected users may be asked relevant questions via email or telephone interview depending on the characteristics of the incident. The Shift Change meeting shall be leveraged to request assistance from an appropriate shift when a telephone-based user interview is required (e.g. the affected user works a different shift than the current Incident Responder). Interview questions and answers shall be recorded in the ticket, even when a verbal interview was conducted.

When possible, investigation shall be conducted in parallel with containment, eradication, and recovery stages. An extremely linear incident response process would likely result in a much higher business expense than is necessary by prolonging adversarial exposure, availability impact, and increasing costs.

Once the incident is determined to be a true positive, the timeline requirement to notify the affected party or parties begins.

 | Priority  |      Description      | Timeline  |
 | :-------: | :-------------------: | :-------: |
 | Emergency |   Clear Emergencies   | Immediate |
 |   High    |  Probable Compromise  |    1h     |
 |  Medium   |  Suspicious Activity  |    8h     |
 |    Low    | Questionable Activity |    24h    |


### Gather Logs

Understanding associated logs is helpful in assigning an appropriate priority to the ticket and planning effective containment, eradication, and recovery activities. Details of queries executed (search string and date) to collect logs shall be recorded in the applicable ticket.

The information to be analyzed typically includes various logs, files, configuration settings, records of currently logged-on users, past connections (logins), running processes, open files, and changes to files or system settings (access control lists (ACLs), registries, and permissions).

All logs relevant to the incident shall be gathered for analysis and stored or associated with the respective ticket. The centralized log management system shall be the starting point for log acquisition. When necessary, valuable logs from non-centralized services may be collected or requested from the system owner(s). Network captures (in the form of .pcap files) may be required depending on the nature of the incident. Acquiring only traffic that matches specific criteria keeps the volume of data manageable and minimizes the inadvertent capture of sensitive, regulated information. Endpoint logs or a collection endpoint volatile state information is often necessary to confirm scope of compromise. This could include a memory snapshot or a collection of scripts to collect information. If escalation to law enforcement or the court system is expected, carefully consider the evidence impact of accessing the endpoint at all beyond network isolation.


### Analysis

Timeline reconstruction can help in understanding the attacker’s actions. Collected logs from relevant hosts, network appliances, server applications, etc. must be identified and placed into an event timeline to allow proper analysis. This timeline may be used to correlate events among multiple sources, which is invaluable in confirming of denying any hypotheses formed in earlier stages of the investigation.

Note affected systems IPs, domain names, files, and accounts to allow retrospective analysis for repeat offenders, threat intelligence matches, and the potential for a wider scope than expected. Analysis that does result in a widening of scope in relation to time, systems, users, files, etc. may require gathering of additional logs. Incident Responders shall maintain a high level of awareness of data that could be used as internal indicators of compromise that could result in a shorter detection time (or even prevention of) future incidents.

The involvement of multiple teams and various functional communities (e.g., intelligence, subject-matter experts, and application owners) may significantly improve incident response. It is important to involve relevant parties by informing them, asking direct questions, and making direct requests for support as needed and as soon as possible.


### Determine Priority

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


### Determine Attack Technique

Attack Techniques define the primary paths or methods used by the adversary to cause the incident to occur. This information is used to provide metrics and identify trends in the prevalence of attack techniques. By understanding the most prevalent attack techniques, tactical and strategic plans can be developed to improve defensive and detective posturing.

Incident Responders shall use the MITRE ATT&CK Framework to determine the appropriate attack techniques tied to the incident and record the information in the ticket.


### Determine Root Cause

Root cause is defined as the high-level oversight, misconfiguration, or process failure that provided the exposure exploited by the adversary. Root cause metrics are used to assisting in preventing similar incidents from occurring in the future. Underlying system weaknesses, vulnerabilities, or security controls that could have prevented or mitigated the impact of the incident shall be identified. More than one weakness category may apply.

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

Root cause(s) shall be determined prior to the recovery and reconstitution of any affected system, unless not practical or otherwise approved. The decision to restore a system without identifying the root cause(s) must be weighed carefully doing so may restore the original exposure for repeated exploitation.


### Develop Courses of Action

Identify a base plan including actions necessary to respond to the incident including containment, eradication, and recovery.

The following list of consideration for determining appropriate courses of action includes may be used as a starting point: 
- Potential damage to and theft of resources. 
- Need for and extent of evidence preservation.
- Service availability impact of courses of action.
- Time and resources needed to implement the courses of action. 
- Effectiveness of courses of action (e.g., partially contains the incident, fully contains the incident). 
- Duration of the solution (e.g., emergency workaround to be removed in four hours, temporary workaround to be removed in two weeks, permanent solution). 


### Computer Forensics

Computer forensics is the application of science to the identification, collection, examination, and analysis of data while preserving the integrity of the information and maintaining a strict chain of custody.

Many forensics collection and analysis tasks are similar to or overlap with other incident analysis activities, which are generally more focused on gaining a technical understanding of the incident. When these information gathering and analysis activities are performed for forensics purposes, the forensic activities focus on processing and preserving the authenticity and integrity of the data in a manner that ensures the evidence is admissible in a court of law.

It is generally desirable to acquire evidence from a system of interest as soon as one suspects that an incident may have occurred - even more so when legal action is required suspected. In such cases, it is essential to isolate the affected system from the network and acquire a snapshot before Incident Responders, system administrators, and others begin investigating, which will alter the state of the machine during the investigation (and therefore make all evidence questionable or inadmissable).

Forensic approaches include:
- Immediate memory capture and artifact collection with a minimal impact to evidence
- Booting into a forensic environment
- Acquiring a copy of associated virtual disks

Proper chain of custody, media write-protection, and immediate hash generation of evidence are among the most critical components of forensics intended for use in court. Further details in forensics processes are beyond the scope of this document.


### Malware Analysis

Malware analysis, when necessary, shall be conducted on system isolated from all business systems and networks.

Incident Responders may study the behavior of malware by analyzing it actively by means of executing the malware and monitoring it during execution. Such active approaches are best performed on malware test systems instead of production hosts to minimize possible damage caused by allowing the malware to execute. Ideal active approaches involve an Incident Responder acquiring a malware sample from an infected host and placing the malware on an isolated test system. Test systems are to be maintained virtually to allow instantaneous restoration to a known-good state through snapshots or similar features.

The test system shall: 
- include up-to-date tools for identifying and monitoring software
- maintain an elevated logging level, at debug level when necessary.
- include immediate log forwarding to reduce potential of losing visibility when malware cleans up its own tracks by means of log and data destruction or altering

Malware test systems are helpful not only for analyzing current malware threats without the risk of inadvertently causing additional damage to the organization, but also for training staff in malware incident handling.


# Containment

Incident Responders shall attempt to contain systems, software, and adversaries in an effort to limit the overall scope of incidents. Courses of action related to containment focus on the immediate protection of information systems and data from further damage while analysis continues and/or deepens. A more complete response may be taken after thorough analysis is performed. 

The primary objectives of containment include:
- Preventing an incident from causing further impact on confidentiality, integrity, and availability.
- Preventing the compromise of additional systems, users, and data.
- Maintaining control of the affected information system(s) and the surrounding environment.
- Ensuring forensically sound acquisition of data when necessary.
- Maintaining and updating the ticket.
- Actively communicating updates through the appropriate technical and operational command channels.

For more widespread malware incidents, such as fast-spreading worms, a strategy that contains the incident for most hosts as quickly as possible is necessary; this aims to limit the number of machines that are infected, the amount of damage that is done, and the amount of time that it will take to fully recover all data and services. 

No single malware containment category or individual method is appropriate or effective in every situation; Incident Responders shall select a combination of containment methods that is likely to be effective in containing the current incident while limiting impact to evidence and increase in scope. In some cases eradication may need to be immediately performed, skipping containment in favor of a more rapid response.

Containment actions that may affect the ability to acquire and preserve data about the incident must be decided on carefully. When making these decisions, it is important to assess the relative value of ensuring mission success by preventing further damage against the potential for containment actions to hinder further analysis. Malware on a host may attempt to exfiltrate sensitive data, replace system files, or cause other damage. Some malware is designed to cause additional damage when network connectivity is lost or other containment measures are performed.

When sufficient information to contain and eradicate the incident is lacking, consultation with internal and external resources may be required. It is important to accurately determine the root cause of each incident to allow confidence in the completeness of containment courses of action.


## User Participation

When possible, automated and/or remote containment actions must be performed by trained, experience staff. However, when a system administrator or pre-established contact for incident response assistance is unavailable, options are limited. Leveraging users for containment actions is a last resort due to varying levels of user expertise. In most cases, the level of user participation is expected to be limited to disconnecting from the network immediately and either notifying or delivering their system to the nearest administrator or shipping the hardware to the Incident Response Team.


## Containment Courses of Action

Various courses of action can be taken to contain malware and malicious activity to allow further analysis and eradication. Often signature-based or threat intelligence-based security tools are updated with capabilities that automate containment/prevention effectively. This may allow careful rolling back of containment steps. Note that if the scope of compromise includes the OS, it is possible for malware or adversaries to remain hidden from any security tools or controls.

Containment courses of action include:
- Local user account disablement
- Authorization/access revocation
- Host isolation by removal of a network card
- Host isolation by EDR or similar software
- Port Blocking
- IP/Domain blocking or redirection
- Web content filtering
- Hash Blacklisting
- Switchport Isolation
- VLAN/subnet Isolation
- Trunk Switchport Isolation
- Disablement and/or Shutdown of Services/Processes
- Power Disconnection of endpoints or network appliances
- LDAP Object disablement
- Software or file removal
- Registry deletions/modifications
- ISP assistance with DDoS response
- Upgrading software/firmware

Some details on containments steps are presented below.
NIST SP 800-83 may be referred to for COAs and Response Actions (RAs) for various attacks such as DoS, malicious code, unauthorized access, and inappropriate usage.


### Disablement and/or Shutdown of Services/Processes

Some incidents necessitate more drastic and potentially disruptive measures for containment. These incidents make extensive use of a particular service. Containing such an incident quickly and effectively might be accomplished through a loss of services, such as shutting down a service used by malware, blocking a certain service at the network perimeter, or disabling portions of a service (e.g., large mailing lists). Also, a service might provide a channel for infection or for transferring data from infected hosts. This action is typically performed at the application level (e.g. disabling a service on servers) or at the network level (e.g. configuring firewalls to block IP addresses or ports associated with a service). System administrators must be consulted to gain understanding of dependencies between major services when making containment decisions.


### Disabling Connectivity

Containing incidents by placing temporary restrictions on network connectivity can be very effective. An alternative to blocking network access for particular IP addresses is to disconnect the infected hosts from the network, which could be accomplished by reconfiguring network devices to deny network access, physically disconnecting network cables from infected hosts, or using host-based firewalls to greatly restrict network communication. Such activities could eliminate network or service access to groups of non-compromised hosts. Implementing a widespread loss of connectivity to achieve containment is most likely to be acceptable in cases where malware activity is already causing severe network disruptions or infected hosts are performing attacks. Because a major loss of connectivity is likely to affect organizational missions, connectivity must be restored as soon as possible.

When possible, avoid shutting down systems prior to acquiring and preserving volatile data such as running processes, network connections, and/or the entire contents of memory. This may not be an option if the compromised system begins to perform destructive tasks such as deleting files, exfiltrating sensitive data, formatting drives, or actively spreading to other hosts. In these cases, the system shall be promptly disconnected, or otherwise effectively isolated. If there is no backup or restoration efforts are significant, immediate shutdown through severing power shall be considered.


# Eradication

The goal of eradication is to permanently remove the infection. During eradication, it is important to identify all hosts within the scope of compromise to ensure complete remediation. Different situations necessitate various combinations of eradication techniques.

Eradication options include:
- System rebuild
- Permanent firewall/ACL changes on border devices
- Disinfection by means of surgical removal/restoration/disinfection/reversal of any and every malicious action on the system.

In general, a system rebuild is advised if any of the following characteristics are present:
- Administrator/root accounts were compromised.
- Arbitrary code execution was performed at the administrator/root level.
- Critical system files were replaced or modified.
- Physical access to the system was made available to an adversary.
- After disinfection attempts, the system shows signs of instability.
- There is a reasonable suspicion that a rootkit or similar means of persistence exists. 

If an incident does not have any of the above characteristics it is generally acceptable to disinfect the host instead of rebuilding it. However, disinfection is most often not feasible or cost-effective, especially on non-critical systems. 

Rebuilding is the best eradication option when the extent of a system's compromise is unknown, when a rootkit is suspected, or the fastest possible restoration is required. Rebuilding includes the reinstallation, updating, and hardening of the OS and subsequently installed applications. New, secured hardware may be swapped out during the rebuild process to allow an even faster recovery of operations. The rebuild process may be followed by data restoration from known-good backups. Great care and caution must be taken with any file preservation from a compromised system due to the potential for carrying-over infected files. Upon conclusion of an incident involving a compromised system requiring a rebuild, the original hard drive/device may be reused or be destroyed at the discretion of management. Master boot records must be erased on reused disks to eliminate any possible boot sector infection.


# Recovery

The main goals of recovery from incidents are restoring operations and data, removing temporary containment measures, and preventing reinfection and similar incidents. Once a resource is successfully attacked, it is often targeted again, or other resources are targeted in a similar manner.

Recovery may include but is not limited to the following:
- Ensuring the operating system and all applications are up-to-date with patches, whether the system was rebuild or disinfected.
- Ensuring security software is in place with current engine, signature, and other updates.
- Ensuring applicable firmware is up to date.
- Removal of extraneous software and services.
- Removal of extraneous user access/rights (including group membership).
- Ensuring compliance with applicable governance, regulations, policies, and best practices.
- Creation of new signatures or other detection content.
- Issuing a warning or alert to employees, partners, and customers.
- Changing baseline configurations.
- Tightening network perimeter security.
- Conducting user training.
- Increasing levels or configuration of logging.
- Centralizing new event feeds.
- A final analysis to confirm proper mitigations are in place.
- Documenting lessons learned during the incident process.
- Conducting an after-action-review meeting to discuss lessons learned as a team.
- Updating or introducing new documentation.
- Identification and acceptance of residual risk.


## Risk Acceptance

Given a breakdown of risk and any deployed mitigations, management may formally accept residual risk. Risk acceptance shall be discussed on a need-to-know basis, with paperwork and correspondence treated as confidential information and stored carefully to avoid unnecessary exposure of accepted risks.


## Closing a Ticket	

Tickets marked as closed must be reviewed by a Senior Incident Responder or a manager. Review consists of the following checks:
- verifying fields are filled properly
- summary and correspondence are professional and reflect well upon the organization
- work logs are present and appear complete and accurate


## Lessons Learned

During the course of many incidents, it is expected that lessons are learned. 

The primary benefits of being mindful of, discussing, and integrating lessons learned include:
- Identifying and addressing infrastructure problems or improvements.
- Identifying and addressing needed updates to existing organizational policies and procedures, or the creation thereof.
- Identifying and addressing technical skill gaps and operational training needs.
- Identifying and addressing issues in the any phase of the incident response process outlined in this document.
- Clarifying unclear or undefined roles, responsibilities, interfaces, and authority as needed.
- Improving tools required to perform protection, detection, analysis, or response actions.
- Developing training and knowledge base material as needed.

After a major incident has been handled, an "After-Action Review" meeting is to be conducted, wherein lessons-learned shall be presented, reviewed, and assigned to members of the team for integration. After-Action Review meetings shall each have a moderator to ensure topics are covered in a timely and efficient manner, as well as an individual assigned to document the discussion. These meetings must result in a specific list of actionables with primary points of contact who will be responsible for enacting changes required during the course of the meeting.

In order to benefit the entire Incident Response Team and the organization, these lessons learned must lead to actual change in documentation, instruction, practice, architecture, etc. Smaller scale or scoped incidents may also result in lessons learned that are just as impactful as those observed in larger incidents, and shall be likewise incorporated, though may not necessitate holding formal After-Action Review meetings.


### After Action Review and Reporting

After-Action Reports (AARs) are created during and after After-Action Review meetings to identify successes, failures, and lessons learned. These reports also serve to track the assignment and execution of any changes that may be warranted as a result of lessons learned.

AARs shall include:
- Unique Ticket ID Number
- Incident Summary
- All fields from the ticket
- Activities to Sustain
- Opportunities to Improve
- Action Items and the individual assigned to each

Action items shall be tracked until completion. Completed AARs shall be stored in the ticket as an attachment.

## AAR Fundamentals
- Conducted during or immediately after each event
- Focused on intent, objectives and standards
- Focus is on team member, manager, and company performance
- Involves all participants in the discussion
- Uses open-ended questions
- Encourages initiative and innovation in finding more effective ways to achieve standards and meet objectives and intent
- Determines strengths and weaknesses
- Links performance to subsequent training

## AAR Agenda

### Introduction

- **Everyone must  participate** if  they  have an insight,  observation,  or  question which will help the team identify and correct deficiencies or sustain strengths. The AAR is a dynamic, candid, professional discussion of training that focuses on team performance measured against the task standards.
- **The AAR  is not a critique.** No one, regardless of rank,  position, or strength of personality, has all of the information or answers. AARs maximize training benefits by allowing members to learn from each other.
- **The AAR does not evaluate success or failure.** There are always weaknesses to improve and strengths to  sustain.
- Reinforce the fact that it is permissible to disagree respectfully.
- Focus on learning and encourage people to give honest opinions.
- Use open-ended and leading questions to guide the discussion of member, manager, and team performance.
- Enter the discussion only when necessary.

### Review what was supposed to happen
The facilitator, along with the participants, reviews what was supposed to happen. This review is based on the intent, objectives and standards. This information is usually found in the Recommended Actions in the Use Case/Use Case Appendix, Blue Team Case Workflow, and Client Case Workflow.

  - State the objectives and standards
  - Review OPFOR (if used) mission and purpose
  - Review company mission, intent and concept of operations

### Review what happened for a particular event (all levels)
The facilitator and participants determine what actually occurred during the incident or project. The leader attempts to gather as many views or perspectives (OPFOR, manager, analyst, engineer, etc) as feasible and possible. This helps to establish a common understanding of the operation/event. Leaders then understand the complexity of an event and work to solve complex, ill-defined problems quickly.

  - Review actions before first detection
  - Review report of first detection or contact
  - Review reaction to  detection or contact
  - Review events during engagement

### Review what went right and wrong (all levels)
Participants then establish the strong and weak points of their performance based on the commander’s intent and performance measures. The facilitator guides discussions to ensure maximum input that is operationally sound and relevant to the incident.

  - Review extent to which objectives were met
  - Review extent that the intent was met
  - Have participants summarize the major learning points
  - Identify training deficiencies
  - Identify team's ability to perform task and meet intent
  - Identify safety risks and measures employed to mitigate the risks

### Determine how the event or task should be done next time
The facilitator guides the unit in self-determining how the task(s) might be performed more effectively in the future. The unit identifies problems and provides solutions as well as identifies who is responsible for making the recommended changes.Additionally, the facilitator guides the discussion to determine if there is a more effective way to train the tasks to achieve the commander’s intent.

  - Identify if retraining should occur
  - Identify the conditions to modify
  - Identify which tasks to retrain to meet the intent
  - Identify a more effective way to meet the intent

## AAR Resources
- https://www.nwcg.gov/sites/default/files/wfldp/docs/army-leaders-guide-to-aar.pdf


### Signature Development

Some incidents are expected to give way to potential development of new signatures, rules, reports, etc. to assist in the automated detection of future activity indicative of compromise. Such efforts and content shall be tracked and grouped by the intentions and expected response into use cases. Use cases shall fully document analysis steps, content creation 


# Glossary

- Authenticity: The property of being genuine and being able to be verified and trusted; confidence in the validity of a transmission, a message, or message originator.

- Availability: The property of being accessible and useable upon demand by an authorized entity.

- Confidentiality: The property that information is not disclosed to system entities (users, processes, devices) unless they have been authorized to access the information. 

- Denial of Service (DoS). The prevention of authorized access to resources or the delaying of time-critical operations. (Time-critical may be milliseconds or it may be hours, depending upon the service provided.)

- Encryption: The process of changing plaintext into ciphertext for the purpose of security or privacy.

- Environment: The aggregate of external procedures, conditions, and objects that affect the development, operation, and maintenance of a system.

- Event: Any observable occurrence in a system and/or network. Events sometimes provide indication that an incident is occurring.

- Incident: Actions taken through the use of computer networks that result in an actual or potentially adverse effect on an information system and/or the information residing therein.

- Information System: Any telecommunication or computer-related equipment or interconnected system or subsystems of equipment that is used in the acquisition, storage, manipulation, management, movement, control, display, switching, interchange, transmission, or reception of voice and/or data; includes software, firmware, and hardware. 

- Integrity: The property whereby an entity has not been impaired or modified in an unauthorized or accidental manner.

- Residual Risk: Portion of risk remaining after security measures have been applied.

- Risk: A measure of the extent to which an entity is threatened by a potential circumstance or event, and typically a function of 1) the adverse impacts that would arise if the circumstance or event occurs; and 2) the likelihood of occurrence.

- Risk Management: The process of managing risks to organizational operations (including mission, functions, image, or reputation), organizational assets, individuals, other organizations, or the nation resulting from the operation or use of an information system, and includes: 1) the conduct of a risk assessment; 2) the implementation of a risk mitigation strategy; 3) employment of techniques and procedures for the continuous monitoring of the security state of the information system; and 4) documenting the overall risk management program.

- Security: A condition that results from the establishment and maintenance of protective measures that enable an organization to perform its mission or critical functions despite risks posed by threats to its use of information systems. Protective measures may involve a combination of deterrence, avoidance, prevention, detection, recovery, and correction that shall form part of the organization's risk management approach.

- Security Requirements: Requirements levied on an information system that are derived from applicable laws, Executive Orders, directives, policies, standards, instructions, regulations, or procedures, or organizational mission/business case needs to ensure the confidentiality, integrity, and availability of the information being processed, stored, or transmitted.

- Sensitive Information: Information, the loss, misuse, or unauthorized access to or modification of, that could adversely affect the business interest or the conduct of business programs, or the privacy to which individuals are entitled under 5 U.S.C. Section 552a (the Privacy Act).

- System: Any organized assembly of resources and procedures united and regulated by interaction or interdependence to accomplish a set of specific functions. See also information system.

- Threat: Any circumstance or event with the potential to adversely impact organizational operations (including mission, functions, image, or reputation), organizational assets, individuals, other organizations, or the Nation through an information system via unauthorized access, destruction, disclosure, modification of information, and/or denial of service.

- User: Individual, or (system) process acting on behalf of an individual, authorized to access an information system.

- Vulnerability: Weakness in an information system, or cryptographic system, or components (e.g., system security procedures, hardware design, internal controls) that could be exploited.

- Vulnerability Assessment: Systematic examination of an information system or product to determine the adequacy of security measures, identify security deficiencies, provide data from which to predict the effectiveness of proposed security measures, and confirm the adequacy of such measures after implementation.

- Worm: A self-replicating, self-propagating, self-contained program that uses networking mechanisms to spread itself. See malicious code.


# Resources
- https://www.cisa.gov/uscert/ncas/alerts/aa20-245a
- SANS PICERL
- NIST CSF