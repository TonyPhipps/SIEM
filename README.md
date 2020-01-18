These resources are intended to guide a SIEM team to...
* ... develop a workflow for content creation (and retirement) in the SIEM and other security tools.
* ... illustrate detection coverage provided.
* ... highlight coverage gaps.
* ... determine whether custom signatures are required where vendor signatures are lacking.
* ... elimiante or add additional layers of coverage based on organizational needs.


# [Detection Tactics](/Detection-Tactics.md)

To detect an attacker, one must be equipped with the necessary logs to reveal their activities. Here we use a matrix to map detection tactics to attacker tactics ([Mitre ATT&CK](https://attack.mitre.org/)).


# [Detection Methods](/Detection-Methods.md)

Once necessary logs are collected (detection tactics), use various methods to reveal anomalous, suspicious, and malicious activity.


# Detection Use Cases

Use Cases provide a means to document solutions for many reasons including tracking work, uniform response, content recreation, metrics & reporting, making informed decisions, avoiding work duplication, and more.

## [Use Case Structure](/Use-Case-Structure.md)

## [Use Case Samples](/Use-Case-Samples.md)

## [Use Case Leads by Source](/Use-Case-Leads.md)


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

# [Metrics](/Metrics.md)
 Metrics requiring fields, queries, and manual work. This section also suggests which ticketing system and form fields are recommended to allow proper recording/reporting of metrics.

# [Lab](/Lab/WindowsVictim.md)
Set up a lab with a Windows system, a SIEM, and an attacking system to aid in detection research and development.