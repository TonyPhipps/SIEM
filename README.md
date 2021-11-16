These resources are intended to guide a SIEM team to...
* ... develop a workflow for content creation (and retirement) in the SIEM and other security tools.
* ... illustrate detection coverage provided and highlight coverage gaps as goals to fill.
* ... eliminate or add additional layers of coverage based on organizational needs.
* Ensure proper logs are generated and recorded for sufficient detection, investigation, and compliance.

# Preparation, Prerequisites, etc.
Without covering the basics, there isn't much point in having a SIEM. Harden your environment and configure appropriate auditing on all endpoints.
- [Preparation](/Preparation.md)
- [Incident Response Policy Sample](Incident-Response-Policy.md)
- [RSS Feeds](/rss.md)
- [Email Subscriptions](/Subscriptions.md)
- [Logging](/logging.md)
- [Notable Event IDs](/Notable-Event-IDs.md)
- [IR Tool & Resoures](/response-tools-resources.md)
- [Incident Tracking](/incident-tracking.md)
- [Metrics](/Metrics.md)
- [After Action Review](/After-Action-Review.md)
- [Attacker Tools](/attack-tools-resources.md)

## Hardening
- [Microsoft Windows](hardening/microsoft-windows.md)
- [Microsoft Active Directory](hardening/microsoft-active-directory.md)
- [Network](hardening/network.md)


# [Detection Tactics](/Detection-Tactics.md)

To detect an attacker, one must be equipped with the necessary logs to reveal their activities. Here we use a matrix to map detection tactics to attacker tactics ([Mitre ATT&CK](https://attack.mitre.org/)).


# [Detection Methods](/Detection-Methods.md)

Once necessary logs are collected (detection tactics), use various methods to reveal anomalous, suspicious, and malicious activity.


# Detection Use Cases

Use Cases provide a means to document solutions for many reasons including tracking work, uniform response, content recreation, metrics & reporting, making informed decisions, avoiding work duplication, and more.

- [Use Case Structure](/Use-Case-Structure.md)
- [Use Case Review](/Use-Case-Review.md)


# Data Enrichment

These efforts can provide significant benefits to some ingested logs. Typically enrichment will result in either adding a new field to events or a lookup table for use in filtering or filling in a field.

- GeoIP/ASN Lookup
- Levenshtein Distance
- Shannon Entropy Scores
- String Lengths
- Top 1 Million Domains
- WHOIS Caching
- DNS Lookup
- Reverse-DNS Lookup
- Certificate Parsing
- [O365 Principal App IDs](/Lookups/o365-principalappid.csv)
- [Windows Logon Type Lookups](/Lookups/windows-logon-type.csv)
- [Windows Status Code Lookups](/Lookups/windows-status-code.csv)


# [Lab](/Lab/WindowsVictim.md)
Set up a lab with a Windows system, a SIEM, and an attacking system to aid in detection research and development.


# TODO
- [ ] Add Use Case Examples
- [ ] Add Threat Hunts Library
- [ ] Add an object oriented, relational database approach to recording and associating all elements to one another - cases, adversaries, techniques, mitigations, detections, hunts, log sources, etc.