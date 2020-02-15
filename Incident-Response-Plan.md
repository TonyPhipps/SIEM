The following sample incident response plan is meant to be tailored to your organization before use.

- [References](#references)
- [Responsibilities](#responsibilities)
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
- [Identification](#identification)
  - [Initial Assessment](#initial-assessment)
  - [Opening an Incident](#opening-an-incident)
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
  - [----------------------------------](#hr)
  - [----------------------------------](#hr-1)
  - [----------------------------------](#hr-2)
  - [----------------------------------](#hr-3)
  - [----------------------------------](#hr-4)
  - [----------------------------------](#hr-5)
  - [----------------------------------](#hr-6)


# References

- NIST SP 800-61, Revision 2, Computer Security Incident Handling Guide
  - https://doi.org/10.6028/NIST.SP.800-61r2
- NIST SP 800-83 rev. 1, Guide to Malware Incident Prevention and Handling for Desktops and Laptops
  - https://doi.org/10.6028/NIST.SP.800-83r1
- NIST SP 800-86 rev. 2, Guide to Integrating Forensic Techniques into Incident Response
  - https://doi.org/10.6028/NIST.SP.800-86
- CJCSM 6510.01B, Cyber Incident Handling Program
  - https://www.jcs.mil/Portals/36/Documents/Library/Manuals/m651001.pdf
- Blueteam Handbook: SOC, SIEM, and Threat Hunting
  - https://www.amazon.com/dp/1091493898
- Blueteam Handbook: Incident Response Edition
  - https://www.amazon.com/dp/1500734756
- Crafting the InfoSec Playbook
  - https://www.amazon.com/dp/1491949406
- SANS Incident Response Process (outlined in GCIH)
  - https://www.sans.org/course/hacker-techniques-exploits-incident-handling

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

Incident Responders must have a strong command of the analysis tools at their disposal. This organization provides support by providing Incident Responders with specialized training, continuing education, and a lab environment to maintain awareness and familiarity. Automated analysis and alerting tools only provide the beginnings of understanding a security incident, and only a skilled analyst provided with appropriate tools can complete the picture.


## Internally-Gathered Indicators of Compromise

True-positive incidents may provide valuable indicators of compromise (IOC) including file names, URLs, IP addresses, domains, etc. that could reveal compromise of other systems being monitored. These internal IOCs and their respective details will be tracked in such a way that allows Incident Responders to quickly find, study, and respond to ongoing investigations. Details will include the context in which the IOC was first observed, when it will expire, and where it is currently being leveraged for automated detection.

Internal IOCs will be reviewed annually at expiration time and each time it is referenced during an investigation. If the IOC is determined to still be of value, its expiration will be set for one year from that review date.


## Coordination & Correspondence

Incident Responders will often need to communicate with outside parties regarding an incident, and should do so whenever appropriate, such as contacting law enforcement, ISP’s, vendors, other incident response teams, and seeking external expertise. The Incident Response Team should maintain contacts with the public affairs office, legal department, and various persons in management.

All email correspondence related to incidents will include a carbon-copy (CC) to the Incident Response Team email inbox. Emails containing sensitive information must have all recipients verified for authoried access and must be encrypted. Using an external, encrypting file sharing service is acceptable.

All communication, files, and information related to an incident will be disseminated only on a need-to-know basis. Incident details shall not be discussed outside of the Incident Response team and its management without previous consent from management.

Incident Responders may need to speak to a software vendor about suspicious activity. This contact could include questions regarding the significance of certain log entries or known false positives for certain intrusion detection signatures, where minimal information regarding the incident may need to be revealed. Software vendors may also provide information on known threats (e.g., new attacks) to help organizations understand the current threat environment. Sanitization shall be performed on data prior to being sent to software vendors when possible and reasonable. Scripts may be used to significantly reduce what appears to be a large amount of manual effort.

At least one secondary communication channel should be established in the case where primary means of communication may be compromised. This could be cell phones, secondary email accounts, etc. These systems must be established prior to their need to minimize their immediate use in a time of need.

Incident Responders should collaborate with security and product administrators in advance in any incidents to identify data sources that can aid in detection, investigation, and response efforts. Incident Responders should seek to understand what types of information each data source may record and identify data/logging relationships that could offer secondary sources of logs.

Consider the following actions likely to arise when investigating or responding to an incident and who the best point(s) of contact are for each:
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

Report of such incidents will occur according to priority timelines previously outlined. Any reported incident will include all related evidence and investigation will be paused immediately. If the Incident Responder or takes action on behalf of Law Enforcement, they are considered an Agent of Law Enforcement, possibly leading to a court summons. Such authorization must be provided by a manager or a higher position of authority. If authorization is provided, the Incident Responder must ensure that all evidence handling, chain of custody forms, and notes are thoroughly recorded. Management and Law Enforcement must remain fully informed and involved regarding all decisions revolving around Law Enforcement requesting action of an Incident Responder.

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


## Investigation

Available information related to the incident will be collected, validated, and analyzed to characterize the perceived threat and to assist in identifying the attack technique, scope of compromise, root cause(s), and potential business impact. The incident will continue to be updated with any actions taken and other useful information that may help to better characterize the incident. Investigations will be handed over to the next shift, rather than remain inactive while the original Incident Responder is off duty.

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
    - If a workstation is involed, how long would it take to restore operations to its user, and how would that downtime affect the business?
- If policy allows the choice, should the system be isolated or should the team monitor closely?
- What was the time of the event that began the investigation?
- What surrounding events exist with matching source/destination user/IP addresses?
- Are there any logs available outside the centralized logging solution that would benefit the investigation?
- What is the earliest observable event relevent to the investigation?
- What symptoms has the user experienced?
- If the system was compromised, what did its most recent vulnerability scan data reveal?
    - Are there any recent zero-day or otherwise notable vulnerabilities present?
- Which tenets of security (Confidentiality, Integrity, and Availability) are affected?
- What is my hypothesis for what happened? What logs will I need to confirm or deny it?

Unless a suspicion arises early in the investigation of an insider threat, affected users may be asked relevant questions via email or telephone interview depending on the characteristics of the incident. The Shift Change meeting will be leveraged to request assistance from an appropriate shift when a telephone-based user interview is required (e.g. the affected user works a different shift than the current Incident Responder). Interview questions and answers will be recorded in the case, even when a verbal interview was conducted.

When possible, investigation should be conducted in parallel with containment, eradication, and recovery stages. An extremely linear incident response process would likely result in a much higher business expense than is necessary by prolonging adversarial exposure, availability impact, and increasing costs.


### Gather Logs

Understanding the activity characteristics is helpful in assigning an appropriate priority to the incident response efforts and planning effective containment, eradication, and recovery activities. Details of queries executed (search string and date) to collect logs will be recorded in the applicable case.

The information to be analyzed typically includes various logs, files, configuration settings, records of currently logged-on users, past connections (logins), running processes, open files, and changes to files or system settings (access control lists (ACLs), registries, and permissions).

All logs relevant to the event or activity will be gathered for analysis. The centralized log management system should be the starting point for log acquisition. When necessary, valuable logs from non-centralized services may be collected or requested from the system owner(s). Network captures (in the form of .pcap files) may be required depending on the nature of the incident. Acquiring only traffic that matches specific criteria keeps the volume of data manageable and minimizes the inadvertent capture of sensitive, regularyede information. Endpoint logs or a collection endpoint volatile state information is often necessary to confirm scope of compromise. This could include a memory snapshot or a collection of scripts to collect information. If escalation to law enforcement or the court system is expected, carefully consider the evidence impact of accessing the endpoint at all beyond network isolation.


### Analysis

Timeline reconstruction can help in understanding the attacker’s actions. Collected logs from relevant hosts, network appliances, server applications, etc. must be identified and placed into an event timeline to allow proper analysis. This timeline may be used to correlate events among multiple sources, which is invaluable in confirming of denying any hypotheses formed in earlier stages of the investigation.

Note affected systems IPs, domain names, files, and accounts to allow retrospective analysis for repeat offenders, threat intelligence matches, and the potential for a wider scope than expected. Analysis that does result in a widening of scope in relation to time, systems, users, files, etc. may require gathering of additional logs. Incident Responders should maintain a high level of awareness of data that could be used as internal indicators of compromise that could result in a shorter detection time (or even prevention of) future incidents.

The involvement of mulitple teamd and various functional communities (e.g., intelligence, subject-matter experts, and application owners) may significantly improve incident response. It is important to involve relevant parties by informing them, asking direct questions, and making direct requests for support as needed and as soon as possible.


### Determine Priority

Levels of impact may be "Low," "Medium,"  "High," or "Emergency." Higher Incident Responders must coordinate with all organizations involved in the incident to determine whether systems from external agencies or organizations are involved. Priority determination must include consideration of the current and potential impact on the confidentiality, availability, and integrity of organizational operations, data, assets, and individuals.

Other considerations include direct or indirect impact on:
- Network health status.
- Potential data compromise or loss.
- Equipment downtime or destruction.
- Downstream impact on other ISs or components (e.g., a machine removed from operations takes 8 hours to be rebuilt).
- Stolen sensitive data, operational plans, and decision briefs that provide an adversary with a critical advantage.
- Complete or partial databases loss.
- Degraded or denied access to critical business functions.
- Degraded, denied, or misdirected communication from leadership to subordinate offices.
- Loss of control of critical networks.

_Establish any service level agreements or other requirements related to Priority_


### Determine Attack Technique

Attack Techniques define the primary paths or methods used by the adversary to cause the incident to occur. This information is used to provide metrics and identify trends in the prevalence of attack techniques. By understanding the most prevalent attack techniques, tactical and strategic plans can be developed to improve defensive and detective posturing.

Incident Responders will use MITRE's ATT&CK Framework to determine the appropriate attack techniques tied to the incident and record the information in the case.


### Determine Root Cause

Root cause is defined as the high-level oversight, misconfiguration, or process failure that provided the exposure exploited by the adversary. Root cause metrics are used to assisting in preventing similar incidents from occurring in the future. Underlying system weaknesses, vulnerabilities, or security controls that could have prevented or mitigated the impact of the incident will be identified. More than one weakness category may apply.

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

Root cause(s) should be determined prior to the recovery and reconstitution of any affected system, unless not practical or otherwise approved. The decision to restore a system without identifying the root cause(s) must be weighed carefully doing so may restore the original exposure for repeated exploitation.


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

Malware analysis, when necessary, will be conducted on system isolated from all business systems and networks.

Incident Responders may study the behavior of malware by analyzing it actively by means of executing the malware and monitoring it during execution. Such active approaches are best performed on malware test systems instead of production hosts to minimize possible damage caused by allowing the malware to execute. Ideal active approaches involve an incident Responder acquiring a malware sample from an infected host and placing the malware on an isolated test system. Test systems are to be maintained virtually to allow instantaneous restoral to a known-good state through snapshots or similar features.

The test system should: 
- include up-to-date tools for identifying and monitoring software
- maintain an elevated logging level, at debug level when necessary.
- include immediate log forwarding to reduce potential of losing visibility when malware cleans up its own tracks by means of log and data destruction or altering

Malware test systems are helpful not only for analyzing current malware threats without the risk of inadvertently causing additional damage to the organization, but also for training staff in malware incident handling.


# Containment

Incident Responders will attempt to contain systems, software, and adversaries in an effort to limit the overall scope of incidents. Courses of action related to containment focus on the immediate protection of information systems and data from further damage while analysis continues and/or deepens. A more complete response may be taken after thorough analysis is performed. 

The primary objectives of containment include:
- Preventing an incident from causing further impact on confidentiality, integrity, and availability.
- Preventing the compromise of additional systems, users, and data.
- Maintaining control of the affected information system(s) and the surrounding environment.
- Ensuring forensically sound acquisition of data when necessary.
- Maintaining and updating the incident.
- Actively communicating updates through the appropriate technical and operational command channels.

For more widespread malware incidents, such as fast-spreading worms, a strategy that contains the incident for most hosts as quickly as possible is necessary; this aims to limit the number of machines that are infected, the amount of damage that is done, and the amount of time that it will take to fully recover all data and services. 

No single malware containment category or individual method is appropriate or effective in every situation; Incident Responders should select a combination of containment methods that is likely to be effective in containing the current incident while limiting impact to evidence and increase in scope. In some cases eradication may need to be immediately performed, skipping containment in favor of a more rapid response.

Containment actions that may affect the ability to acquire and preserve data about the incident must be decided on carefully. When making these decisions, it is important to assess the relative value of ensuring mission success by preventing further damage against the potential for containment actions to hinder further analysis. Malware on a host may attempt to exfiltrate sensitive data, replace system files, or cause other damage. Some malware is designed to cause additional damage when network connectivity is lost or other containment measures are performed.

When sufficient information to contain and eradicate the incident is lacking, consultation with internal and external resources may be required. It is important to accurately determine the root cause of each incident to allow confidence in the completeness of containment courses of action.


## User Participation

When possible, automated and/or remote containment actions must be performed by trained, experience staff. However, when a system administrator or pre-established contact for incident response assistance is unvailable, options are limited. Leveraging users for containment actions is a last resort due to varying levels of user expertise. In most cases, the level of user participation is expected to be limited to disconnecting from the network immediately and either notifying or delivering their system to the nearest administrator or shipping the hardware to the Incident Response Team.


## Containment Courses of Action

Various courses of action can be taken to contain malware and malicious activity to allow further analysis and eradication. Often signature-based or threat intelligence-based security tools are updated with capabilities that automatate containment/prevention effectively. This may allow careful rolling back of containment steps. Note that if the scope of compromise includes the OS, it is possible for malware or adversaries to remain hidden from any security tools or controls.

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

NIST SP 800-83 may be referred to for COAs and Response Actions (RAs) for various attacks such as DoS, malicious code, unauthorized access, and inappropriate usage.

Some details on containments steps are presented below.


## Disablement and/or Shutdown of Services/Processes

Some malware incidents necessitate more drastic and potentially disruptive measures for containment. These incidents make extensive use of a particular service. Containing such an incident quickly and effectively might be accomplished through a loss of services, such as shutting down a service used by malware, blocking a certain service at the network perimeter, or disabling portions of a service (e.g., large mailing lists). Also, a service might provide a channel for infection or for transferring data from infected hosts. This action is typically performed at the application level (e.g. disabling a service on servers) or at the network level (e.g. configuring firewalls to block IP addresses or ports associated with a service). System administrators must be consulted to gain understanding of dependencies between major services when making containment decisions.


## Disabling Connectivity

Containing incidents by placing temporary restrictions on network connectivity can be very effective. An alternative to blocking network access for particular IP addresses is to disconnect the infected hosts from the network, which could be accomplished by reconfiguring network devices to deny network access, physically disconnecting network cables from infected hosts, or using host-based firewalls to greatly restrict network communication. Such activities could eliminate network or service access to groups of non-compromised hosts. Implementing a widespread loss of connectivity to achieve containment is most likely to be acceptable in cases where malware activity is already causing severe network disruptions or infected hosts are performing attacks. Because a major loss of connectivity is likely to affect organizational missions, connectivity must be restored as soon as possible.

When possible, avoid shutting down systems prior to acquiring and preserving volatile data such as running processes, network connections, and/or the entire contents of memory. This may not be an option if the compromised system begins to perform destructive tasks such as deleting files, exfiltrating sensitive data, formatting drives, or actively spreading to other hosts. In these cases, the system should be promptly disconnected, or otherwise effectively isolated. If there is no backup or restoral efforts are significant, immediate shutdown through severing power should be considered.

----------------------------------
----------------------------------
----------------------------------
----------------------------------
----------------------------------
----------------------------------
----------------------------------
----------------------------------
