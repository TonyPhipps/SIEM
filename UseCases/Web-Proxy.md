SIEM Use Cases baed on Web Proxy Logs

- [Abnormal HTTP Method Counts](#abnormal-http-method-counts)
- [Abnormal URL Request Length](#abnormal-url-request-length)
- [Abnormal Count of Blocked Web Requests](#abnormal-count-of-blocked-web-requests)
- [Abnormal Ratio of HTTP GET/POST](#abnormal-ratio-of-http-getpost)
- [Abnormal Ratio of HTTP Up/Down Bytes](#abnormal-ratio-of-http-updown-bytes)
- [Abnormal User Agent](#abnormal-user-agent)
- [Domain Generating Algorithm (DGA) Use](#domain-generating-algorithm-dga-use)
- [HTTP over port 443](#http-over-port-443)
- [Newly-Registered Domains](#newly-registered-domains)
- [Typosquatted Company Domains](#typosquatted-company-domains)
- [Web Traffic to Non Top Million](#web-traffic-to-non-top-million)
- [Newly Observed Domains](#newly-observed-domains)
- [Known-bad User Agents](#known-bad-user-agents)
- [Known-bad Domains](#known-bad-domains)
- [Web Requests Directly to IP Address](#web-requests-directly-to-ip-address)
- [Unauthorized Egress Web Requests](#unauthorized-egress-web-requests)
- [Unauthorized X-Forwarded-For Address](#unauthorized-x-forwarded-for-address)
- [New Observed Web Site Category Per Account](#new-observed-web-site-category-per-account)

# Abnormal HTTP Method Counts
- GET, POST, etc
- Threshold
- Per System or Per User


# Abnormal URL Request Length
- Aggregate Count


# Abnormal Count of Blocked Web Requests
- Threshold


# Abnormal Ratio of HTTP GET/POST
- Aggregate Count


# Abnormal Ratio of HTTP Up/Down Bytes
- Aggregate Count


# Abnormal User Agent
- Rolling Whitelist


# Domain Generating Algorithm (DGA) Use
- Shannon Entropy Score


# HTTP over port 443 
- HTTPS request with 3 or more /
- Blacklist


# Newly-Registered Domains
- Aggregate Count
- Requres categorization or WHOIS Dataset


# Typosquatted Company Domains
- Levenshtein Score


# Web Traffic to Non Top Million
- Aggregate Count
- Requieres Top 1 Million List


# Newly Observed Domains
- Rolling Whitelist


# Known-bad User Agents
- Blacklist


# Known-bad Domains
- Blacklist
- Recommend adding file/info sharing sites like Google Drive and PasteBin


# Web Requests Directly to IP Address 
- AKA Naked IP Traffic
- Blacklist


# Unauthorized Egress Web Requests
- Not originating from company proxy
- Blacklist


# Unauthorized X-Forwarded-For Address
- X-Forwarded-For specifies the proxy forwarding 
- Blacklist


# New Observed Web Site Category Per Account
- Rolling Whitelist


