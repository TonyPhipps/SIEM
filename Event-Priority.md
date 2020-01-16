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

Logs that do not provide basic security context should be considered for tuning out.
- Date and Time of Action
- Source System/Account Attribution
- Description of Action
- Description of Target (when applicable)
- Description of Outcome (sometimes implied)

Note: This does not immply that non-security focused logs are no value/use.

# Log Priority

The following is a prioritized list of recommended event logs to collect into your SIEM (ordering should be customized per organization and is subject to change here). 

- DHCP Leases
- DNS Queries (with endpoint name/IP)
- Active Directory / LDAP Logs
- Egress Firewall Traffic
- Web Proxy Requests
- VPN Authentication
- Security Product Alerts
- Windows Event Logs
- Linux auditd Logs
- Email
- Custom Application Logs
- Layer 7 Firewall
- Layer 3 Firewall
- Netflow
- Full packet capture

The priority here takes into consideration
- Common attack vectors 
- Common detection sources
- Expected noise levels
- Legal precedence on what adequate security monitoring includes
- Raw space consumption