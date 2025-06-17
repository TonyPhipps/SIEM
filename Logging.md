# Log Priority

The following is a prioritized list of recommended event logs to collect into your SIEM (ordering should be customized per organization and is subject to change here). 

- Security Product Logs (EDR/AV/HIPS/IPS)
- Windows DC Event Logs / LDAP Logs
- Web Proxy Requests
- PowerShell Logs
- DNS Queries (with endpoint name/IP)
- Firewall (Egress Only)
- VPN Logs
- Google Cloud Logging
- AWS CloudWatch
- Microsoft M365 UnifiedAuditLog
- Microsoft AzureAD Sign-In Logs
- Microsoft Cloud App Security Logs
- Microsoft AzureAD Identity Protection
- Microsoft M365 Defender for Identity
- Linux osquery Logs
- Windows Member Server Event Logs
- Windows Workstation Event Logs
- Linux auditd Logs
- Email Logs
- Custom Application Logs
- Firewall
- DHCP
- Netflow
- AWS VPC Flow Logs
- Google VPC Flow Logs
- Microsoft Network Security Group Flow Logs
- Full packet capture


The priority here takes into consideration
- Data ingestion/space restrictions
- Common attack vectors 
- Common detection sources
- Expected noise levels
- Overaid aid to investigations
- Legal precedence on what adequate security monitoring includes


# Requirements
- Normalize all field names and content. This is critical to success in correlation and analyst faith in their search results.
- Parse-out nested fields. Looking at you, Microsoft Event Log "Message" field.
- All event logs should be set to ISO 8601 UTC. This may require transforms to convert from the original device's local time.
- All devices should sync with Network Time Protocol (NTP) providers.


# Considerations
- What in the system performance impact of log collection on an endpoint?
- What in the system performance impact of log collection on network appliances?
- How long should data be held in "hot" (searchable) storage?
- How long is data to be held in "cold" (backup) storage?
- How much storage space is needed?
- Is there an enforceable logging policy in place?
- What is the expected event load on the server, and what is the appropriate amount of hardware resources to handle the load?
- How will event log feeds be monitored for issues/outage?
- What is the maximum allowable travel time from when an event occurs to when the log reaches the centralized logging server?


# Event Reduction

Reduction of ingested events to only those with a security concern is highly recommended. This may require a separate 'data lake' from logs maintained for regulatory compliance. Reduced logs saves money, analyst time, and improves system performance.

Common tune-outs at the ingest level include
- Authorized vulnerability scanners
- Debug logs
- Encrypted data
- File access by backup service accounts
- Common application errors
- Health Checks

Some logs can be significantly reduced by eliminating one or more fields, like Windows Event Logs often multi-paragraph long descriptions included in the log.

Logs that do not provide basic security context should be considered for tuning out:
- Date and Time of Action
- Source System/Account Attribution
- Description of Action
- Description of Target (when applicable)
- Description of Outcome (sometimes implied)

Note: This does not immply that non-security focused logs are of no value/use.

## Detection Layering
This approach allows a high-level understanding of interactions between log collection, detections, and monitoring.

- Detection can (and should) occur at any tier. 
- "Tuning" based on content analysis and feedback should be used on every tier.

Tiers
- Raw Events
	- Monitoring for visible anomalies in a stream of events.
		- Are the logs needed?
		- Can we filter some events?
		- Are the appropriate fields collected?
		- Are the fields parsed correctly?
	
- Aggregation of Raw Events (usually via widgets on dashboards)
	- Stack counting of one or more fields helps surface interesting events
	- Which fields do you aggregate?
	- When should information roll over/expire?
	- Styles
  	- Aggregation counts
	  - First occurance
	  - Last occurance
	  - Frequency bar chart enabling Long tail analysis
	
- Prioritized Alerts
	- When confirmed incidents are found, an opportunity to create a prioritized alert is presented.
		- What is the criticality of asset?
				- People
				- Services
				- Devices
				- Data
			- Tiers within assets
			- Interaction between assets
		- What is the fidelity of the technique?
			- Blacklist Alert
			- Whitelist
			- Count Threshold
			- Newly Observed
			- Etc.

- Incidents
	- A Prioritized Alert of highest severity requires acknowledgement.
	- Known-Bad
		- Vendor Signature
		- IP
		- Domain
		- Etc.
	
