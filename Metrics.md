Metrics are used to make informed decisions possible. These decisions can lead to more efficient tuning to training employees to determining a need for additional hardware.

Metrics are made possible by recording data, turning it into useful information. The most logical place to record this data is in the ticketing system, with as much automation as possible.

# Metrics Requiring Fields
| Metric                                                  | Fields                                | Notes                                                         |
| ------------------------------------------------------- | ------------------------------------- | ------------------------------------------------------------- |
| Average Cost Per Incident                               | Labor Hours, Non-labor Costs          |                                                               |
| Average Time to Detect                                  | DateTime Occurred, DateTime Detected  |                                                               |
| Average Time to Escalate                                | DateTime Detected, DateTime Escalated |                                                               |
| Average Time to Contain                                 | DateTime Detected, DateTime Contained |                                                               |
| Average Time to Expel                                   | DateTime Detected, DateTime Expelled  |                                                               |
| Average Time to Notify                                  | DateTime Owner Notified               | "Owner" may be director, user, data owner/custodian, etc      |
| Avoidable Incidents                                     | IsAvoidable, IsAvoidableExplanation   | Would the incident have been avoided with a control in place? |
| Number of Alerts by Severity                            | Severity                              |                                                               |
| Number of Critical Alerts Not Reviewed after 8/24 Hours | Severity                              |                                                               |
| Number of Incidents Per Use Case                        | Source Use Case                       |                                                               |
| Number of False Positives Per Use Case                  | Category (False Positive)             |                                                               |


# Metrics Requiring Queries
* Incidents Opened in a time frame
* Incidents Closed in a time frame (These two can show staffing/training issues)
* Number of Alerts/Rules Tuned
* Number of Total/New Use Cases
* Number of Fires per Alert/Rule
* Average Time to Detect Feed Issue - How long does it take to detect after log forwarding breaks in any way or bottlenecks?
* Average TIme to Correct Feed Issue


# Metrics Requiring Manual Work
* Total vs Unique Data Types - If you break down the data feeds into types, how many are there total, and how many are only pulled from a data source?
* Average Scan Time - How long does it take to scan all the endpoints for some data point? May be worth breaking down into endpoint types.
* Average Scan Success Percentage - Of the endpoints detected, which percentage were successfully scanned? Detects permission issues, etc.
* Mitre ATT&CK Coverage per Technique



