The following sample Incident Response Policy is meant to be tailored to your organization before use.

- [Purpose and Introduction](#purpose-and-introduction)
- [Scope](#scope)
- [Authority](#authority)
- [Regulatory and Compliance Mandates in Scope](#regulatory-and-compliance-mandates-in-scope)
- [References](#references)
- [Roles and Responsibilities](#roles-and-responsibilities)
- [Preparation](#preparation)
  - [Coordination \& Correspondence](#coordination--correspondence)
    - [Internal Points of Contact](#internal-points-of-contact)
    - [External Points of Contact](#external-points-of-contact)
    - [Alternate Communication Plan](#alternate-communication-plan)
  - [Third Party Support](#third-party-support)
  - [Documentation, Training, Awareness](#documentation-training-awareness)
  - [Log Generation and Collection](#log-generation-and-collection)
  - [Tools and Access](#tools-and-access)
  - [SIEM Content](#siem-content)
    - [Internally-Gathered Indicators of Compromise](#internally-gathered-indicators-of-compromise)
    - [Detection Deployment Prioritization](#detection-deployment-prioritization)
    - [Local Log Retention Requirements](#local-log-retention-requirements)
    - [Maintain Backups of Cybersecurity Tools](#maintain-backups-of-cybersecurity-tools)
  - [Standard Operating Prorcedures / Playbooks / Use Cases](#standard-operating-prorcedures--playbooks--use-cases)
  - [Ticketing System](#ticketing-system)
- [Identification](#identification)
  - [OODA Loop](#ooda-loop)
    - [Creating a Ticket for an Incident](#creating-a-ticket-for-an-incident)
    - [Notification Activation of IR Plan](#notification-activation-of-ir-plan)
    - [Incident-Related Correspondence](#incident-related-correspondence)
  - [Investigation](#investigation)
    - [Computer Forensics](#computer-forensics)
    - [Malware Analysis](#malware-analysis)
    - [Escalation](#escalation)
    - [Safeguarding Information](#safeguarding-information)
    - [External Correspondence](#external-correspondence)
    - [Law Enforcement Notification and Interaction](#law-enforcement-notification-and-interaction)
    - [Chain of Custody](#chain-of-custody)
    - [Turnover Log \& Call](#turnover-log--call)
- [Containment](#containment)
  - [Disabling Connectivity](#disabling-connectivity)
- [Eradication](#eradication)
- [Recovery](#recovery)
  - [Risk Acceptance](#risk-acceptance)
  - [Closing a Ticket](#closing-a-ticket)
  - [Lessons Learned](#lessons-learned)
  - [Signature Development](#signature-development)
- [Glossary](#glossary)
- [References and Resources](#references-and-resources)


# Purpose and Introduction
This policy establishes the requirements for detecting, analyzing, and responding to information or technology incidents for the purpose of protecting business operations, minimizing risk and negative impact, and mitigating the results of cybersecurity attacks against critical systems, networks, services, information, and client data.

The primary objectives are to provide policy that ensures the following:
- Robust detection capabilities are maintained, ensuring all suspicious activity is reported. This includes network, host, and/or wireless Intrusion Detection System alerts and any correlated events from other log sources.
- Incidents are effectively contained and systems isolated, minimizing any damage or negative impact on client data, systems, networks, and services.
- The integrity of data is preserved during incident analysis, ensuring accurate time reconstruction and determination of root cause(s), scope of compromise, attacker techniques, and other relevant details.
- Effective coordination and communication of incident information is maintained through appropriate channels.
- Effective and comprehensive incident response, leading to confident recovery of any affected systems and the return to a fully functioning and secure operational state for all services and systems involved. 
- Lessons learned, improving identification, protection, detection, and response strategies and incident handling procedures are identified regularly, preventing and/or reducing reoccurrence.
- Patterns of activity and trends are understood, characterizing the threat and directing protective and defensive strategies.
- A robust incident response life cycle is followed wherein major steps may be performed repetitively, in parallel, or sequentially depending on the requirements of the incident.

There are two categories of anomalous behavior on a system or network:
- Event: Any observable occurrence in a system and/or network. Events sometimes provide indication that an incident is occurring.
- Cybersecurity Incident: Actions taken through the use of computer networks that result in an actual or potentially adverse effect on an information system and/or the information residing therein.

An Event is escalated into a Cybersecurity Incident when it is confirmed to involve a security violation, compromise, or threat that impacts the confidentiality, integrity, or availability of systems, data, or networks. This typically occurs after initial investigation reveals that the event exceeds normal operational thresholds, requires active response, or poses a significant risk, necessitating formal incident response procedures.

Incident Response personnel must understand the kinds of asset and identity behaviors that are regular in occurrence and recognizable as ordinary when the system is operating under normal operational conditions. Therefore, anomalous behavior is defined as anything that falls outside of that known-normal operational behavior.


# Scope
This policy applies to all employees, customers, clients, visitors, and third-party affiliates working on behalf of [Organization] within all business areas and geographic markets ("Staff"). Related procedural documents, knowledge base articles, etc. must be written and updated so as to remain compliant with this policy.

The scope of the this IR Policy includes all [Organization] systems. This IR Policy is designed for [Organization] networks and the various components that are used in them. While this IR Policy does not include procedures regarding third party networks, it does presume that all such networks are hostile networks. [Organization] network staff should not rely on the cyber security infrastructure that these networks provide and should maintain a level of awareness regarding potential cyber attacks coming from these networks.


# Authority
Authority to operate as the primary and sole incident response for the organization has been granted by XXXX.

Signature:


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

[include relevant scoping details for each mandate here]


# References
- NIST SP 800-61, Revision 2, Computer Security Incident Handling Guide
- NIST SP 800-83 rev. 1, Guide to Malware Incident Prevention and Handling for Desktops and Laptops
- NIST SP 800-86 rev. 2, Guide to Integrating Forensic Techniques into Incident Response
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


# Roles and Responsibilities
- Incident Response Team
  - Leverage experience, knowledge, tools, and available logs to identify, detect, and respond to adversaries.
  - Direct and/or recommend courses of action to be executed in response to a detected incident when autonomy is not possible.
  - Work with relevant personnel to complete the incident handling process outlined herein.
  - Coordinate, notify, and report requirements for computer incident response as necessary.
  - Interface with law enforcement agencies as necessary regarding criminal activities.
  - Maintain up-to-date work log and other details within the incident tracking system(s).
  - Provide feedback and/or adjustments regarding protection measures, identification and detection content, and response actions.
  - Share and document lessons learned to improve the overall service and team.

- Senior Incident Responders
  - Provide oversight and management of responsibilities for Incident Responders.
  - Monitor the organization-wide status of computer incident response actions and activities.
  - Provide guidance and assistance to all organizational elements in dealing with computer incidents/events.
  - Maintain awareness of business operations to identify potential impact to organizational systems and anything that may impact incident response work load or incident response operations at large.

- Incident Commander
  - A member of the Incident Response team selected when a "critical" incident is declared
  - Serves as the priamry point of contact for IR activities
  - Coordinates communications and response activities with internal and external parties
  - Has overall incident management authority and responsibility
  - Directs the flow of all IR actions and communicates response activity status to executive management

- Internal Liaisons
  - Advises the Incident Response team on potential and planned actions, how they can/will impact operations, etc.
  - Supports the Incident Response team's efforts to prepare, identify, investigate, contain, eradicate, and recover for all incidents.

Note: Third party responsibilities must be outlined in respective contracts.


# Preparation


## Coordination & Correspondence
Incident Responders will often need to communicate with outside parties regarding an incident, and shall do so whenever appropriate, such as contacting law enforcement, ISPs, vendors, other incident response teams, and seeking external expertise. The Incident Response Team shall maintain contacts with the public affairs office, legal department, and various persons in management.

Incident Responders shall collaborate with security and product administrators in advance in any incidents to identify data sources that can aid in detection, investigation, and response efforts. Incident Responders shall seek to understand what types of information each data source may record and identify data/logging relationships that could offer secondary sources of logs.


### Internal Points of Contact
The Incident Response team must establish and maintain an internal points of contact list with respect to who will be called upon to assist during tabletops, investigations and/or incidents. The list shall include primary POC, initial contact guidance, and links or summary of requirements for each office.

Each internal point of contact is expected be aware and comfortable of their role as a liaison between the Incident Response Team and their respective office. The goal is to eliminate surprises and confidently expect an efficient, streamlined workflow.

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
- Activities related to Containment

Some potential office groups for which a POC may be collected and maintained include:
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


### External Points of Contact
The Incident Response Team shall create and maintain a list of External Points of Contact. Include primary POC, initial contact guidance, and links or summary of requirements for each organization.

Each external point of contact must be aware they are a point of contact on the Incident Handling Team's list, and that they may be asked to support an incident. Pricing, timing, support staff, and all other questions should be clarified prior to engagement in the middle of a large scale incident. The goal is to eliminate surprises and confidently expect an efficient, streamlined workflow.

Potential inclusions:
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


### Alternate Communication Plan
The Incident Response Team shall establish at least one secondary communication channel for situations where the primary means of communication is unavailable or compromised. This could be personal cell phones, a secondary teleconferencing system, etc. These communication channels must be established prior to their need to minimize their immediate use in a time of need.


## Third Party Support
A third party support point of contact shall be maintained. Where possible, a contract (like a retainer) shall be established and communication channels maintained. Where not possible, a package of information must be maintained in order to minimize onboarding with a "fresh" third-party.

Third-Party Onboarding Package
- Enterprise Incident Response Policy and Plan
- Incident Response Policy and Plan
- Incident Response Playbook Library
- Incident Response Points of Contact
- Incident Response Alternate Communication Methods details


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

Incident Responders must have a strong command of the tools at their disposal. This organization provides support by providing Incident Responders with specialized training, continuing education, and a lab environment to maintain awareness and familiarity. Automated analysis and alerting tools only provide the beginnings of understanding a security incident, and only a skilled analyst provided with appropriate tools can complete the picture. Incident Responders shall cross-train to improve the overall skill and confidence of the team.


## Log Generation and Collection
Logs shall be centrally gathered from systems that provide the ability to identify and investigate security incidents as well as troubleshooting performance, stability, and other operational benefits. Centralized logging minimizes the risk of tampering, clearing, and general integrity concerns of logs. An NTP server shall be deployed with as many systems as possible configured to utilize the service. Systems with synchronized time greatly simplify all types of investigations and bolsters confidence and reliability in all logs. Where possible, systems that generate logs shall store log dates in the GMT Time Zone.

The following logs shall be collected and stored centrally in the SIEM when the applicable hardware/application exists and necessary hardware/software support exists to do so.

[Your list]


Additional Requirements
- Field names and content must be normalized. This is critical to success in correlation and analyst faith in their search results.
- Fields containing multiple values should be parsed into separate fields.
- All event logs should be set to ISO 8601 UTC. This may require transforms to convert from the original device's local time.
- All logging devices should sync with Network Time Protocol (NTP) providers.


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


## SIEM Content
SIEM content shall be created and maintained by the Incident Response Team. This content will focus on usable dashboards, widgets, queries, reports, alerts, etc. in the realms of operations, troubleshooting, compliance, and cybersecurity. Queries tuned to the business operating environment shall be maintained and shared among the team to speed up identification and improve fidelity.


### Internally-Gathered Indicators of Compromise
True-positive incidents may provide valuable indicators of compromise (IOC) including file names, URLs, IP addresses, domains, etc. that could reveal compromise of other systems being monitored. These internal IOCs and their respective details shall be tracked in such a way that allows Incident Responders to quickly find, study, and respond to ongoing investigations. Details shall include the context in which the IOC was first observed, when it will expire, and where it is currently being leveraged for automated detection.

Internal IOCs shall be reviewed annually and each time it is referenced during an investigation. If the IOC is determined to still be of value, its expiration shall be extended based on the review date.


### Detection Deployment Prioritization
The priority in which detections (signatures, alerts, etc.) will be deployed is outline in the below table. Alerts related to exploits characteristics listed higher in the table have a higher priority for detection development. An authoritive stance on prioritization ensures the team deploying detections aligns properly with the risk appetite and provides clarity on the workload and detection team bench strength.

| Exploit Characteristics                   | Affecting Assets with these Characteristics |
| ----------------------------------------- | ------------------------------------------- |
| 9+ CVSS Score, Publicly Exploited         | Any                                         |
| 8+ CVSS Score, Publicly Exploited         | High Value Assets (HVA), Public Facing      |
| 8+ CVSS Score, Publicly Exploited         | High Value Assets (HVA)                     |
| 8+ CVSS Score, Publicly Exploited         | Servers or Network Appliances               |
| 8+ CVSS Score                             | Servers or Network Appliances               |
| 8+ CVSS Score, Publicly Exploited         | Non-Servers                                 |
| 8+ CVSS Score                             | Non-Servers                                 |
| 7- CVSS Score, Publicly Exploited Exploit | Any                                         |
| 7- CVSS Score                             | Any                                         |


### Local Log Retention Requirements
- Logging must be configured to allow [X] days/megabytes of local log retention and be configured to "roll over" the earliest logs in the event of a full log.


### Maintain Backups of Cybersecurity Tools
Critical systems must be backed up and stored in a way that prevents their being accessible from the network. Often connected backups are targeted for encryption or deletion.

- Test recovery from backups at least annually for critical data, servers, and domains.


## Standard Operating Prorcedures / Playbooks / Use Cases
A library of Standard Operating Prorcedures / Playbooks / Use Cases documents shall be created and maintained to train new members, ensure uniformity, and to prevent unnecessary delays.

This library shall be kept up-to-date by all Incident Responders with detailed procedures for products and Incident Response-specific tasks. Incident Responders are to assist in keeping articles up to date and reflective of current procedures by updating as soon as possible when steps change for any reason (i.e. software updates, governance updates, improvements in knowledge or experience gained).


## Ticketing System
A full-featured ticketing system shall be used to track all Incidents. All tickets and related data shall be stored for a period of no less than 1 (one) year. Tickets shall have relevant emails and correspondence attached in such a way that they are archived alongside other incident details.

Documents too large or otherwise not easily attached to the Ticket shall be stored in a secondary file system, encrypted and limited in access to the Incident Response Team and other parties with a need-to-know.

It is the shared responsibility of all Incident Responders to ensure all tickets receive proper attention and timely updates. Tickets must be actioned upon and updated at least once per shift until closure. Updates shall consist of, at a minimum, a Work Log entry specifying the last action taken, who took the actions, and when. The Executive Summary shall be kept up-to-date, reflecting the known beginning, middle, and end of each incident at a high level. Outstanding actions shall be included in this field, as they represent a portion the complete ticket summary.


# Identification
An initial assessment shall be conducted to determine if the identified event or activity constitutes an incident. Initial assessment shall be performed quickly, even with limited details and analysis. After initial assessment, if the activity or event is determined to be benign, no incident is required.

Once an incident is confirmed or is highly suspect, an Incident Responder shall immediately open a ticket if one does not exist. A timeline shall be created and backfilled as necessary recording date/time, source party, destination party(ies), a description of the actions performed, and a raw copy of correspondence/events. Information of this nature can also be used as evidence in a court of law if legal prosecution is pursued.

Centralized log databases and Security Information and Event Management (SIEM) solutions are expected to be the primary points of monitoring and incident identification. Incident Responders shall monitor available dashboards, signatures, and logs for suspicious activity and events that have the potential to cause an incident. Identification by automated means (e.g. signatures, heuristics analysis, statistics-based anomalies, and automated correlation) shall be leveraged to increase the effectiveness of each Incident Responder. Manual identification methods, such as relying on users to identify and report infected hosts, and individually checking each host, are not feasible for most situations. However, a means of manual end-user reporting shall be made available by maintaining a group email box and a phone number.

An event is any observable occurrence in a system or network. Events include a user connecting to a file share, a server receiving a request for a web page, a user sending email, and a firewall blocking a connection attempt. Suspicious activity includes events with a potentially negative consequence, such as system crashes, packet floods, unauthorized/questionable use of system privileges, unauthorized/questionable access to sensitive data, and destruction of data. 

An event or suspicious activity can lead to a cybersecurity incident, defined as a violation or imminent threat ...
- of compliance requirements
- of acceptable use policies
- of standard security practices
- to confidentiality of business-critical data
- to accessibility of business-critical services
- to integrity of business-critical data

Identification can occur from multiple places in the environment, including:
- Network-level events including firewalls, VPN, proxy logs, network-level intrusion detection and prevention systems, network access control, routers, switches, and other appliances.
- Workstation-level events including operating system events, antivirus, host-based intrusion prevention systems, host-based firewalls, rogue detection, application whitelisting, etc.
- Server-level events including Active Directory, DNS, DHCP, web, database, and other application servers.
- Users or individuals may report suspicious activity via email, telephone, or a support ticket.
- Reports from other organizations such as another service provider, governments agencies, law enforcement, partners, and competitors.
- Routine monitoring and equipment checks.

All facts regarding incidents shall be recorded; at the very least records shall include date/time, source party, destination party(ies), a description of the actions performed, and a copy of correspondence/events. Every step taken from the time the incident was detected to its final resolution shall be documented and time-stamped. Information of this nature can also be used as evidence in a court of law if legal prosecution is pursued.


## OODA Loop
Incident Response Team members are encouraged to utilize the OODA Loop to maintain calm control under sometimes high-stress situations when responding to incidents:

1. Observe
2. Orient
3. Decide
4. Act

Following a simple model presents allows the opportunity to calmly assess, carefully process available choices, and act on the most appropriate one for the situation at hand.


### Creating a Ticket for an Incident
A ticket shall be created to track all related activities according to policy. Such tickets shall be kept up-to-date to ensure management and other team members are informed.

Once the incident is determined to be a true positive, the timeline requirement to notify the affected party or parties begins.

 | Priority  |      Description      | Timeline  |
 | :-------: | :-------------------: | :-------: |
 | Emergency |   Clear Emergencies   | Immediate |
 |   High    |  Probable Compromise  |    1h     |
 |  Medium   |  Suspicious Activity  |    8h     |
 |    Low    | Questionable Activity |    24h    |



### Notification Activation of IR Plan
All email correspondence related to incidents shall include a carbon-copy (CC) to the Incident Response Team email inbox. Emails containing sensitive information must have all recipients verified for authorized access and must be encrypted. Using an external, encrypting file sharing service is acceptable.

All communication, files, and information related to an incident shall be disseminated only on a need-to-know basis. Incident details shall not be discussed outside of the Incident Response Team, management, and those with a clear need-to-know without previous consent from management.

Incident Responders may need to speak to a software vendor about suspicious activity. This contact could include questions regarding the significance of certain log entries or known false positives for certain intrusion detection signatures, where minimal information regarding the incident may need to be revealed. Software vendors may also provide information on known threats (e.g. new attacks) to help organizations understand the current threat environment. Sanitization shall be performed on data prior to being sent to software vendors when possible and reasonable. Scripts may be used to significantly reduce what appears to be a large amount of manual effort.

The following individuals and/or Teams shall be notified of IR Plan Activation
- [list]


### Incident-Related Correspondence
All external correspondence shall be sent with courtesy copies (CC) to the ticketing system inbox that allows for automated association to the ticket in the subject line. All correspondence with Emergency priority shall be sent with CC to sender's manager and the recipients manager, when possible.

Recipients are expected to acknowledge the receipt of notification emails following the same timeline above. If an acknowledgement is not received, the Incident Responder shall begin the notification process again seeking acknowledgement through another means of communication, like email or phone. Further lack of response shall result in escalating the ticket to a higher authority. The notification process shall be repeated until acknowledgement is received or if the ticket runs its course to complete recovery.


## Investigation


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


### Escalation
Incident Responders requiring assistance shall escalate the ticket to the next higher position of seniority. The next level of escalation beyond the Incident Response Team is the manager and remaining chain of command, who may then request external, third-party assistance if needed.


### Safeguarding Information
Incident Responders shall practice due diligence in safeguarding information related to incidents both while stored at rest and in transit. Every effort shall be made to reasonably secure data known to contain sensitive information with modern encryption techniques applied, both in transit (e.g. email encryption and secure web servers) and at rest (e.g. encrypted zip containers and physical media).

After receiving authorization for data release to third parties, a sanitization check shall be performed to ensure the data is appropriate for the audience. Possible concerns include the releasing of protected intellectual property or other data protected by laws and governance. This data can be stripped with custom scripts or tools design for such sanitization. Only after sensitive data is removed or obfuscated shall the data be shared.


### External Correspondence
Any incident that may potentially affect another organization shall be reported to that organization as soon as possible along with a summary sufficiently detailed to allow them to begin an investigation.

If attacks are originating from an external organization's IP address space, coordination with the designated security contacts for the organization shall be conducted to alert them of the activity, ask for a response, and any necessary followup collaboration.

Tickets being escalated or that are expected to be escalated to parties outside the organization shall also include notification of management beforehand and during email, phone, or other correspondence.

Example external parties include:
- Law Enforcement
- Internet Service Providers (ISP) may assist in blocking major distributed attacks or tracing the origin.
- Organizations that own or are responsible for attacking/targeted systems
- Business Partners
- Clients/Customers


### Law Enforcement Notification and Interaction
Tickets being escalated or that are expected to be escalated to Law Enforcement shall also include notification of management beforehand and during email, phone, or other correspondence.

Law Enforcement shall be notified of all activity matching the following characteristics:
- Threatens public safety
- Threatens national security
- Substantial operational or financial impact to a U.S. citizen, company, or similar entity
- Involves child pornography
- Otherwise legally questionable

Report of such incidents shall occur according to priority timelines previously outlined. Any reported ticket shall include all related evidence and investigation shall be paused immediately. If the Incident Responder takes action on behalf of Law Enforcement, they are considered an Agent of Law Enforcement, possibly leading to a court summons. Such authorization must be provided by a manager or a higher position of authority. If authorization is provided, the Incident Responder must ensure that all evidence handling, chain of custody forms, and notes are thoroughly recorded. Management and Law Enforcement must remain fully informed and involved regarding all decisions revolving around Law Enforcement requesting action of an Incident Responder.

For incidents to be investigated for computer crime, the Incident Responder shall have a firm understanding of proper forensics and evidence handling policies and procedures. Otherwise, the Incident Responder must stand by and seek the assistance of a qualified Incident Responder to perform proper evidence collection. Data and information gathered for forensics analysis or evidence must be obtained and handled in accordance with various applicable laws, possibly spanning many jurisdictions, in order to ensure the authenticity and reliability of the information ensuring it remains admissible in court.

Pornography alone is not enough to alert Law Enforcement unless it involves a minor or is otherwise legally questionable.


### Chain of Custody
It is important to clearly document how all evidence has been preserved. Evidence shall be accounted for at all times; whenever evidence is transferred from person to person, chain of custody forms shall detail the transfer and include each party's signature.

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
In order to facilitate information exchange, a brief Turnover Call shall be conducted between each shift during any "shift change." Turnover calls will signify the relinquishing of monitoring duties and investigation continuation from one shift to the next including promptly responding to phone calls, emails, and other related duties.Tickets shall be handed over to the next shift as needed, rather than letting them remain inactive while off duty.

A turnover tracker shall be maintained on a team-accessible collaboration tool to document any ongoing tasks that must continue to the next shift including, but not limited to:
- Follow-up interview calls.
- Repeating notifications where acknowledgement was not received.
- Continuing to work open tickets.
- Attending scheduled and/or impromptu meetings on behalf of the team.

Other agenda items may include:
- Important documentation updates
- Important use case adjustments
- Zero-day announcements affecting monitored users, systems, software, etc.


# Containment
Incident Responders shall attempt to contain systems, software, and adversaries in an effort to limit the overall scope of incidents. Courses of action related to containment focus on the immediate protection of information systems and data from further damage while analysis continues and/or deepens. A more complete response may be taken after thorough analysis is performed. 

The primary objectives of containment include:
- Preventing an incident from causing further impact on confidentiality, integrity, and availability.
- Preventing the compromise of additional systems, users, and data.
- Maintaining control of the affected information system(s) and the surrounding environment.
- Ensuring forensically sound acquisition of data when necessary.
- Maintaining and updating the ticket.
- Actively communicating updates through the appropriate technical and operational command channels.


## Disabling Connectivity
Management approval is required before disabling connectivity, except in the most dire and obvious situations.


# Eradication
Upon conclusion of an incident involving a compromised system requiring a rebuild, the original hard drive/device may be reused or be destroyed at the discretion of management. Master boot records must be erased on reused disks to eliminate any possible boot sector infection.


# Recovery
During Recovery, IR and IT personnel will restore the affected network/systems to a "fully mission-capable" (FMC) state. This IR Policy presumes close coordination with the management and the relevant incident response staff and assumes that detailed reporting is updated with current status. 

Managers should establish what a FMC network is as it pertains to their specific installations and missions PRIOR to the need to activate an IR Plan. Once this is defined, staff and managers should capture the FMC condition of their network entry points (e.g., firewalls, routers, remote access terminals, wireless access points, etc.), network topology, network data flow, and machine/device configurations, then store these in a secure location. This information should be kept under configuration management and updated every time changes are made to the network. This information forms the FMC baseline. The FMC baseline is used to determine normal operational conditions versus anomalous conditions of the network and its systems.


## Risk Acceptance
Given a breakdown of risk and any deployed mitigations, management may formally accept residual risk. Risk acceptance shall be discussed on a need-to-know basis, with paperwork and correspondence treated as confidential information and stored carefully to avoid unnecessary exposure of accepted risks. 


## Closing a Ticket	
Tickets marked as closed must be reviewed by a Senior Incident Responder or a Manager. Review consists of the following checks:
- verifying fields are filled properly
- summary and correspondence are professional and reflect well upon the organization
- work logs are present and appear complete and accurate

The reviewer highlighting issues are responsible for ensuring the issues are addressed and the original Incident Responder(s) understand the change sufficiently to avoid the original issue on future tickets.


## Lessons Learned
During the course of many incidents, it is expected that lessons are learned. 

The primary benefits of being mindful of, discussing, and integrating lessons learned include:
- Identifying and addressing infrastructure problems or improvements.
- Identifying and addressing needed updates to existing organizational policies and procedures, or the creation thereof.
- Identifying and addressing technical skill gaps and operational training needs.
- Identifying and addressing issues in any phase of the incident response process outlined in any official documentation.
- Clarifying or adding roles, responsibilities, interfaces, and authority as needed.
- Improving tools required to perform protection, detection, analysis, or response actions.
- Developing training material as needed.

After a major incident has been handled, an "After-Action Review" meeting shall be conducted, wherein lessons-learned will be presented, reviewed, and assigned to members of the team for integration. After-Action Review meetings shall each have a moderator to ensure topics are covered in a timely and efficient manner, as well as an individual assigned to document the discussion. These meetings must conducted with the aim to construct a specific list of actionables with primary points of contact who will be responsible for enacting changes required during the course of the meeting.

In order to benefit the entire Incident Response Team and the organization, these lessons learned should lead to actual change in documentation, instruction, practice, architecture, etc. Smaller scale or scoped incidents may also result in lessons learned that are just as impactful as those observed in larger incidents, and shall be likewise incorporated, though they may not necessitate holding formal After-Action Review meetings.


## Signature Development
Some incidents are expected to give way to potential development of new signatures, rules, reports, etc. to assist in the automated detection of future activity indicative of compromise. Such efforts and content shall be tracked and grouped by the intentions and expected response into use cases. Use cases shall fully document content creation and analysis steps.


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


# References and Resources
Federal Information Security Modernization Act of 2014
- https://www.congress.gov/bill/113th-congress/senate-bill/2521
NIST Risk Management Framework
- https://csrc.nist.gov/Projects/risk-management
NIST Cybersecurity Framework (CSF) 2.0
- https://nvlpubs.nist.gov/nistpubs/CSWP/NIST.CSWP.29.pdf
NIST Special Publication (SP) 800-61 Rev. 2, Computer Security Incident Handling Guide
- https://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-61r2.pdf
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