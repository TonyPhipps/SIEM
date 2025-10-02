# Web Server Detection Content


Grouped by [Detection Method](/Detection-Methods.md)


## Aggregate Count
- HTTP GET Method Counts
- HTTP POST Method Counts
- User Agent String Counts
- Allow:Block Ratio per System/User
- GET:POST Ratio per System/User
- Up:Down Bytes Ratio per System/User


## Blacklist Alert
- URL containing "/etc/"
- URL containing "/system32/"
- URL containing "cmd.exe"
- URL containing "command.exe"
- URL containing "powershell.exe"
- URL containing an IP Address
- HTTPS request with 3 or more / (when no break-and-inspect is deployed, this signifies HTTP over port 443)
- Known-bad User Agents
- Suspicious User Agents
  - Contains "curl"
  - Contains "python"
  - Contains "Go-http-client"
  - Contains "wget"
- User Agent string containing 'Nmap'


## Whitelist Alert


## Levenshtein Score Alert


## Rolling Whitelist Alert
- Newly Observed User Agent


## Shannon Entropy Score Alert



## Threshold Alert


# Log Source Examples


# Possible False Positives
