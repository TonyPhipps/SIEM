These resources are intended to guide a SIEM team to...
* ... develop a workflow for content creation (and retirement) in the SIEM and other security tools.
* ... illustrate detection coverage provided.
* ... highlight coverage gaps.
* ... determine whether custom signatures are required where vendor signatures are lacking.
* ... elimiante or add additional layers of coverage based on organizational needs.


## [Detection Tactics](/Detection-Tactics.md)

To detect an attacker, one must be equipped with the necessary logs to reveal their activities. Here we use a matrix to map detection tactics to attacker tactics ([Mitre ATT&CK](https://attack.mitre.org/)).


## [Detection Methods](/Detection-Methods.md)

Once necessary logs are collected (detection tactics), use various methods to reveal anomalous, suspicious, and malicious activity.


## Detection Use Cases

These use cases are provided as guides to final product signature/SIEM content development for the respective log source or product type. Assume that every use case will require some tuning to eliminate false positives unique to the operating environment.

| Endpoint Log-Based                   | Network Log-Based                       | Dual-Homed                                       |
| ------------------------------------ | --------------------------------------- | ------------------------------------------------ |
| [Virus Scan](/UseCases/VirusScan.md) | [Network IDS](/UseCases/Network-IDS.md) | [Email](/UseCases/Email.md)                      |
| [Windows](/UseCases/Windows.md)      | [Flow](/UseCases/Flow.md)               | [DHCP](/UseCases/DHCP.md)                        |
| [Sysmon](/UseCases/Sysmon.md)        |                                         | [DNS](/UseCases/DNS.md)                          |
| [Host IDS](/UseCases/Host-IDS.md)    |                                         | [Layer 3 Firewall](/UseCases/Layer3-Firewall.md) |
| [Web Proxy](/UseCases/Web-Proxy.md)  |                                         | [Layer 7 Firewall](/UseCases/Layer7-Firewall.md) |

More [Generic Use Cases](/UseCases/Generic.md)

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

## [Metrics](/Metrics.md)
 Metrics requiring fields, queries, and manual work

## [Lab](/Lab/WindowsVictim.md)
Set up a lab with a Windows system, a SIEM, and an attacking system to aid in detection research and development (work in progress).