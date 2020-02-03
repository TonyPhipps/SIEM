The following sample incident response plan is meant to be tailored to your organization before use.

- [References](#references)
- [Responsibilities](#responsibilities)
- [Objectives](#objectives)
- [Preparation](#preparation)
  - [Incident Tracking System](#incident-tracking-system)
  - [Documentation, Training, Awareness](#documentation-training-awareness)
  - [Internally-Gathered Indicators of Compromise](#internally-gathered-indicators-of-compromise)
  - [Coordination & Correspondence](#coordination--correspondence)
- [Identification](#identification)
  - [Initial Assessment](#initial-assessment)
  - [Opening an Incident](#opening-an-incident)
  - [-------------------](#hr)
  - [-------------------](#hr-1)
  - [-------------------](#hr-2)
  - [-------------------](#hr-3)
  - [-------------------](#hr-4)
  - [-------------------](#hr-5)
  - [-------------------](#hr-6)
  - [-------------------](#hr-7)


# References

- NIST SP 800-61, Revision 2, Computer Security Incident Handling Guide
- NIST SP 800-83, Guide to Malware Incident Prevention and Handling for Desktops and Laptops
- NIST SP 800-86, Guide to Integrating Forensic Techniques into Incident Response
- CJCSM 6510.01B, Cyber Incident Handling Program
- Blueteam Handbook: SOC, SIEM, and Threat Hunting
- Blueteam Handbook: Incident Response Edition
- Crafting the InfoSec Playbook
- SANS Incident Response Stages


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
- Senior Incident Responders will:
  - Provide oversight and management of responsibilities for Incident Responders.
  - Monitor the enterprise-wide status of computer incident response actions and activities.
  - Provide guidance and assistance to all organizational elements in dealing with computer incidents/events.
  - Maintain awareness of business operations to identify potential impact to organizational systems and anything that may impact incident response work load or incident response operations at large.


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

The goal in preparation is to ensure Incident Responders have the knowledge and references essential to handling an incident. Incident Responders should be familiar with the following documents and have them readily accessible:
- IP Address Management
- Network Architecture Diagrams
- User Directory
- Asset Inventory
  - Critical systems and services to business operations
- Local laws and regulations applicable to the affected systems governing incident response, data privacy, and others with impact to investigations.
- Rules of Behavior / Acceptable Use Policy
- Login Warning Banner
- User Directory
- Account and Device Naming Convetions
- Disaster Recovery Plan
- Business Continuity Plan
- Change Mangement Procedures
- Data Classification and Protection Guidelines
- Standard Security Configurations


## Incident Tracking System

A full-featured ticketing system will be used to track all Incidents. All Incidents and related data will be stored for a period of no less than 1 (one) year. Incidents must be actioned upon and updated at least once per shift until closure. Updates will consist of, at a minimum, a Work Log entry specifying the last action taken, who took the actions, and when. It is the shared responsibility of all Incident Responders to ensure all incidents receive proper attention and timely updates.

Tickets will have relevant emails and correspondence attached in such a way that they are archived alongside other details for review and records.

Documents too large or otherwise not easily attached to the Ticket will be stored in a secondary file system, encrypted and limited in access to the Incident Response Team and other parties with a need-to-know.

The Executive Summary will be kept up-to-date, reflecting the known beginning, midddle, and end of each incident at a high level. Outstanding actions should be included in this field, as they provide the current summary.


## Documentation, Training, Awareness

Incident Responders will maximize off-peak duty hours by remaining productive and helpful to the team, including...
- remaining familiar with documents and diagrams listed in the preparation phase.
- performing and seeking cross-training.
- improving & updating documentation.
- maintaining awareness of cyber security through official and open-source intelligence.
- studying normal behavior of monitored logs, networks, systems, etc. with the goal of improving identification of anomalies.
- safely validating signatures fire as expected.

The internal Knowledge Base will be kept up-to-date with detailed procedures for products and Incident Response-specific processes.

The Knowledge Base will be referenced often and maintained by Senior Incident Responders. Incident Responders are to assist in keeping articles up to date and reflective of current procedures by updating as soon as possible when steps change for any reason (i.e. software updates, governance updates, improvements in knowledge or experience gained).


## Internally-Gathered Indicators of Compromise

True-positive incidents may provide valuable indicators of compromise (IOC) including file names, URLs, IP addresses, domains, etc. that could reveal compromise of other systems being monitored. These internal IOCs and their respective details will be tracked in such a way that allows Incident Responders to quickly find, study, and respond to ongoing investigations. Details will include the context in which the IOC was first observed, when it will expire, and where it is currently being leveraged for automated detection.

Internal IOCs will be reviewed annually at expiration time and each time it is referenced during an investigation. If the IOC is determined to still be of value, its expiration will be set for one year from that review date.


## Coordination & Correspondence

Incident Responders will often need to communicate with outside parties regarding an incident, and should do so whenever appropriate, such as contacting law enforcement, ISP’s, vendors, other incident response teams, and seeking external expertise. The Incident Response Team should maintain contacts with the public affairs office, legal department, and various persons in management.

All email correspondence related to incidents will include a carbon-copy (CC) to the Incident Response Team email inbox. Emails containing sensitive information must have all recipients verified for authoried access and must be encrypted. Using an external, encrypting file sharing service is acceptable.

All communication, files, and information related to an incident will be disseminated only on a need-to-know basis. Incident details shall not be discussed outside of the Incident Response team and its management without previous consent from management.

Incident Responders may need to speak to a software vendor about suspicious activity. This contact could include questions regarding the significance of certain log entries or known false positives for certain intrusion detection signatures, where minimal information regarding the incident may need to be revealed. Software vendors may also provide information on known threats (e.g., new attacks) to help organizations understand the current threat environment. Sanitization shall be performed on data prior to being sent to software vendors when possible and reasonable. Scripts may be used to significantly reduce what appears to be a large amount of manual effort.

At least one secondary communication channel should be established in the case where primary means of communication may be compromised. This could be cell phones, secondary email accounts, etc. These systems must be established prior to their need to minimize their immediate use in a time of need.


### Safeguarding Information

Incident Responders will practice due diligence in safeguarding information related to incidents both while stored at rest and in transit. Every effort will be made to reasonably secure data known to contain sensitive information with modern encryption techniques applied, both in transit (e.g. email encryption and secure web servers) and at rest (e.g. encrypted zip containers and physical media).


### Sanitization of Data

After receiving authorization for data release to third parties, a sanitization check is required to ensure the data is appropriate for the audience. Possible concerns include the releasing of protected intellectual property or other data protected by laws and governance. This data can be stripped with custom scripts or tools design for such sanitization. Only once sentiive data is removed or obfuscated will the data be shared.


### Escalation

Incident Responders requiring assistance must escalate an incident to the next higher position of seniority. The next level of escalation beyond the Incident Response Team is the manager and remaining chain of command, who may then request external, third-party assistance if needed.


### Notification

Incidents are classified by priority, which in turn determines notification timeline requirements. Once priority is determined and the event is determined to be a true positive, the timeline requirement to notify the affected party or parties begins.

 |  Priorty  | Timeline  |
 | :-------: | :-------: |
 | Emergency | Immediate |
 |   High    |    1h     |
 |  Medium   |    8h     |
 |    Low    |    24h    |

Recipients are expected to acknowledge the receipt of notification emails following the same timeline above. If an acknowledgement is not received, the Incident Responder will begin the notification process again seeking acknowledgement through another means of communication, like email or phone. Further lack of response will result in escalating the case to a higher authority. The notification process will be repeated until acknowledgement is received or if the incident runs its course to complete recovery.

High or emergency cases that require continuous attention will be passed along during each shift turnover until resolved.


### External Notification

All external correspondence must be sent with courtesy copies (CC) to the Incident Response Team email box with incident ID number in the subject. All correspondence with Emergency priority will be sent with CC to sender's manager and the recipients manager, when possible.

Any incident that may potentially affect another organization must be reported to that organization as soon as possible along with a summary sufficiently detailed to allow them to begin an investigation.

Incidents or situations escalating or expected to escalate to Law Enforcement or to parties outside the organization will also include notification of management beforehand and during email, phone, or other correspondence.

Example external parties
- Law Enforcement
- Internet Servie Providers may assist in blocking major distributed attacks or tracing the origin.
- Owners of Attacking Addresses. If attacks are originating from an external organization’s IP address space, coordination with the designated security contacts for the organization may be necessary to alert them to the activity or to ask them to respond and collaborate.


### Law Enforcement Notification and Interaction

Law Enforcement will be notified of all activity matching the following characteristics:
- Threatens public safety
- Threatens national security
- Substantial operational or financial impact to a U.S. citizen, company, or similar entity
- Involves child pornography
- Otherwise legally questionable

Report of such incidents will occur according to priority timelines previously outlined. Any reported incident will include all related evidence and investigation will be paused immediately. If the Incident Responder or Forensic Analyst takes action on behalf of Law Enforcement, they are considered an Agent of Law Enforcement, possibly leading to a court summons. Such authorization must be provided by a manager or a higher position of authority. If authorization is provided, the Incident Responder must ensure that all evidence handling, chain of custody forms, and notes are thoroughly recorded. Management and Law Enforcement must remain fully informed and involved regarding all decisions revolving around Law Enforcement requesting action of an Incident Responder.

For incidents to be investigated for computer crime, a qualifying Incident Responder will have a firm understanding of proper forensics and evidence handling policies and procedures. Otherwise, the Incident Handler must stand by and seek the assistance of a qualified Incident Responder to perform proper evidence collection. Data and information gathered for forensics analysis or evidence must be obtained and handled in accordance with various applicable laws, possibly spanning many jurisdictions, in order to ensure the authenticity and reliability of the information ensuring it remains admissible in court.

Pornography alone is not enough to alert Law Enforcement unless it involves a minor or is otherwise legally questionable.


### Chain of Custody

It is important to clearly document how all evidence has been preserved. Evidence shall be accounted for at all times; whenever evidence is transferred from person to person, chain of custody forms will detail the transfer and include each party’s signature.

A proper chain of custody must be maintained for all evidence including, but not limited to, log files, forensic images, hard drives, peripherals, removable media, and other hardware related to the Incident. This also applies to backups of evidence created while in abeyance of further instruction, shipment, or onsite pickup by Law Enforcement.

Physical evidence will be placed in a protected storage container or secure areas appropriate for the classification of the data/hardware, where access is limited to and tracked by those investigating the incident. The evidence shall have a log file containing the following information:
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

In order to facilitate information exchance, a brief Turnover Call will be conducted between each of the three shifts. Turnover calls will signify the relinquishing of monitoring duties and investigation continuation from one shift to the next including promptly responding to phone calls, emails, and other related duties.

A turnover page will be maintained on Confluence/SharePoint/Collaboration Tool to track any ongoing tasks that must continue to the next shift including, but not limited to:
- Follow-up calls.
- Repeating notifications where acknowledgement was not received.
- Continuing to work open cases.
- Attending scheduled and/or impromptu meetings on behalf of the team.

Other agenda items may include:
- Important documentation updates
- Important use case adjustments
- Zero-day announcements affecting monitored users, systems, software, etc.


# Identification

An event is any observable occurrence in a system or network. Events include a user connecting to a file share, a server receiving a request for a web page, a user sending email, and a firewall blocking a connection attempt. Suspicious activity includes events with a potentially negative consequence, such as system crashes, packet floods, unauthorized/questionable use of system privileges, unauthorized/questionable access to sensitive data, and destruction of data. An incident is a violation or imminent threat ...
- of violation of computer security policies
- of acceptable use policies
- of standard security practices
- to confidentiality of business-critical data
- to accessiblity of business-critical services
- to integrity of business-critical data

Incident Responders will monitor available dashboards, signatures, and logs for suspicious activity and events that have the potential to cause an incident. Identification by automated means (e.g. signatures, heuristics analysis, statistics-based anomalies, and automated correlation) will be leveraged to increase the effectiveness of each Incident Responder. Manual identification methods, such as relying on users to identify and report infected hosts, and individually checking each host, are not feasible for most situations. However, a means of manual end-user reporting will be made available by maintaining a group email box and a phone number.

Incidents can originate from several other sources, including:
- Users or individuals may report suspicious activity via email, telephone, or a support ticket.
- Reports from other organizations such as another service provider, governments agencies, law enforcement, partners, and competitors.

However, centralized log databases and Security Information and Event Management (SIEM) solutions are expected to be the primary points of monitoring and incident identification. Within the SIEM, correlation rules and dashboards will be maintained that both display events of particular concern and present recent events for short-term correlation and analysis. Queries tuned to the business operating environment will be maintained and shared among the team to speed up identification.

Identification can occur from multiple places in the environment, including:
- Network-level events including firewalls, VPN, proxy logs, network-level intrusion detection and prevention systems, network access control, routers, switches, and other appliances.
- Workstation-level events including operating system events, antivirus, host-based intrusion prevention systems, host-based firewalls, rogue detection, application whitelisting, etc.
- Server-level events including Active Directory, DNS, DHCP, web, database, and other application servers.


## Initial Assessment

An initial assessment will be conducted to determine if the identified event or activity constitutes an incident. Initial assessment shall be performed quickly, even with limited details and analysis. After initial assessment, if the activity or event is determined to be benign, no incident is required.

An Incident Responder that suspects that an incident has occurred shall immediately start recording all facts regarding the potential incident. At the very least this will include date/time, source party, destination party(ies), a description of the actions performed, and a copy of correspondence/events. Documenting system events, conversations, and observed changes in files can lead to a more efficient, more systematic, and less error-prone handling of the incident. Every step taken from the time the incident was detected to its final resolution will be documented and time-stamped. Information of this nature can also be used as evidence in a court of law if legal prosecution is pursued.

When conducting an initial assessment, the following will be considered:
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


## Opening an Incident

The investigating Incident Responder will create an incident and assign it to themselves. Senior Incident Responders may assign and reassign incidents as needed. Incident Responders may request incident reassignments, which remains at the discretion of the present Senior Incident Responders, management, or the most senior Incident Responder on duty. The Incident Responder assigned to an incident is responsible for successful execution of all actions required in handling the incident until otherwise notified or relieved during the next shift change. The assigned Incident Responder may request assistance from team members, but ultimately maintains all responsibility for the progression of the incident.


-------------------
-------------------
-------------------
-------------------
-------------------
-------------------
-------------------
-------------------
-------------------

