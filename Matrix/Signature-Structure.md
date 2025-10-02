- [Executive Summary](#executive-summary)
  - [Name](#name)
  - [Compliance](#compliance)
  - [MITRE ATT\&CK Framework](#mitre-attck-framework)
  - [Assumptions and Limitations](#assumptions-and-limitations)
- [Analysis](#analysis)
  - [Monitoring and Notifications](#monitoring-and-notifications)
  - [Recommended Playbook(s)](#recommended-playbooks)
- [Engineering](#engineering)
  - [Component Names](#component-names)
  - [Validation](#validation)
  - [References and Resources](#references-and-resources)


# Executive Summary

Primarily focused on providing high-level information, references, and background.


## Name

A succinct statement that describes the detection (e.g. Detect Communication with a Known-Bad IP). 


## Compliance

List applicable compliance frameworks and specific components this Detection relates to.


## MITRE ATT&CK Framework

List applicable MITRE ATT&CK Framework Tactics/Techniques this Detection relates to.

## Assumptions and Limitations

Describes any assumptions/limitations regarding law, licensing, policies, or technicalities.


# Analysis

Insight on the actions of and tools for those who are expected to monitor and respond.


## Monitoring and Notifications

Describes how the detection will bring attention to itself. This typically involves monitors, dashboards, reports, emails, alerts, etc.


## Recommended Playbook(s)

Describes which one or more playbooks should be followed in handling the detection.


# Engineering

The necessary steps and content construction that fulfills the Detection. If the Detection and all its components were lost, this section should allow complete reconstruction.


## Component Names

The base components that provide business logic, display, and notification.
- Include the expected source log makeup and example.
- Use a word like "Suspicious" to indicate that the fidelity is lower, therefore some false positives may result.
- Group alerts/queries into a single Playbooks when they share common objectives/recommended response actions.


### Alert [Name]

- Filter
- Grouping
- Severity
- Threshold
  - Event Count
  - Time Window
- Category/Normalization
- Tags
- Fidelity (high means no false positives)


### Query [Name]

- Query String
- Fidelity (high means no false positives)
- Query Explanation


## Validation

Methods to ensure the Detection was developed and is operating properly. These can be pass/fail, time based, or other relevant measurements. When possible, include an automated script or manual steps to cause the alert to fire on demand (i.e. attack simulation).


### Attack Simulation

Specific actions to reproduce events that are expected to be detected/highlighted by Playbooks components.


## References and Resources
Any useful resources or references that can help understand the vulnerability, attack, detection logic, affected software, protocols, etc.
