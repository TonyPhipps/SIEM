
# Threat Hunting
- Most threat hunting approaches assume there is a large enough dataset to search in to allow for understanding what "normal" looks like in the given environment and pinpointing unique entries worthy of further investigation.

# Hypotheses
Focusing on hypothesis that are unlikely to boil down into a signature to automate.

## Long Tail Analysis
- Domain DNS requests
- Processes executed under user profiles (e.g. c:\users\*)
- Processes running as SYSTEM, other service accounts
- Windows Firewall Rule Creation Events
- Windows Firewall Rule Deletion Events
- Software installation counts
- 


# Resources
- [Crowdstrike Splunk Threat Hunting Searches](https://docs.google.com/spreadsheets/d/1RTcZsRbDsjxwmKpe3FIvSKUjBk5pR2Dlzj71QTnxAK0/edit#gid=0) by rmccurdy
- 