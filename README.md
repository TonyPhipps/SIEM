These resources are intended to guide a SIEM team to...
* ... develop a workflow for content creation (and retirement) in the SIEM and other security tools.
* ... illustrate detection coverage provided and highlight coverage gaps as goals to fill.
* ... eliminate or add additional layers of coverage based on organizational needs.
* Ensure proper logs are generated and recorded for sufficient detection, investigation, and compliance.

# Preparation, Prerequisites, etc.
Without covering the basics, there isn't much point in having a SIEM. Harden your environment and configure appropriate auditing on all endpoints.
- [Preparation](/Preparation.md)
- [Incident Response Policy Sample](/Documentation-Templates/Incident-Response-Policy.md)
- [RSS Feeds, Subscriptions, etc](/osintel.md)
- [Logging](/Logging.md)
- [Notable Event IDs](/Notable-Event-IDs.md)
- [IR Tool & Resources](/response-tools-resources.md)
- [Incident Tracking](/incident-tracking.md)
- [Metrics](/Metrics.md)
- [Attacker Tools](/attack-tools-resources.md)

## Hardening
- [DNS Security](/hardening/dns-security.md)
- [Email Security](/hardening/email-security.md)
- [General Security](/hardening/general-security.md)
- Microsoft 365
  - [Auditing and Reporting](/hardening/microsoft-365-auditing-and-reporting.md)
  - [Azure AD](/hardening/microsoft-365-azure-ad.md)
  - [Exchange](/hardening/microsoft-365-exchange.md)
  - [SharePoint and OneDrive](/hardening/microsoft-365-sharepoint-and-onedrive.md)
  - [Teams](/hardening/microsoft-365-teams.md)
- [Microsoft Active Directory](hardening/microsoft-active-directory.md)
- [Microsoft Windows DNS](/hardening/microsoft-windows-dns.md)
- [Microsoft Windows](hardening/microsoft-windows.md)
- [Network](hardening/network.md)
- [Remote Access](/hardening/remote-access.md)
- [Software Manufacturers](/hardening/software-manufacturers.md)
- [Web Security](/hardening/web-security.md)


# [Detection Tactics](/Detection-Tactics.md)

To detect an attacker, one must be equipped with the necessary logs to reveal their activities. Here we use a matrix to map detection tactics to attacker tactics ([Mitre ATT&CK](https://attack.mitre.org/)).


# [Detection Methods](/Detection-Methods.md)

Once necessary logs are collected (detection tactics), use various methods to reveal anomalous, suspicious, and malicious activity.


# Detection Use Cases

Use Cases provide a means to document solutions for many reasons including tracking work, uniform response, content recreation, metrics & reporting, making informed decisions, avoiding work duplication, and more.

- [Use Case Structure](/Use-Case-Structure.md)
- [Use Case Review](/Use-Cases.md)


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
