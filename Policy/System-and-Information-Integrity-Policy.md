# Introduction
[ORGANIZATION] has chosen to adopt the principles established in NIST SP 800-53 as official policy. Information systems and employees are hereby bound to this policy and must develop and adhere to standard operating procedures that demonstrate compliance within it.

## Purpose
This plan establishes management of risks from system flaws/vulnerabilities, malicious code, unauthorized code changes, and inadequate error handling by implementing security best practices with regards to system configuration, security, and error handling.

*SI-01 (a)(01)(a)*

# Table of Contents
- [Introduction](#introduction)
  - [Purpose](#purpose)
- [Table of Contents](#table-of-contents)
  - [Scope](#scope)
  - [References](#references)
  - [Roles and Responsibilities](#roles-and-responsibilities)
    - [System Administrator(s)](#system-administrators)
    - [Manager](#manager)
    - [Information System Security Officer(s) (ISSO)](#information-system-security-officers-isso)
    - [Information System Security Manager (ISSM)](#information-system-security-manager-issm)
  - [Management Commitment](#management-commitment)
  - [Coordination](#coordination)
  - [Compliance](#compliance)
  - [Dissemination](#dissemination)
  - [Maintenance](#maintenance)
- [Policy](#policy)
  - [Trusted Software Sourcing](#trusted-software-sourcing)
  - [Hardware Lifecycle & Failure Prevention](#hardware-lifecycle--failure-prevention)
  - [Security Alerts, Advisories, and Directives](#security-alerts-advisories-and-directives)
  - [Information Handling](#information-handling)
    - [Information Diversity](#information-diversity)
    - [Information Input Validation & Errors](#information-input-validation--errors)
    - [Personally Identifiable Information (PII)](#personally-identifiable-information-pii)
    - [De-Identification](#de-identification)
    - [Information Lifecycle](#information-lifecycle)
  - [Non-Persistence](#non-persistence)
    - [Endpoint Systems](#endpoint-systems)
    - [Network Connections](#network-connections)
  - [Flaw Remediation](#flaw-remediation)
    - [Identification](#identification)
    - [Reporting](#reporting)
    - [Correction](#correction)
    - [Software and Firmware Update Testing](#software-and-firmware-update-testing)
    - [Update Deadlines](#update-deadlines)
    - [Flaw Remediation in Images and Configurations](#flaw-remediation-in-images-and-configurations)
  - [Malicious Code Protection](#malicious-code-protection)
    - [Configuration and Updating](#configuration-and-updating)
    - [Scanning Frequency](#scanning-frequency)
    - [Information Output Filtering](#information-output-filtering)
    - [Response to Malicious Code Detection](#response-to-malicious-code-detection)
    - [Testing and Verification](#testing-and-verification)
  - [System Monitoring](#system-monitoring)
    - [Deployment](#deployment)
      - [Event Familiarity](#event-familiarity)
      - [Host-Based Monitoring](#host-based-monitoring)
      - [Wireless](#wireless)
    - [Detections](#detections)
      - [Malicious Code](#malicious-code)
      - [Security and Privacy Function Verification](#security-and-privacy-function-verification)
      - [Unauthorized Network Services](#unauthorized-network-services)
      - [Unauthorized and Unusual Traffic](#unauthorized-and-unusual-traffic)
      - [Tainting](#tainting)
      - [Elevated Risk](#elevated-risk)
      - [Privileged Users & Accounts](#privileged-users--accounts)
      - [Users in Probation](#users-in-probation)
      - [High-Risk Individuals & Accounts](#high-risk-individuals--accounts)
      - [System-Generated Alerts](#system-generated-alerts)
      - [Automation](#automation)
  - [Integrity Monitoring](#integrity-monitoring)
    - [Protection of Integrity](#protection-of-integrity)
    - [Integrity Violation Detection](#integrity-violation-detection)
      - [Source Integrity Verification](#source-integrity-verification)
      - [Time-Based](#time-based)
    - [Integrity Violation Response](#integrity-violation-response)
  - [Testing](#testing)
  - [Information Handling and Retention](#information-handling-and-retention)
  - [Legal Opinion](#legal-opinion)
  - [Related Standard Operating Procedures (SOP)](#related-standard-operating-procedures-sop)


## Scope
The scope of this plan is applicable to all resources owned or operated by [ORGANIZATION] and all its employees. Any information not specifically identified as the property of other parties, that is transmitted or stored on [ORGANIZATION] resources (including email, messages, and files) is the property of [ORGANIZATION]. All users ([ORGANIZATION] employees, contractors, vendors, or others) of resources are responsible for adhering to this plan.

*SI-01 (a)(01)(a)*

## References
- NIST Special Publication 800-53 Rev. 5

## Roles and Responsibilities
The following roles and responsibilities are intended to provide a high-level overview of responsibilities detailed throughout the plan. Each role listed below is included in what is later referred to as “cybersecurity staff.”

### System Administrator(s)
- Assigns and records in the official Asset Inventory a responsible party for each hardware and software asset in the system (for example, network, firewall).
- Ensures the integrity for hardware assets, software assets, and information is protected according to this plan.
- Creates and manages office-specific standard operating procedure documentation providing steps that maintain compliance with this plan.
- Assists as needed with interpretation of logs to determine what actions occurred and whether those actions are authorized.
- Ensures the success of vulnerability scans and the delivery of scan results to appropriate parties.
- Ensures the timely application of security updates, the documentation of required exceptions, and details surrounding any applied mitigations.

### Manager
- Ensures daily operations follow this policy.
- Ensures that any contracts for vendor-hosted or -managed solutions adhere to  applicable internal and external regulations, policies, procedures, and standards.
- Subscribes to and receives system security alerts, advisories, and directives from Cybersecurity and Infrastructure Security Agency (CISA) and any offered services from product vendors used in the environment on an ongoing basis.

### Information System Security Officer(s) (ISSO)
- Provides coverage for the discovery, collection, and distribution to systems, indicators of compromise provided by governmental, publicly provided reputable sources, and any commercially provided sources.
- Performs scheduled information system security/vulnerability scans.
- Deploys and maintains monitoring devices strategically to collect essential information that allows continuous monitoring.
- Monitors communications traffic and event patterns are to be analyzed.
- Profiles representing common traffic and event patterns must be developed.
- Maintains traffic and event profiles in tuning system-monitoring devices, alarms, trends, etc. must use the analysis tools and information gained therein.
- Investigates and responds to detected events and anomalies appropriately.
- Monitors information system logs for security-related concerns, reports them to ISSM, and coordinates remediation/mitigation.
- Implements heightened information system monitoring activity whenever there is an indication of increased risk of concern.
- Subscribes to and receives system security alerts, advisories, and directives from CISA and any offered services from product vendors used in the system on an ongoing basis.

### Information System Security Manager (ISSM)
- Ensures policies and SOPs comply with applicable internal and external policies, regulations, requirements, etc.
- Coordinates high-level solutions to cybersecurity issues.
- Reviews vulnerability scanning results, justifications, and mitigations.
- Archives results of vulnerability scans.
- Subscribes to and receives system security alerts, advisories, and directives from CISA and any offered services from product vendors used in the system on an ongoing basis.

*SI-01 (a)(01)(a)*


## Management Commitment
[ORGANIZATION] is committed to following DOI policy, USBR policy, this plan and the procedures that support it.

*SI-01 (a)(01)(a)*


## Coordination
[ORGANIZATION] coordinates with other internal entities to address system and information integrity requirements specific to [ORGANIZATION] locations, devices, and technologies.

*SI-01 (a)(01)(a)*


## Compliance
Failure of employees to comply with the requirements identified in this plan may result in progressive discipline up to and including dismissal.

For contractors and other non-employee personnel, failure to comply may result in removal of the individual’s ability to access and use [ORGANIZATION] systems, data, and resources. Employers of non [ORGANIZATION] personnel will be notified of violations.

Personnel are also subject to penalties for violations of statutory compliance requirements. Depending on the requirement and the nature of the violation, penalties can include fines and criminal charges.

*SI-01 (a)(01)(a)*


## Dissemination
Each new version of this document will be provided by the updaters to all cybersecurity staff.
This document is also to be made available to any [ORGANIZATION] employee, contractor, or visitor upon request.

*SI-01 (b)*


## Maintenance
This document shall be reviewed and updated as necessary at least annually. Its content shall remain consistent with applicable laws, executive orders, directives, regulations, policies, standards, and guidelines. Procedures designed to meet compliance with this document shall be updated with these same frequencies and requirements.

*SI-01 (a)(1)(b), SI-01 (c)*


# Policy
The following standards apply to, and represent, the security controls established to meet an acceptable level of protection for, [ORGANIZATION] information systems. They serve as the base set of procedural requirements that are implemented to provide system and information integrity.

*SI-01 (a)(02)*

## Trusted Software Sourcing
All software obtained and data employed during system component and service refreshes must be acquired from the following trusted sources:
- The official public repository for a widely known and trusted open-source project.
- The original manufacturer/vendor for the software/hardware in question.
- A United States Government source.

*SI-14 (01)*

## Hardware Lifecycle & Failure Prevention
Mean Time To Failure (MTTF) must be determined and documented for all mission-critical components as operated in their respective operational environments. When possible, feasible, and not cost-prohibitive, substitute and/or replacement components should be preordered and stored within reach of appropriate to ensure continued operations and mission success in accordance with the Contingency Plan/Continuity of Operations/Disaster Recovery Plan/Business Impact Analysis.

Regardless of current operations, hardware/components that have been in service for [PERCENTAGE] of the MTTF must be replaced within [TIMELINE].

Upon the detection of component failures, automatic or manual transfer of components from standby to active mode must then occur in accordance with the Contingency Plan and other applicable plans/policies. This includes any needs for automatic transference, activation of alarms/efforts, and automated shutdown of systems.

Automatic failure prevention of data, hardware, and components will be governed by the Contingency Plan. This includes fail-safe conditions, like the loss of communications among critical system components or between system components and operational facilities.

*SI-13, SI-13 (1), SI-13 (3), SI-13 (4), SI-13 (5), SI-17*

## Security Alerts, Advisories, and Directives
The Cybersecurity and Infrastructure Security Agency (CISA) generates security alerts and advisories to maintain situational awareness throughout the Federal Government. Security directives are issued by OMB or other designated organizations with the responsibility and authority to issue such directives. Compliance with security directives is essential due to the critical nature of many of these directives and the potential (immediate) adverse effects on organizational operations and assets, individuals, other organizations, and the Nation should the directives not be implemented in a timely manner. External organizations include supply chain partners, external mission or business partners, external service providers, and other peer or supporting organizations.

Cybersecurity staff shall subscribe to, receive, and analyze system security alerts, advisories, and directives from CISA and any offered services from product vendors used in the system on an ongoing basis. Internal security alerts, advisories, and directives will be generated deemed necessary and disseminated to system managers and system administrators along with a required time frame for implementation. Such alerts will also be broadcast via email to any other parties that may be concerned or impacted by the content of alerts, advisories, and directives or by the actions necessitated thereafter.

*SI-05, SI-05 (1)*

## Information Handling

### Information Diversity
Collected or generated information directly tied to critical business/mission functions should have alternative sources to enable validating the completeness and accuracy of the data. Corruption, fabrication, modification, or deletion of that information could impact the ability of the service function to properly carry out its intended actions. Acceptable examples include analogue readouts, secondary collection points, and manual observation/recording. These other methods can be leveraged when the primary data source is unavailable according to the Contingency Plan. It is possible that the alternative sources of information may be less precise or less accurate than the primary source of information. But having such sub-optimal information sources may still provide a sufficient level of quality that the essential service or function can be carried out, even in a degraded or debilitated manner.

*SI-22 (a), SI-22 (b)*

### Information Input Validation & Errors
Information input validation is often controlled by a third-party vendor in code that is closed source. For systems and software where input can be controlled by the organization, the following policies apply. For those that are controlled outside the organization, efforts to clarify and enforce appropriate input sanitization must be made and documented by the vendor or supporting party.

All solutions offering data input must incorporate input sanitization with security in mind. These checks against syntax and semantics of system inputs must include character set, length, numerical range, and acceptable values, verifying that inputs match specified definitions for format and content. In addition, timing interactions must be accounted for to ensure proper and expected response of the system – including how the system responds between ordering/timing of request, lookup, and response.

Systems must be tested and be observed to behave in a predictable and documented manner when invalid inputs are received. This includes preventing “escaping” of input fields which leads to the system (or another system in the data flow) executing the provided input as code. Systemic issues resulting in improper input sanitization must be corrected appropriately, including the resubmission of authorized transactions that suffered “false positive” sanitization.

Systems offering inputs must restrict the capability to provide such inputs by means of properly secure authorization checks.

Manual overrides of input sanitization are often possible. Such overrides must be restricted to authorized administrators/managers with the goal of maintaining a small userbase with the privilege. Each instance of an override must be documented in a recorded & forwarded system log or manual “paper log.” Override logs must be recorded, forwarded, stored, and monitored along with other continuous monitoring efforts.

When events related to input sanitization, overrides, or other critical types occur in software, errors must be presented and recorded. However, only essential information may be displayed to the end user, while additional details should be recorded only in system or debug logs. Sensitive information that would reveal sensitive user or system information must be protected by withholding such details from everyday users, and instead reserve it for software administrators.

*SI-10, SI-10 (1), SI-10 (2), SI-10 (3), SI-10 (4), SI-10 (5), SI-10 (6), SI-11*

### Personally Identifiable Information (PII)
The collection of all PII must be sourced from the individual or a legal document they present. Similarly, all requests by the individual must be processed to apply corrections to PII (for example, a legal name change or misspelling). A request to remove PII may only be processed by also removing the associated account entirely, and thus the individual’s access to the system.

Any requests to process a correction or deletion of PII must be directed toward the System Manager, who would then assign the task as appropriate.

When existing users no longer require access, their personal accounts must be disabled. Holding the individual’s full name in the system until its next refresh is an insignificant risk, and de-identification requirements do not apply to this information.

When information systems are retired, hard drives will be physically destroyed such that data is no longer readable via complete incineration or shredding.

*SI-18, SI-18 (1), SI-18 (2), SI-18 (3), SI-18 (4), SI-18 (5), SI-19, SI-19 (1), SI-19 (2), SI-19 (3)*

### De-Identification
In situations where sensitive datasets must be shared with a vendor or other third party for support purposes, the data may be required to first undergo de-identification. If the information could lead to destruction of property, bodily harm, or significant risk to essential missions, it is considered sensitive enough for de-identification.

IP addresses, hostnames, and usernames must be removed, masked, encrypted, hashed, or replaced in datasets considered sensitive prior to delivery. Statistical data considered sensitive by the same standard must be manipulated such that the accuracy is no longer reliable.

*SI-19 (4), SI-19 (5)*

### Information Lifecycle
Information no longer needed to fulfill operational requirements and/or to comply with applicable laws, regulations, compliance frameworks, etc. shall be refreshed, generated, and/or deleted as applicable.

Information that is generated and kept on hand (e.g., report output) must be refreshed annually to prevent accidental or malicious dataset manipulation from impacting decisions or operations.

*SI-14 (02), SI-21*

## Non-Persistence
Limiting the operating lifespan of endpoints by reimaging or otherwise refreshing the operating system/configuration helps maintain a trusted, known state computing resource for a specific time period that does not give adversaries sufficient time to exploit vulnerabilities in organizational systems or operating environments. In addition, such refreshing reduces the targeting capabilities of adversaries and the longevity of any successful compromise.

### Endpoint Systems
Information systems that are designed to remain static throughout their lifecycle, acting only as a frontend, not storing any pertinent data, shall be reimaged once per [TIMEFRAME] to ensure the aforementioned protections and safeguards. For example, a Windows-based Kiosk expecting to receive no deviations from the original baseline image should be reimaged annually.

*SI-14*

### Network Connections
Persistent connections to systems can provide advanced adversaries with paths to move laterally through systems and potentially position themselves closer to high value assets. Limiting the availability of such connections impedes the adversary’s ability to move freely through organizational systems.

Established connections that have not been used for the purpose of monitoring, control, data collection, or other immediate operational requirements during the last [TIMEFRAME] shall be disconnected automatically (or manually if there is no automatic feature available). This includes, but is not limited to, VPN connections and transient devices.

*SI-14 (03)*

## Flaw Remediation
Security-relevant software updates include, for example, patches, service packs, hot fixes, and anti-virus signatures. By incorporating flaw remediation into ongoing configuration management processes, required/anticipated remediation actions can be tracked and verified. Flaw remediation actions that can be tracked and verified include, for example, determining whether US-CERT guidance and Information Assurance Vulnerability Alerts are followed. Some types of flaw remediation may require more testing than other types. In some situations, the testing of software and/or firmware updates may not be necessary or practical, for example, when implementing simple anti-virus signature updates.

### Identification
To maintain awareness of information system flaws that affect hardware and software in the environment, cybersecurity staff must monitor appropriate distribution lists, websites, and other cybersecurity sources.

A vulnerability scanning solution shall be used to identify information systems affected by announced software flaws including potential vulnerabilities resulting from those flaws. Security-relevant software updates include, for example, patches, service packs, hot fixes, anti-virus signatures and engines.

Cybersecurity staff shall employ the following mechanisms, in accordance with the above:
- Subscribe to Multi-State Information Sharing and Analysis Center (MS-ISAC) alerts and MITRE Common Vulnerabilities and Exposures (CVE) updates and notifications.
- Perform full vulnerability scans all information systems with an IP Address at defined intervals defined in the Continuous Monitoring Policy. Such scans must use signatures/databases not more than 24h old as of the scan date.
- Distribute alerts, updates, notifications, and scan results to system administrator(s) for correction.
- Review published security reports related to information systems within areas of responsibility.

*SI-02 (2)*

### Reporting
All scan results used to meet any policy/plan/continuous monitoring/compliance requirement shall be provided to cybersecurity staff, asset owners, and system administrator(s).

These scan results shall be used to track time to remediate flaws and establish benchmarks for corrective actions.

*SI-02 (a)*

### Correction
[ORGANIZATION] staff shall provide support and ensure information owners, asset owners, or other appointed employees address flaws discovered during security assessments, continuous monitoring, incident response, activities, and system error handling.

[ORGANIZATION] staff shall also take advantage of available resources such as the Common Weakness Enumeration (CWE) or Common Vulnerabilities and Exposures (CVE) databases in remediating flaws discovered in organizational information systems.
All changes must follow the Change Management Policy.

When possible and applicable, older versions of newly installed software and/or firmware must be removed.

Automated tools for the deployment of software, firmware, and patches shall be the primary means of facilitating flaw remediation to information systems. However, due to the nature of systems being disconnected from the Internet, tools will always require manual upkeep for such dependencies as checking for and transferring new content to the offline network. Manual upkeep of such content shall be performed in accordance with the Continuous Monitoring Policy.

Approved automation tools include:
- Microsoft Endpoint Management
- WSUS Offline Tool

*SI-02 (a), SI-02 (d), SI-02(04), SI-02(06)*

### Software and Firmware Update Testing
All software and firmware updates related to flaw remediation shall be tested for effectiveness and potential side effects before installation.

Support and maintenance contracts shall be used to engage vendors in correcting identified flaws in off-the-shelf software or firmware.

*SI-02 (b)*

### Update Deadlines
Cybersecurity staff will ensure security-relevant software updates, firmware updates, signature files, engine files, etc. with a recorded impact to security are be reviewed and installed every [TIMEFRAME], ensuring a limited maximum period of exposure.

*SI-02 (c)*

### Flaw Remediation in Images and Configurations
Flaw remediation shall be incorporated into configuration management policy and processes.

*SI-02 (d)*

## Malicious Code Protection
Malicious code protection mechanisms shall be deployed to all supported computers on the network to detect and eradicate malicious code at entry and exit points.

*SI-03 (a)*

### Configuration and Updating
Signature and engine updates shall be applied in accordance with the Configuration Management Policy. Malicious code protection software typically must be configured to update automatically. Manual upkeep of such content shall be performed in accordance with the Continuous Monitoring Policy.

Only users with authorized privileged accounts may update malicious code protection mechanisms, including configurations and content updates.

Memory protection features must be configured to protect the system memory from unauthorized code execution.

*SI-03 (b), SI-03 (04), SI-16*

### Scanning Frequency
Malicious code protection mechanisms shall be configured to automatically perform full scans of information systems during startup and in accordance with the Continuous Monitoring Policy. Files from external sources at endpoint and/or network entry/exit points must be scanned in real-time as the files are downloaded, opened, executed, and immediately upon device insertion.

*SI-03 (c)(01)*

### Information Output Filtering
Certain types of attacks, including SQL injections, produce output results that are unexpected or inconsistent with the output results that would be expected from software programs or applications. Information output filtering focuses on detecting extraneous content, preventing such extraneous content from being displayed, and then alerting monitoring tools that anomalous behavior has been discovered. Information output from security software and/or applications shall be validated to ensure that the information is consistent with the expected content. This responsibility must be assured by vendors of software used within the system, a third-party support, or internally, depending on contractual arrangements and by whom source code is developed and maintained.

*SI-15*

### Response to Malicious Code Detection
In response to malicious code detection, malicious protection mechanisms must block, quarantine, and alert cybersecurity staff to threats including the level of severity identified by the mechanism. Threats rated at “High Risk” (or equivalent) and heuristics-based detections shall be blocked and quarantined.

Cybersecurity staff shall investigate false positives to determine if tuning is necessary/possible and apply those changes. Resulting potential impact of false positives shall be considered on a case-by-case basis. For example, what is the impact on security if specific detections are disabled? What is the impact on availability and system resources if specific detections are NOT tuned?

*SI-03 (c)(02), SI-03 (d)*

### Testing and Verification
Malicious code protection mechanisms shall be tested during each Continuous Monitoring cycle by introducing known benign code into the system designed to trigger a detection (e.g., the “EICAR” test file). In addition, the protection software must be verified to create an alert/log as expected.

*SI-03 (06)*

## System Monitoring
Monitoring objectives include identification of unauthorized use and inappropriate or unusual activity that could indicate a compromise of confidentiality, integrity, or availability of system components or users. These objectives must be met via automated tools and mechanisms that employ near real-time analysis of events. Automated tools and mechanisms include host-based, network-based, transport-based, or storage-based event monitoring tools and mechanisms or security information and event management (SIEM) technologies that provide real-time analysis of alerts and notifications generated by organizational systems.

In addition to automation feature sets, tools and processes must be developed that allow employees to quickly familiarize and investigate alarms or concerns sourced elsewhere. Tools may include specially developed and tailored dashboards (aggregation, trend analysis, newly observed events, etc.); open source and commercial tools like widely accepted or internally developed scripts, Microsoft Excel, PowerBI, and toolsets designed specifically around cybersecurity intrusion analysis and review.
To provide optimal effectiveness of monitoring devices, visibility into network traffic at external and key internal system interfaces must be provided. This is typically referred to as decryption or “break and inspect.”

All observed events or alarms of concern that are being investigated must be shared with the ISSO and ISSM within 24 hours of observation.

*SI-04 (a)(01), SI-04 (a)(02), SI-04 (g), SI-04 (25)*

### Deployment
Cybersecurity staff shall deploy and maintain monitoring devices strategically to collect essential information that allows continuous monitoring. Data will be generated by supporting systems to record essential information required to rebuild a timeline of events. Data shall be forwarded/collected centrally and normalized to allow for analysis and automated monitoring techniques. This may require a physically distributed collection strategy and/or multiple systems to allow complete and proper event collection. However, all individual intrusion detection tools must be connected/collected into a system-wide intrusion detection system (e.g., a Security Information and Event Management (SIEM) solution).

*SI-04 (c), SI-04 (c)(01), SI-04 (c)(02), SI-04 (1), SI-04 (2)*

#### Event Familiarity
Identifying and understanding common communications traffic and event patterns helps provide useful information that leads to effective identification of suspicious or anomalous traffic and events when they occur. This also reduces total false positives and false negatives during system monitoring.

An event source is defined as a feed of separate events that share 90% or more of their structure (fields and content types). For each event source, the following must be performed and reviewed regularly by cybersecurity staff to maintain familiarity with each such source. In a SIEM, this can be done by developing dashboards purposefully designed to meet these objectives.

- Communications traffic and event patterns are to be analyzed.
- Profiles representing common traffic and event patterns must be developed.
- Traffic and event profiles in tuning system-monitoring devices, alarms, trends, etc. must use the analysis tools and information gained therein.

*SI-04 (13)*

#### Host-Based Monitoring
Host-based monitoring collects information about the host (or system in which it resides). [ORGANIZATION] components in which host-based monitoring can be implemented include servers, notebook computers, and mobile devices. A Monitoring, Detection, and Response (MDR) tool (or similar) with the capability to respond/block detected malicious code and isolate endpoints must be deployed on all endpoints that support such a product without significantly impeding business mission.

*SI-4 (23)*

#### Wireless
In areas with wireless access points wireless signals may radiate beyond facilities’ areas of operation. As such, proactively searching for unauthorized wireless connections, including the conduct of thorough scans for unauthorized wireless access points, is required. Wireless scans are not limited to those areas within facilities containing systems but also include areas outside of facilities to verify that unauthorized wireless access points are not connected to organizational systems.
A wireless intrusion detection system must be deployed to identify rogue wireless devices and to detect attack attempts and potential compromises or breaches to the system.

An intrusion detection system must also be employed to monitor wireless communications traffic as the traffic passes from wireless to wired networks. Wireless networks are inherently less secure than wired networks. For example, wireless networks are more susceptible to eavesdroppers or traffic analysis than wireline networks. When wireless to wired communications exist, the wireless network could become a port of entry into the wired network. Given the greater facility of unauthorized network access via wireless access points compared to unauthorized wired network access from within the physical boundaries of the system, additional monitoring of transitioning traffic between wireless and wired networks may be necessary to detect malicious activities. Employing intrusion detection systems to monitor wireless communications traffic helps to ensure that the traffic does not contain malicious code prior to transitioning to the wireline network.

*SI-04 (14), SI-04 (15)*

### Detections
The following techniques and methods describe how unauthorized use, attacks, and potential attacks in the system shall be monitored. Additional techniques and methods must be applied as necessary. Detected events and anomalies must be investigated and responded to appropriately by cybersecurity staff, including prevention of command execution where possible, system isolation, tuning of detections to improve fidelity, and more.

Cybersecurity staff will provide coverage for the discovery, collection, and distribution to systems, indicators of compromise provided by governmental, publicly provided reputable sources, and any commercially provided sources. Indicators of compromise (IOC) are forensic artifacts from intrusions that are identified on organizational systems at the host or network level. IOCs provide valuable information on systems that have been compromised. Rapid distribution and adoption of IOCs improves information security by reducing the time that systems and organizations are vulnerable to the same exploit or attack. Threat indicators, signatures, tactics, techniques, procedures, and other indicators of compromise may be available via government and non-government cooperatives, including the Forum of Incident Response and Security Teams, the United States Computer Emergency Readiness Team, the Defense Industrial Base Cybersecurity Information Sharing Program, and the CERT Coordination Center. Deployment directly into a SIEM product is the primary means of distribution.
In addition to having events located centrally, information from monitoring tools must be correlated and mechanisms employed throughout the system. Correlating information from different system monitoring tools and mechanisms can provide a more comprehensive view of system activity and may reveal otherwise unseen attack patterns. This is best developed in multiple forms including dashboards, trend analysis, and alarms.
Information from monitoring physical, cyber, and supply chain activities to achieve integrated, organization-wide situational awareness must also be correlated and leveraged. This integrated situational awareness is intended to correlate monitoring beyond the cyber domain. Correlation of monitoring information from multiple activities may help reveal attacks on organizations that are operating across multiple attack vectors.

Alerts, signatures, etc. are to be brought to the attention of cybersecurity staff by means of a dashboard, email system, or similar delivery technique.

*SI-03 (8), SI-04 (b), SI-04 (d), SI-04 (12), SI-04 (16), SI-04 (17), SI-04 (24)*

#### Malicious Code
Detection of unauthorized commands shall be applied to critical interfaces other than kernel-based interfaces, including interfaces with virtual machines and privileged applications. Unauthorized operating system commands include commands for kernel functions from system processes that are not trusted to initiate such commands as well as commands for kernel functions that are suspicious even though commands of that type are reasonable for processes to initiate.

*SI-03 (8)*

#### Security and Privacy Function Verification
The manual verification, detection, and reporting of security and privacy functions is often a first line of defense and earliest possible detection method of an adversary that has breached existing security controls and monitoring. Each security- and privacy-related function performed shall be verified by observing the resulting output. Observed output should align with the account privileges and within expectations of performing the function. Any failed or suspicious output of security and privacy functions must be immediately reported to cybersecurity staff for investigation. Systems found to be displaying suspicious output or are otherwise suspicious of compromise should be left POWERED ON but disconnected from the network when it will not severely impact human safety and critical business functions. Such a state allows proper forensic evidence, including volatile data like memory.
The use of automated mechanisms to support the management of distributed function testing helps to ensure the integrity, timeliness, completeness, and efficacy of such testing. Where possible, automation shall be used to conduct annual testing on the most critical security and privacy functions impacting critical business operations. Results for such tests must be reported to cybersecurity staff. The Incident Response Policy should be consulted for additional details.

*SI-06, SI-06 (2)*

#### Unauthorized Network Services
Unauthorized or unapproved network services include services in service-oriented architectures that lack prior verification, validation, and approval, and may therefore be unreliable or serve as malicious rogues for valid services. Network services that have not been authorized or approved appropriately must be detected and an alert trigger when detected.

*SI-4 (22)*

#### Unauthorized and Unusual Traffic
Unusual or unauthorized activities or conditions related to system inbound and outbound communications traffic includes internal traffic that indicates the presence of malicious code or unauthorized use of legitimate code or credentials within organizational systems or propagating among system components, signaling to external systems, and the unauthorized exporting of information. Evidence of malicious code or unauthorized use of legitimate code or credentials is used to identify potentially compromised systems or system components.

Outbound communications traffic at external interfaces to the system must be analyzed manually and/or automatically with resulting alarms. In addition, major subnetwork division points must be similarly monitored for malicious “egress” traffic.
Detections specifically designed to highlight unusual or unauthorized activities or conditions for inbound and outbound communications traffic is required. Monitoring of inbound and outbound communications traffic must include daily checks for unusual or unauthorized activities via dashboards and signatures.

*SI-04 (4), SI-04 (18)*

#### Tainting
The following data or capabilities will be deployed as applicable to systems or system components to assist in determining if organizational data has been exfiltrated or improperly removed from the organization.

Ensure all official and sensitive files contain the text [TEXT].

The following data or capabilities will be deployed as applicable to systems or system components to assist in determining if organizational data has been exfiltrated or improperly removed from the organization.

[DATA OR CAPABILITIES]

*SI-20*

#### Elevated Risk
Cybersecurity staff shall implement heightened information system monitoring activity whenever there is an indication of increased risk to organizational operations and assets, individuals, other organizations, or the Nation based on law enforcement information, intelligence information, or other credible sources of information. In such cases, the level of system monitoring activity shall be adjusted temporarily based on the threat intelligence received and how it impacts the system as follows

[ADJUSTMENTS]

*SI-04 (e)*

#### Privileged Users & Accounts
Privileged users and accounts are defined as those having access to more sensitive information, including security-related information, than the general user population. Access to such information means that privileged users can potentially do greater damage to systems and organizations than non-privileged users. Therefore, additional monitoring on privileged users is required to ensure that malicious activity is identified at the earliest possible and appropriate actions may be taken.

*SI-04 (20)*

#### Users in Probation
Monitoring systems must provide elevated monitoring of accounts accessible to users who are currently in a probationary period. During probationary periods, additional monitoring can help identify any potentially malicious activity or inappropriate behavior.

Probationary periods include, but are not limited to, users who are restricted or prohibited from accessing the system. Examples include, but are not limited to
- an employee who put in their two-weeks’ notice
- an employee involved in an investigation
- an employee who will be or has recently been forcibly separated
- a user associated with a contract that has recently ended
- a service account or otherwise shared account that a privileged user had credentials to where any of the above (or similar) situations occurred

*SI-04 (21)*

#### High-Risk Individuals & Accounts
Monitoring systems must provide a means to allow increased monitoring of individuals and/or accounts deemed to present a higher risk.

Indications of increased risk from individuals and accounts can be obtained from different sources, including personnel records, intelligence agencies, law enforcement organizations, and other sources. The monitoring of individuals must be coordinated with the management, legal, security, privacy, and human resource officials who conduct such monitoring. All monitoring of these individuals/accounts conducted in accordance with applicable laws, executive orders, directives, regulations, policies, standards, and guidelines.

*SI-04 (19)*

###	Response
#### System-Generated Alerts
Alerts generated from detections designed to detect malicious or suspicious activity must notify cybersecurity staff. Alerts may be transmitted telephonically, by electronic mail messages, or by text messaging, or an interface checked daily. Alerts should remain in the system until human response occurs (e.g., the alert must be manually dismissed).

*SI-04 (5), SI-04 (7)*

#### Automation
When possible, systems involved in monitoring and detection must also be integrated with access and flow control mechanisms to allow rapid response in support of attack isolation and elimination. Complete automation is not necessary, as there are often cases where human intervention in the flow is required due to the sensitivity of the system. However, automation tools are to be used to speed up response and improve accessibility.

*SI-04 (3)*

## Integrity Monitoring
One or more centrally managed integrity verification tools to detect unauthorized changes to software and firmware must be deployed. When integrity issues are detected, either by manual review or automated processes, cybersecurity staff must be immediately informed and an investigation must begin.

*SI-07, SI-07 (3)*

### Protection of Integrity
Runtime application self-protection instrumentation must be deployed to detect and block the exploitation of software vulnerabilities by taking advantage of information from the software in execution. Runtime application self-protection technology can reduce the susceptibility of software to attacks by monitoring its inputs and blocking those inputs that could allow attacks. It can also help protect the runtime environment from unwanted changes and tampering. When a threat is detected, runtime application self-protection technology can prevent exploitation and take other actions (e.g., sending a warning message to the user, terminating the user's session, terminating the application, or sending an alert to organizational personnel). Runtime application self-protection solutions can be deployed in either a monitor or protection mode.

Firmware/BIOS/startup code must have its integrity validated on supporting devices to provide a level of assurance that only trusted code is executed during the bootup process.

*SI-7 (17), SI-7 (9)*

### Integrity Violation Detection
Automated tools must be used to report system and information integrity violations and to notify cybersecurity staff in a timely matter and effectively lead to a response commensurate to the risk. This may be accomplished by the integrity violation toolset or by generating events which are collected centrally for additional monitoring, alerting, and investigation. 

Integrating detection and response helps to ensure that detected events are tracked, monitored, corrected, and available for historical purposes. Maintaining historical records is important for being able to identify and discern adversary actions over an extended time period and for possible legal actions. Security-relevant changes include unauthorized changes to established configuration settings or the unauthorized elevation of system privileges.

All Integrity Violation detections must be investigated by cybersecurity staff as potential incidents and acted upon accordingly. Events and alerts must contain including all possible fields available in the original event and additional information regarding the timeline of the event delivery process.

*SI-07 (2), SI-07 (7), SI-07 (8)*

#### Source Integrity Verification
Integrity checks must be performed on installation software prior to execution/use by means of a hash, checksum, digital signature, code-signing certificate (preferred), or other software integrity check that adequately verifies the source and/or source code has maintained its integrity. Code signing is the preferred method as it is also effective method to protect against malicious code.

Boot firmware must have its integrity verified before being applied and at each startup by means of hash, digital signing, or other solution specific to boot firmware that adequately verifies integrity.

Unauthorized modifications to boot firmware may indicate a sophisticated, targeted attack. These types of targeted attacks can result in a permanent denial of service or a persistent malicious code presence. These situations can occur if the firmware is corrupted or if the malicious code is embedded within the firmware. System components can protect the integrity of boot firmware by verifying the integrity and authenticity of all updates to the firmware prior to applying changes to the system component and preventing unauthorized processes from modifying the boot firmware.

*SI-07 (1), SI-07 (6), SI-07 (10), SI-07 (12), SI-07 (15)*

#### Time-Based
Processes for which typical or normal execution periods can be determined and situations in which operations should not occur outside specific time periods shall be prohibited if possible and alerts created to notify when such anomalies occur.

*SI-7 (16)*

### Integrity Violation Response
Information systems with an integrity violation detected must both generate an event logging the occurrence and either shut down, restart, halt, reverse changes, or apply another acceptable protection/prevention mechanism on the affected systems.

*SI-07 (5)*

## Testing
Cybersecurity staff must test intrusion-monitoring tools and mechanisms, as this is necessary to ensure that the tools and mechanisms are operating correctly and continue to satisfy monitoring objectives. Signatures that can be tested with a reasonable amount of time and effort shall be tested for accuracy at least annually. Acceptable methods of testing include, but are not limited to:
- Reducing signature thresholds to ensure the signature fires at the normal level.
- Invoking commands that intentionally cause a signature to fire but cause no actual change/harm to the system.
- Injecting false or historical events into the system to simulate the events the signature is designed to highlight.

*SI-04 (9)*

## Information Handling and Retention
Information system output shall be handled and retained in accordance with applicable State and Federal laws, directives, policies, regulations, standards, and organizational operational requirements.

Any results or data produced during information system monitoring shall be protected from unauthorized disclosure and/or modification. Related data may only be stored in a location that has restricted access to only personnel with need-to-know. This includes data at rest and in transit, regardless of location or medium it is stored on. Personally identifiable information must be kept to an absolute minimum on information systems to ensure individual authentication, authorization, and accountability. Records of training, etc. may NOT be kept on this system.

Data critical to the recovery or continuation of operations shall be stored for [TIMEFRAME], based on the creation date, to allow room for error in the backup process that may require using a slightly older data source.

*SI-12, SI-12 (01), SI-12 (02), SI-12 (03)*

## Legal Opinion
When the need arises to obtain legal opinion regarding information system monitoring activities in accordance with applicable federal laws, Executive Orders, directives, policies, or regulations, cybersecurity staff will inform the [STAFF/OFFICES/TEAMS], who will continue escalation.

*SI-04 (f)*

## Related Standard Operating Procedures (SOP)
- Vulnerability Scanning SOP
- Patch Deployment SOP
- Malicious Code Protection SOP
- Configuration Management SOP
- Continuous Monitoring SOP