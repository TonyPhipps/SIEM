# DNS Request Use Cases

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
- Newly observed Source Process


## Shannon Entropy Score Alert
- High-Entropy Domain Name
- High-Entropy TXT Queries (RCODE:16)


## Threshold Alert
Requests where type=TXT and TXT field length exceeds X characters (filter by RCODE=16)
- Number of requests from a single system exceeds X amount in Y time (aggregate on fields: source system)
- Number of resolution failures for a single system exceeds X amount in Y time (aggregate on fields: Source System; filter by RCODE=3)
- Number of TXT-type DNS requests from a single system exceeds X amount in Y time (aggregate on fields: source system; filter by RCODE=16)


# Log Source Examples
- DHCP Server Logs
- Microsoft Sysmon Event ID 22: DNSEvent (DNS query)


# Possible False Positives
