Use Case Template

- [Name](#name)
  - [Problem Statement](#problem-statement)
  - [Assurance Metrics](#assurance-metrics)
  - [Objectives](#objectives)
  - [Mitre ATT&CK Framework](#mitre-attck-framework)
  - [Assumptions and Limitations](#assumptions-and-limitations)
- [Monitoring and Notifications](#monitoring-and-notifications)
  - [Recommended Response Action(s)](#recommended-response-actions)
- [Data Source Description](#data-source-description)
  - [Component Name(s)](#component-names)
  - [Data Stream Analysis](#data-stream-analysis)

# Name
One line giving the name of the use case. The name should capture action that resolves the problem statement.

## Problem Statement
Describes the problem, beginning with any necessary background information.

## Assurance Metrics
Methods to ensure the use case was developed and is operating properly. These can be pass/fail, time based, or other relevant measurements.

## Objectives
Defines the goals of the use case.

## Mitre ATT&CK Framework
Describes which of the Mitre ATT&CK Framework Tactics/Techniques the objectives should allow detection of.

## Assumptions and Limitations
Describes any assumptions/limitations regarding law, licensing, policies, or techincalities. 

# Monitoring and Notifications
Describes how analysts will monitor or be notified of activity. This typically involves monitors, dashboards, reports, emails, etc.

## Recommended Response Action(s)
Describes which actions should be taken with the information provided - typically alerts or simply observing something anomalous. 

# Data Source Description
Describes where events should be sourced from, and the flow of delivery to the SIEM for processing.

## Component Name(s)
The base components that provide business logic, display, and notification.

## Data Stream Analysis
Pseudocode-like logic flow of how events are processed by the SIEM and presented or alerted upon.
