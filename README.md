These resources are intended to guide a SIEM team to...
* ... develop a workflow for content creation (and retirement) in the SIEM and other security tools.
* ... illustrate detection coverage provided.
* ... highlight coverage gaps.
* ... determine whether custom signatures are required where vendor signatures are lacking.
* ... elimiante or add additional layers of coverage based on organizational needs.


## [Detection Tactics](/Detection-Tactics.md)

To detect an attacker, one must be equipped with the necessary logs to reveal their activities. Here we use a matrix to map detection tactics to attacker tactics ([Mitre ATT&CK](https://attack.mitre.org/)).


## [Detection Techniques](/Detection-Techniques.md)

Once necessary logs are collected (detection tactics), techniques are applied to reveal anomalous, suspicious, and malicious activity.


## Detection Use Cases

These use cases are provided as guides to final product signature/SIEM content development for the respective log source or product type. Assume that every use case will require some tuning to eliminate false positives unique to the operating environment.

| Endpoint Log-Based          | Network Log-Based              | Dual-Homed                              |
| --------------------------- | ------------------------------ | --------------------------------------- |
| [Virus Scan](/VirusScan.md) | [Network IDS](/Network-IDS.md) | [Email](/Email.md)                      |
| [Windows](/Windows.md)      | [Flow](/Flow.md)               | [DHCP](/DHCP.md)                        |
| [Sysmon](/Sysmon.md)        |                                | [DNS](/DNS.md)                          |
| [Host IDS](/Host-IDS.md)    |                                | [Layer 3 Firewall](/Layer3-Firewall.md) |
| [Web Proxy](/Web-Proxy.md)  |                                | [Layer 7 Firewall](/Layer7-Firewall.md) |

More [Generic Use Cases](/Generic-Use-Cases.md)

## Data Enrichment

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

# [Metrics](/Metrics.md)
 Metrics requiring fields, queries, and manual work