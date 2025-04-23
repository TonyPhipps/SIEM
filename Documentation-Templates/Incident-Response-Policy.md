The following sample Incident Response Policy is meant to be tailored to your organization before use.

- [Authority](#authority)
- [Scope](#scope)
- [References](#references)
- [Roles and Responsibilities](#roles-and-responsibilities)
- [Objectives](#objectives)
- [Regulatory and Compliance Mandates in Scope](#regulatory-and-compliance-mandates-in-scope)
- [Preparation](#preparation)
  - [Training, Simulations, and Tabletops](#training-simulations-and-tabletops)
  - [Tools and Access](#tools-and-access)
  - [Standard Operating Prorcedures / Playbooks /Use Cases](#standard-operating-prorcedures--playbooks-use-cases)
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

- Incident Response Commander
  - 

- Internal Liaisons
  - 

Note: Third party responsibilities must be outlined in respective contracts.

# Objectives
This policy establishes the requirements for detecting, analyzing, and responding to information or technology incidents for the purpose of protecting business operations as well, minimizing risk and negative impact, and mitigating the results of cybesecurity attacks against critical systems, networks, services, information, and client data.

The primary objectives are to provide policy that ensures the following:
- Robust detection capabilities are maintained, ensuring all suspicious activity is reported. This includes network, host, and/or wireless Intrusion Detection System alerts and any correlated events from other log sources.
- Incidents are effectively contained and systems isolated, minimizing any damage or negative impact on client data, systems, networks, and services.
- The integrity of data is preserved during incident analysis, ensuring accurate time reconstruction and determination of root cause(s), scope of compromise, attacker techniques, and other relevant details.
- Effective coordination and communication of incident information is maintained through appropriate channels.
- Effective and comprehensive incident response, leading to confident recovery of any affected systems and the return to a fully functioning and secure operational state for all services and systems involved. 
- Lessons learned, improving identification, protection, detection, and response strategies and incident handling procedures are identified regularly, preventing and/or reducing reoccurrence.
- Patterns of activity and trends are understood, characterizing the threat and directing protective and defensive strategies.
- A robust incident response life cycle is followed wherein major steps may be performed repetitively, in parallel, or sequentially depending on the requirements of the incident.


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


## Standard Operating Prorcedures / Playbooks /Use Cases
A library of Standard Operating Prorcedures / Playbooks /Use Cases documents shall be created and maintained to train new members, ensure uniformity, and to prevent unnecessary delays.

This library shall be kept up-to-date by all Incident Responders with detailed procedures for products and Incident Response-specific tasks. Incident Responders are to assist in keeping articles up to date and reflective of current procedures by updating as soon as possible when steps change for any reason (i.e. software updates, governance updates, improvements in knowledge or experience gained).


## Internal Points of Contact
Each internal point of contact is expected be aware of this role and to be comfortable acting as a liaison between the Incident Response Team and their respective office. The goal is to eliminate surprises and confidently expect an efficient, streamlined workflow.

The Incident Response Team shall create and maintain a list of Internal Points of Contact. Include primary POC, initial contact guidance, and links or summary of requirements for each office.

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


## External Points of Contact
Each external point of contact must be aware they are a point of contact. Pricing, timing, support staff, and all other questions should be clarified prior to engagement in the middle of a large scale incident. The goal is to eliminate surprises and confidently expect an efficient, streamlined workflow.

The Incident Response Team shall create and maintain a list of External Points of Contact. Include primary POC, initial contact guidance, and links or summary of requirements for each organizaiton.

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


## Alternate Communication Plan
The Incident Response Team shall establish an alternate communications plan for use during any incident or potential incident where the existing organzational communications platforms may or have become unavailable or otherwise compromised.


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

- **Everyone must participate** if  they  have an insight,  observation,  or  question which will help the team identify and correct deficiencies or sustain strengths. The AAR is a dynamic, candid, professional discussion of training that focuses on team performance measured against the task standards.
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