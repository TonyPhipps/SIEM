Metrics are used to make informed decisions possible. These decisions can lead to more efficient tuning to training employees to determining a need for additional hardware.

Metrics are made possible by recording data, turning it into useful information. The most logical place to record this data is in the ticketing system, with as much automation as possible.

# Recommended Fields for Metric Collection
- Labor Hours
- Non-labor Hours
- DateTime Occurred
- DateTime Detected
- DateTime Contained
- DateTime Expelled
- DateTime Owner Notified
- DateTime Escalated
- IsAvoidable
- IsAvoidableExplanation
- Severity
- Source Use Case
- Source Signature
- Category

# Recommended Metrics
- Average Cost Per Incident
- Average Time to Detect
- Average Time to Escalate
- Average Time to Contain
- Average Time to Expel
- Average Time to Notify
- Avoidable Incidents
- Number of Alerts by Severity
- Number of Critical Alerts Not Reviewed after 8/24 Hours
- Number of Incidents Per Use Case
- Number of False Positives Per Use Case
- Incidents Opened in a time frame
- Incidents Closed in a time frame (These two can show staffing/training issues)
- Number of Alerts/Rules Tuned
- Number of Total/New Use Cases
- Number of Fires per Alert/Rule
- Average Time to Detect Feed Issue - How long does it take to detect after log forwarding breaks in any way or bottlenecks?
- Average TIme to Correct Feed Issue

# Metrics Requiring Manual Work
- Total vs Unique Data Types - If you break down the data feeds into types, how many are there total, and how many are only pulled from a data source?
- Average Scan Time - How long does it take to scan all the endpoints for some data point? May be worth breaking down into endpoint types.
- Average Scan Success Percentage - Of the endpoints detected, which percentage were successfully scanned? Detects permission issues, etc.
- Mitre ATT&CK Coverage per Technique



