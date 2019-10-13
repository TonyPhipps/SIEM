A "use case" describes and documents a goal and how it's objectives are accomplished by people, tools, and processes.

- [Executive Summary](#executive-summary)
  - [Name](#name)
  - [Problem Statement](#problem-statement)
  - [Objectives](#objectives)
  - [Compliance](#compliance)
  - [Mitre ATT&CK Framework](#mitre-attck-framework)
  - [Assumptions and Limitations](#assumptions-and-limitations)
- [Analysis](#analysis)
  - [Monitoring and Notifications](#monitoring-and-notifications)
  - [Recommended Response Action(s)](#recommended-response-actions)
- [Engineering](#engineering)
  - [Component Names](#component-names)
  - [Data Stream Analysis](#data-stream-analysis)
  - [Assurance Metrics](#assurance-metrics)
- [Use Case Sample Names](#use-case-sample-names)

# Executive Summary
Primarily focused on providing high-level information, references, and background

## Name
A succint statement that broadly describes the use case

## Problem Statement
Describes the problem, beginning with any necessary background information.

## Objectives
Defines the goals of the use case. Includes measurable time frames.

## Compliance
List applicable compliance items this use case aims to partially or fully meet.

## Mitre ATT&CK Framework
Describes which of the Mitre ATT&CK Framework Tactics/Techniques the objectives should allow detection of.

## Assumptions and Limitations
Describes any assumptions/limitations regarding law, licensing, policies, or techincalities.

# Analysis
Primarily focused on the actions of and tools for those who are expected to monitor and respond.

## Monitoring and Notifications
Describes how analysts will monitor or be notified of activity. This typically involves monitors, dashboards, reports, emails, alerts, etc. Include alternative/backup methods when applicable.

## Recommended Response Action(s)
Describes which actions should be taken with the information provided - typically alerts or simply observing something anomalous. 

# Engineering
Primarily focused on necessary steps and content construction that fulfills the use case.

## Component Names
The base components that provide business logic, display, and notification. Includes expected event log construction and field contents included. Incldudes server names, user names, document names, scripts, queries, etc.

## Data Stream Analysis
Pseudocode-like logic flow of how events are processed by the SIEM and presented or alerted upon. When possible, include a visual representation of some sort.

## Assurance Metrics
Methods to ensure the use case was developed and is operating properly. These can be pass/fail, time based, or other relevant measurements. When possible, include an automated script or manual steps to cause the alert to fire on demand (i.e. attack simulation)

# Use Case Sample Names
Note: The names below are intended to encourage a line of thought and are therefore intentionally imprecise and an incomplete list.

- Detect X[Activity] with Y[Product] via Z Events [1 per unique XYZ combination]
- Develop New Use Case
- Upgrade X Software [1 per X]
- Update X Configuration [1 per X]
- Respond to X Alert [1 per X]
- Respond to Reported HIPAA Breach
- Respond to Reported GDPR Violation
- Respond to Reported Phishing Attempt
- Provide Activity Report
- Hunt for X Activity [1 per X]
- Deploy X Software [1 per X]
- Deploy X Hardware [1 per X]

- Review a Knoweledge Base Article
- Review a Policy
- Review a Signature
- Review a Use Case
- Review an Automation Script
- Submit a Knoweledge Base Article
- Submit a Policy
- Submit a Signature
- Submit a Use Case
- Submit an Automation Script
- Update a Knowledge Base Article
- Update a Policy
- Update a Signature
- Update a Use Case
- Update an Automation Script
- Provide Internal Training Meeting
- Provide Internal On-the-Job Training