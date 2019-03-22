A Use Cases is a set of SIEM components and procedures that seek to resolve a given problem.

A Use Case can be documented for presention to management, to guide a SOC/Incident Response Team, or for general SIEM content documentation. 

- [Name](#name)
  - [Problem Statement](#problem-statement)
  - [Objectives](#objectives)
  - [Mitre ATT&CK Framework](#mitre-attck-framework)
  - [Assumptions and Limitations](#assumptions-and-limitations)
- [Monitoring and Notifications](#monitoring-and-notifications)
  - [Recommended Response Action(s)](#recommended-response-actions)
- [Data Source Description](#data-source-description)
  - [Events](#events)
  - [Component Name(s)](#component-names)
  - [Data Stream Analysis](#data-stream-analysis)
  - [Attack Simulation](#attack-simulation)
  - [Assurance Metrics](#assurance-metrics)

# Name
One line giving the name of the use case. The name should capture action that resolves the problem statement.

## Problem Statement
Describes the problem, beginning with any necessary background information.

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

## Events
Raw events and their characteristics.

## Component Name(s)
The base components that provide business logic, display, and notification.

## Data Stream Analysis
Pseudocode-like logic flow of how events are processed by the SIEM and presented or alerted upon.

## Attack Simulation
Steps to ensure the components in place display or alert as intended.

## Assurance Metrics
Methods to ensure the use case was developed and is operating properly. These can be pass/fail, time based, or other relevant measurements.