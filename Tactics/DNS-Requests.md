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
- Requests where type=TXT and TXT field length exceeds X characters (filter by RCODE=16)
- Number of unique domain requests from a single system exceeds X amount in Y time (aggregate on fields: source system, unique_question_count)
- Number of requests with DNS Type TXT from a single system exceeds X amount in Y time (aggregate on fields: source system; filter by RCODE=16)
- Number of requests with DNS Type NULL from a single system exceeds X amount in Y time (aggregate on fields: source system; filter by RCODE=10)
- Number of requests with DNS Type CNAME from a single system exceeds X amount in Y time (aggregate on fields: source system; filter by RCODE=5)
- Number of DNS request volume for multiple sub domains of a single parent domain exceeds x amount in Y time (aggregate on fields: source system) (T1520)
- Parent domain text length exceeds X characters
- Number of responses with code SERVFAIL to a single system exceeds X amount in Y time (aggregate on fields: source system; filter by RCODE=2)
- Number of responses with code NXDOMAIN to a single system exceeds X amount in Y time (aggregate on fields: source system; filter by RCODE=3)
- Number of responses with code REFUSED to a single system exceeds X amount in Y time (aggregate on fields: source system; filter by RCODE=5)


## Deviation from Baseline Alarm
- Deviation in Requests for DNS Type TXT
- Deviation in Requests for DNS Type NULL
- Deviation in Requests for DNS Type CNAME
- Deviation in Response Code NXDOMAIN
- Deviation in Response Code SERVFAIL
- Deviation in Response Code REFUSED


# Log Source Examples
- DHCP Server Logs
- Microsoft Sysmon Event ID 22: DNSEvent (DNS query)


# Possible False Positives



# References
- https://docs.microsoft.com/en-us/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/dn800669(v=ws.11)
- https://docs.microsoft.com/en-us/powershell/module/dnsclient/resolve-dnsname?view=windowsserver2019-ps
- https://www.rsreese.com/parsing-microsoft-dns-server-logs/
