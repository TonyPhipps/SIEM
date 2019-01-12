## [Detect Tactics](/Detect-Tactics.md)
Mapped to the ATT&CK Framework, these use cases are intended to guide a SIEM team to...
* ... develop a workflow for content creation (and retirement) in the SIEM and other security tools.
* ... illustrate detection coverage provided.
* ... highlight coverage gaps.
* ... determine whether custom signatures are required where vendor signatures are lacking.
* ... elimiante or add additional layers of coverage based on organizational needs.


### Log-and-Product Driven Signatures

The "signatures" provided are meant as as a guide to final signature development for each log source or product type, respectfully. Assume that every use cases will require some tuning to eliminate false positives unique to the operating environment.

| Endpoint Log-Based          | Network Log-Based              | Dual-Homed                              |
| --------------------------- | ------------------------------ | --------------------------------------- |
| [Virus Scan](/VirusScan.md) | [Network IDS](/Network-IDS.md) | [Email](/Email.md)                      |
| [Windows](/Windows.md)      | [Flow](/Flow.md)               | [DHCP](/DHCP.md)                        |
| [Sysmon](/Sysmon.md)        |                                | [DNS](/DNS.md)                          |
| [Host IDS](/Host-IDS.md)    |                                | [Layer 3 Firewall](/Layer3-Firewall.md) |
| [Web Proxy](/Web-Proxy.md)  |                                | [Layer 7 Firewall](/Layer7-Firewall.md) |



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
