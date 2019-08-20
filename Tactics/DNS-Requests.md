# Use Cases by Detection Method

Grouped by [Detection Method](/Detection-Methods.md)

## Aggregate Count
- Requests per System


## Blacklist Alert
- Known-Bad Domain Name
- Known-Bad Server IP
- OS Update Requests to External Servers (e.g. Ubuntu update traffic could reveal a rogue system)
- Successful resolution for "WPAD" domain
- Communication with Newly Registered Domain


## Whitelist Alert
- A source system with an unrecognized naming convention is observed
- Requests on domains not in a Top-Million list is observed


## Levenshtein Score Alert
- Typosquatting Company Domains


## Rolling Whitelist Alert
- Newly Observed Domain
- Newly observed source process


## Shannon Entropy Score Alert
- High Entropy Domain Name
- HIgh Entropy TXT Queries (RCODE:16)


## Threshold Alert
- type=TXT, TXT Length where length exceeeds threshold (RCODE:16)
- Source System where Count exceeds threshold
- Source System, Outcome=Failure where Count exceeds threshold (RCODE:3)
- Source System, Type=TXT where Source System Count exceeds threshold (RCODE:16)


# Log Source Examples
- DHCP Server Logs
- Microsoft Sysmon Event ID 22: DNSEvent (DNS query)


# Response Options


## Possible False Positives
