# Use Cases by Detection Method

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


## Levenshtein Score Alert
- Typosquatting Company Domains


## Rolling Whitelist Alert
- Newly Observed Domain


## Shannon Entropy Score Alert
- High Entropy Domain Name
- HIgh Entropy TXT Queries (RCODE:16)


## Threshold Alert
- TXT queries with high length (RCODE:16)
- Excessive queries from a single system
- Excessive query failures from a single system (RCODE:3)
- Excessive TXT queries from a single system (RCODE:16)


# Log Source Examples
- Server Logs
- DHCP Server Logs
- Web Proxy Logs
- Reverse Web Proxy Logs


# Response Options


## Possible False Positives
