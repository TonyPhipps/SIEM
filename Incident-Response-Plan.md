The following sample incident response plan is meant to be tailored to your organization before use.

- [References](#references)
- [Definitions](#definitions)
- [Responsibilities](#responsibilities)
- [Assumptions](#assumptions)
- [Objectives](#objectives)
- [Preparation](#preparation)
  - [Incident Tracking System](#incident-tracking-system)
  - [Documentation, Training, Awareness](#documentation-training-awareness)
  - [Internally-Gathered Indicators of Compromise](#internally-gathered-indicators-of-compromise)
  - [Coordination & Correspondence](#coordination--correspondence)
    - [Safeguarding Information](#safeguarding-information)
    - [Sanitization of Data](#sanitization-of-data)
    - [Escalation](#escalation)
    - [Notification](#notification)
    - [External Notification](#external-notification)
    - [Law Enforcement Notification and Interaction](#law-enforcement-notification-and-interaction)
    - [Chain of Custody](#chain-of-custody)
    - [Turnover Log & Call](#turnover-log--call)


# References

- NIST SP 800-61, Revision 2, Computer Security Incident Handling Guide
- NIST SP 800-83, Guide to Malware Incident Prevention and Handling for Desktops and Laptops
- NIST SP 800-86, Guide to Integrating Forensic Techniques into Incident Response
- CJCSM 6510.01B, Cyber Incident Handling Program
- Blueteam Handbook: SOC, SIEM, and Threat Hunting
- Crafting the InfoSec Playbook
- SANS Incident Response Stages


# Definitions 

(See Glossary)


# Responsibilities

- Incident Responders will:
  - Leverage experience, knowledge, tools, and available logs to identify, detect, and respond to adversaries.
  - Direct and/or recommend courses of action to be executed in response to a detected incident when autonomy is not possible.
  - Work with relevant personnel to complete the incident handling process outlined herein.
  - Coordinate, notify, and report requirements for computer incident response as necessary.
  - Interface with law enforcement agencies as necessary regarding criminal activities.
  - Maintain up-to-date work log and other details within the incident tracking system(s).
  - Provide feedback and/or adjustments regarding protection measures, identification and detection content, and response actions.
  - Share and document lessons learned to improve the overall service and team.
- Senior Incident Handling Leads will:
  - Provide oversight and management of responsibilities for Incident Responders.
  - Monitor the enterprise-wide status of computer incident response actions and activities.
  - Provide guidance and assistance to all organizational elements in dealing with computer incidents/events.
  - Maintain awareness of business operations to identify potential impact to organizational systems and anything that may impact incident response work load or incident response operations at large.


# Assumptions

The following documents/resources are familiar and readily accessible:
- Cyber Security Events stored in Enterprise Log Management System
- Applicable organizational CERT Techniques, Tactics, and Procedures (TTP)
- Applicable organizational CERT Quick Reference Guides (QRG)


#  Objectives

This policy provides a general, standardized process that establishes the intent and requirements for detecting, analyzing, and responding to information or technology events or incidents for the purpose of mitigating any adverse operational or technical impact on critical client data, systems, networks, and services.

The primary objectives are to:
- Maintain a robust detection capability ensuring all suspicious activity is reported. This includes network, host, and/or wireless Intrusion Detection System alerts and any correlated events from other log sources.
- Effectively contain incidents and isolate systems, minimizing any damage or negative impact on client data, systems, networks, and services.
- Preserve the integrity of data during incident analysis, ensuring accurate time reconstruction and determination of root cause(s), scope of compromise, and other relevant details.
- Ensure the effective coordination and communication of incident information through appropriate channels.
- Provide an effective and comprehensive response, leading to confident recovery of any affected systems and the return to a fully functioning and secure operational state for all services and systems involved. 
- Identify lessons learned, improving identification, protection, detection, and response strategies and incident handling procedures to prevent or reduce reoccurrence.
- Understand patterns of activity and trends, characterizing the threat and directing protective and defensive strategies.
- Follow an incident response lifecycle wherein major steps may be performed repetitively, in parallel, or sequentially depending on the requirements of the incident.


# Preparation

The goal of Preparation is to ensure an Incident Responder has knowledge and references essential to handling an incident. Incident Responders should be familiar with the following documents and have them readily accessible:
- Infrastructure Diagrams.
- Critical systems and services to business operations.
- Local laws and regulations applicable to the affected systems governing incident response, data privacy, and others with impact to investigations.
- Rules of Behavior
- Cybersecurity Training
- Login Warning Banner
- Points of Contact
- User Directory
- Hardware Inventory


## Incident Tracking System

A full-featured ticketing system will be used to track all Incidents. All Incidents and related data will be stored for a period of no less than 1 (one) year. Incidents must be actioned upon and updated at least once per shift until closure. Updates will consist of, at a minimum, a Work Log entry specifying the last action taken or pending status. It is the shared responsibility of all Incident Responders to ensure all incidents receive proper attention and timely updates.

The Work Log will be used to document email correspondence and other information related to the incident.

Results of related reports, searches, and other files that are not easily added to the Work Log will be added to the incident as an  attachment or stored in the Incidents Archive (keeping in mind encryption policies).

The Executive Summary will be kept up-to-date, reflecting the known beginning, midddle, and end of each incident at a high level. Pending details should be included in this field, as they provide the current summary.


## Documentation, Training, Awareness

Incident Responders will maximize off-peak duty hours by remaining productive and helpful to the team, including...
- performing and seeking cross-training
- improving & updating documentation
- maintaining awareness of cyber security through official and open-source intelligence
- studying normal behavior of monitored logs, networks, systems, etc. with the goal of improving identification of anomalies
- safely validating signatures fire as expected

The internal Knowledge Base will be kept up-to-date with detailed procedures for products and Incident Response-specific processes.

The Knowledge Base will be referenced often and maintained by Incident Handling Leads. Incident Responders are to assist in keeping it up to date and reflective of current procedures by updating as soon as possible when steps change for any reason (i.e. software updates, governance updates, improvements in knowledge or experience gained).


## Internally-Gathered Indicators of Compromise

True-positive incidents may provide valuable indicators of compromise including file names, URLs, IP addresses, domains, etc. that could reveal compromise of other systems being monitored. These internal  IOCs and their respective details will be tracked in such a way that allows Incident Responders to quickly find, study, and respond to ongoing investigations. Details will include the context in which the IOC was first observed, when it will expire, and where it is currently being leveraged for automated detection, if at all.

Internal IOCs will be reviewed annually at expiration time and each time it is referenced during an investigation. If the IOC is determined to still be of use, its expiration will be set for one year from that review date.


## Coordination & Correspondence

Incident Responders will often need to communicate with outside parties regarding an incident, and should do so whenever appropriate, such as contacting law enforcement, ISP’s, vendors, other incident response teams, and seeking external expertise. The incident response team should maintain contacts with the public affairs office, legal department, and various persons in management.

All email correspondence related to incidents will include a carbon-copy (CC) to the team mailbox. Emails containing sensitive information must have all recipients verified for authoried access and must be encrypted.

All communication, files, and information related to an incident will be disseminated only on a need-to-know basis. Incident details shall not be discussed outside of the Incident Response team and its management without previous consent from management.

Incident Responders may need to speak to a software vendor about suspicious activity. This contact could include questions regarding the significance of certain log entries or known false positives for certain intrusion detection signatures, where minimal information regarding the incident may need to be revealed. Software vendors may also provide information on known threats (e.g., new attacks) to help organizations understand the current threat environment. Sanitization shall be performed on data prior to being sent to software vendors when possible and reasonable. Scripts may be used to significantly reduce what appears to be a large amount of manual effort.


### Safeguarding Information

Incident Responders will practice due diligence in safeguarding  information related to incidents both while stored at rest and in transit. Every effort will be made to reasonably secure data known to contain sensitive information through with modern encryption techniques both in transit (e.g. email encryption and secure web servers) and at rest (e.g. encrypted zip containers and physical media).


### Sanitization of Data

After authorization for data relase to third parties, a sanitization check is required to ensure the data is appropriate for the audience. Possible concerns include the releasing of protected intellectual property or other data protected by laws and governance.


### Escalation

Incident Responders unable requiring assistance must escalate an incident to the next higher position of seniority. The next level of escalation is the manager and remaining chain of command, who may then request external, third-party assistance if needed.


### Notification

Incidents are classified by priority, which in turn determines notification timeline requirements. Once priority is determined and the event is determined to be a true positive, the timeline requirement to notify the affected party or parties begins.

 |  Priorty  | Timeline  |
 | :-------: | :-------: |
 | Emergency | Immediate |
 |   High    |    1h     |
 |  Medium   |    8h     |
 |    Low    |    24h    |

Recipients are expected to acknowledge the receipt of notification emails following the same timeline above. If an acknowledgement is not received, the Incident Responder will begin the notification process again seeking acknowledgement through another means of communication, like email. Further lack of response will result in escalating the case to a higher authority. The notification process will be repeated until acknowledgement is received or if the incident runs its course to complete recovery.

High or emergency cases that require continuous attention will be passed along during each shift turnover until resolved.


### External Notification

All external correspondence must be sent with courtesy copies (CC) to the SOC group inbox with incident ID number in the subject. All correspondence with Emergency priority will be sent with CC to sender's Manager.

Any incident that may potentially affect another organization must be reported to that organization as soon as possible along with a summary sufficiently detailed to allow them to begin an investigation.

Incidents or situations escalating or expected to escalate to LE/CI or to parties outside the organization will also include notification of management beforehand and during correspondence through availble means (CC line, teleconference information sharing, etc).

Example external parties
- Law Enforcement
- Internet Servie Providers may assist in blocking major distributed attacks or tracing the origin.
- Owners of Attacking Addresses. If attacks are originating from an external organization’s IP address space, coordination with the designated security contacts for the organization may be necessary to alert them to the activity or to ask them to respond and collaborate.


### Law Enforcement Notification and Interaction

Law Enforcement / Criminal Investigations (LE/CI), will be notified of all activity matching the following characteristics:
- Threatens public safety
- Threatens national security
- Substantial operational or financial impact to a U.S. citizen, company, or similar entity.
- Involves child pornography
- Otherwise legally questionable

Report of such incidents will occur according to priority timelines previously outlined. Any reported incident will include all related evidence and investigation will be paused immediately. If the CERT Incident Responder or Forensic Analyst takes action on behalf of LE/CI, they are considered an Agent of Law Enforcement, possibly leading to a court summons. Such authorization must be provided by a manager or a higher position of authority. If authorization is provided, the Incident Responder must ensure that all evidence handling, chain of custody forms, and notes are thoroughly recorded. Management and LE/CI must remain fully informed and involved regarding all decisions revolving around Law Enforcement requesting action of an Incident Responder.

For incidents to be investigated for computer crime, a qualifying Incident Responder will understand proper forensics and evidence handling policies and procedures. Otherwise, the Incident Handler must stand by and seek the assistance of a qualified Incident Responder to perform proper evidence collection. Data and information gathered for forensics analysis or evidence must be obtained and handled IAW various applicable laws, possibly spanning many jurisdictions, in order to ensure the authenticity and reliability of the information, that it remains admissible in court.

Pornography alone is not enough to alert LE/CI, unless it involves a minor or is otherwise legally questionable.


### Chain of Custody

It is important to clearly document how all evidence has been preserved. Evidence shall be accounted for at all times; whenever evidence is transferred from person to person, chain of custody forms will detail the transfer and include each party’s signature.

A proper chain of custody must be maintained for all evidence including, but not limited to, log files, forensic images, hard drives, peripherals, removable media, and other hardware related to the Incident. This also applies to backups of evidence created while in abeyance of further instruction, shipment, or onsite pickup by law enforcement.

It is generally desirable to acquire evidence from a system of interest as soon as one suspects that an incident may have occurred. Many incidents cause a dynamic chain of events to occur; an initial system snapshot may do more good in identifying the problem and its source than most other actions that can be taken at this stage. From an evidentiary standpoint, it is much better to get a snapshot of the system as-is rather than doing so after Incident Responders, system administrators, and others have inadvertently altered the state of the machine during the investigation.

Physical evidence will be placed in a protected storage container or secure areas appropriate for the classification of the data/hardware, where access is limited to the Organizational CERT and other staff investigating the incident. The evidence shall have a log file containing the following information:
- Storage container (for classified incident handling)
- Secure area (for non-classified incident)
- IAM/IAO or system administrator who imaged the system
- System from which the image was attained
- System IP and DNS name, if available
- Date and Time of the image creation
- Date and Time of the initial incident
- A list of all individuals who accessed the image, if any
- When applicable, an MD5-Hash of the image when created
- The software utilized to obtain the image
- A Signature of the person who created image
- A Signature of person who secured image


### Turnover Log & Call

In order to facilitate information exchance, a brief Turnover Call will be conducted between each of the three shifts. Turnover calls will signify the relinquishing of monitoring duties from one shift to the next including promptly responding to phone calls, emails, and other related duties.

A turnover page will be maintained on Confluence to track any ongoing tasks that must continue to the next shift including, but not limited to:
- Follow-up calls.
- Repeating notifications where acknowledgement was not received.
- Continuing to work open cases.
- Attending scheduled and/or impromptu meetings on behalf of the team.

Other agenda items may include:
- Important documentation updates
- Important use case adjustments
- Zero-day announcements affecting monitored users, systems, software, etc.

