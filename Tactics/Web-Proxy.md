# Use Cases by Detection Method


Grouped by [Detection Method](/Detection-Methods.md)


## Aggregate Count
- HTTP GET Method Counts
- HTTP POST Method Counts
- User String Counts
- Allow:Block Ratio per System/User
- GET:POST Ratio per System/User
- Up:Down Bytes Ratio per System/User
- Newly-Registered Domains Visited (requres WHOIS enrichment)


## Blacklist Alert
- URL containing "/etc/"
- URL containing "/system32/"
- URL containing "cmd.exe"
- URL containing "command.exe"
- URL containing "powershell.exe"
- URL containing an IP Address
- HTTPS request with 3 or more / (when no break-and-inspect is deployed, this signifies HTTP over port 443)
- Known-bad User Agents
- Known-bad Domains



## Whitelist Alert
- Newly Observed Domains
- Web Traffic to Domains not in "Top Million" Lists


## Levenshtein Score Alert
- Typosquatting company and trusted domains


## Rolling Whitelist Alert
- Newly Observed User Agent
  

## Shannon Entropy Score Alert
- High Entropy Domain Name


## Threshold Alert
- Excessive Allow:Block Daily Ratio
- Excessive GET:POST Daily Ratio
- Excessive Up:Down Bytes Daily Ratio


# Log Source Examples


# Response Options


## Possible False Positives
