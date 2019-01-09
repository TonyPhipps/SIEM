# SIEM Tactics, Techiques, and Procedures

## [Detect Use Cases Mapped to the ATT&CK Framework](/Detect-Use-Cases.md)

## Log-and-Product Driven Signatures

| Endpoint Log-Based                            | Network Log-Based                                | Dual-Homed                                                |
| --------------------------------------------- | ------------------------------------------------ | --------------------------------------------------------- |
| [Virus Scan](/VirusScan.md) | [Network IDS](/Network-IDS.md) | [Email](/Email.md)                      |
| [Windows](/Windows.md)      | [Flow](/Flow.md)               | [DHCP](/DHCP.md)                        |
| [Sysmon](/Sysmon.md)        |                                                  | [DNS](/DNS.md)                          |
| [Host IDS](/Host-IDS.md)    |                                                  | [Layer 3 Firewall](/Layer3-Firewall.md) |
| [Web Proxy](/Web-Proxy.md)  |                                                  | [Layer 7 Firewall](/Layer7-Firewall.md) |

_Note: Assume that every use cases will require some tuning to eliminate false positives unique to the operating environment._

## [Detection Techniques](/Detection-Techniques.md)

## Data Enrichment
- GeoIP/ASN Lookup
- Levenshtein Distance
- Shannon Entropy Scores
- String Lengths
- Top 1 Million Domains
- WHOIS Caching
- DNS Lookup
- Reverse-DNS Lookup
- Certificate Parsing
