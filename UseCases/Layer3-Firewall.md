SIEM Use Cases based on Layer 3 Firewalls
- [Traffic from Printers to Servers/Workstations](#Traffic-from-Printers-to-ServersWorkstations)
- [Traffic from Servers to Workstations](#Traffic-from-Servers-to-Workstations)
- [Traffic from Workstations to Workstations](#Traffic-from-Workstations-to-Workstations)
- [Unauthorized Egress DNS Traffic](#Unauthorized-Egress-DNS-Traffic)
- [Unauthorized Egress NTP Traffic](#Unauthorized-Egress-NTP-Traffic)
- [OS Update Requests to Non-Company Servers](#OS-Update-Requests-to-Non-Company-Servers)
- [Newly Observed Port Use](#Newly-Observed-Port-Use)
- [Known-bad Port Observed](#Known-bad-Port-Observed)
- [Known-bad IP Address Observed](#Known-bad-IP-Address-Observed)
- [Newly observed UDP Traffic](#Newly-observed-UDP-Traffic)
- [Spike in Outbound Denies](#Spike-in-Outbound-Denies)
- [Spike in Egress Sessions](#Spike-in-Egress-Sessions)
- [Anomalous Upload/Download Ratio](#Anomalous-UploadDownload-Ratio)
- [Unauthorized Egress Email Traffic](#Unauthorized-Egress-Email-Traffic)
- [Unauthorized Egress Web Requests](#Unauthorized-Egress-Web-Requests)
- [Border Firewall Egress Default Deny Blocks](#Border-Firewall-Egress-Default-Deny-Blocks)

# Traffic from Printers to Servers/Workstations
- Blacklist Alert


# Traffic from Servers to Workstations
- Blacklist Alert


# Traffic from Workstations to Workstations
- Rolling Whitelist Alert


# Unauthorized Egress DNS Traffic
- Blacklist Alert
- Port 53
- Could indicate DNS Tunneling


# Unauthorized Egress NTP Traffic
- Blacklist Alert
- Port 123


# OS Update Requests to Non-Company Servers
- Blacklist Alert
- Accessing default Windows, Ubuntu, etc update IP addresses could indicate a rogue device


# Newly Observed Port Use
- Rolling Whitelist Alert
- Ideally separate system types into different rolling whitelists (printers, servers, workstations)


# Known-bad Port Observed
- Blacklist Alert


# Known-bad IP Address Observed
- Blacklist Alert


# Newly observed UDP Traffic
- Rolling Whitelist Alert


# Spike in Outbound Denies
- Threshold Alert


# Spike in Egress Sessions
- Threshold Alert


# Anomalous Upload/Download Ratio
- Threshold Alert


# Unauthorized Egress Email Traffic
- Blacklist Alert
- Ports include 25, 143, 587, 110, etc

# Unauthorized Egress Web Requests
- Not originating from company proxy
- Blacklist


# Border Firewall Egress Default Deny Blocks
- Rolling Whitelist Alert

