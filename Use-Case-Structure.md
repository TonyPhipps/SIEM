A "use case" describes and documents a goal and how it's objectives are accomplished by people, tools, and processes.

- [Executive Summary](#executive-summary)
  - [Name](#name)
  - [Problem Statement](#problem-statement)
  - [Objectives](#objectives)
  - [Compliance](#compliance)
  - [MITRE ATT&CK Framework](#mitre-attck-framework)
  - [Assumptions and Limitations](#assumptions-and-limitations)
- [Analysis](#analysis)
  - [Monitoring and Notifications](#monitoring-and-notifications)
  - [Recommended Response Action(s)](#recommended-response-actions)
- [Engineering](#engineering)
  - [Component Names](#component-names)
  - [Data Stream Analysis](#data-stream-analysis)
  - [Validation](#validation)
  - [References and Resources](#references-and-resources)

# Executive Summary

Primarily focused on providing high-level information, references, and background.


## Name

A succinct statement that describes intention of the use case (e.g. Detect Communication with a Known-Bad IP). Group multiple detection components into a single use case when they share other characteristics in Executive Summary and Analysis sections.


## Problem Statement

Describes the problem, beginning with any necessary background information.


## Objectives

Defines the goals of the use case. Includes measurable time frames.


## Compliance

List applicable compliance items this use case aims to partially or fully meet.


## MITRE ATT&CK Framework

Describes which of the Mitre ATT&CK Framework Tactics/Techniques the objectives should allow detection of.

## Assumptions and Limitations

Describes any assumptions/limitations regarding law, licensing, policies, or technicalities.


# Analysis

Insight on the actions of and tools for those who are expected to monitor and respond.


## Monitoring and Notifications

Describes how analysts will monitor or be notified of activity. This typically involves monitors, dashboards, reports, emails, alerts, etc. Include alternative/backup methods when applicable.


## Recommended Response Action(s)

Describes which actions should be taken with the information provided - typically alerts or simply observing something anomalous. 


# Engineering

The necessary steps and content construction that fulfills the use case.


## Component Names

The base components that provide business logic, display, and notification. Includes expected event log construction and field contents included. Includes server names, user names, document names, scripts, queries, etc.

### Alert Name
- Filter
- Grouping
- Severity
- Threshold
  - Event Count
  - Time Window
- Category/Normalization
- Tags


## Data Stream Analysis

Pseudocode-like logic flow of how events are processed by the SIEM and presented or alerted upon. When possible, include a visual representation of some sort.


## Validation

Methods to ensure the use case was developed and is operating properly. These can be pass/fail, time based, or other relevant measurements. When possible, include an automated script or manual steps to cause the alert to fire on demand (i.e. attack simulation)

### Attack Simlulation

Specific actions to reproduce events that are expected to be detected/highlighted by use case components.


## References and Resources
Any useful resources or references that can help understand the vulnerability, attack, detection, affected software, protocols, etc.
