TODO: Merge into Tactics md's

SIEM Use Cases based on Layer 3 Firewalls
- [Traffic from Printers to Servers/Workstations](#traffic-from-printers-to-serversworkstations)
- [Traffic from Servers to Workstations](#traffic-from-servers-to-workstations)
- [Traffic from Workstations to Workstations](#traffic-from-workstations-to-workstations)
- [Unauthorized Egress DNS Traffic](#unauthorized-egress-dns-traffic)
- [Unauthorized Egress NTP Traffic](#unauthorized-egress-ntp-traffic)
- [OS Update Requests to Non-Company Servers](#os-update-requests-to-non-company-servers)
- [Newly Observed Port Use](#newly-observed-port-use)
- [Known-bad Port Observed](#known-bad-port-observed)
- [Known-bad IP Address Observed](#known-bad-ip-address-observed)
- [Newly observed UDP Traffic](#newly-observed-udp-traffic)
- [Spike in Outbound Denies](#spike-in-outbound-denies)
- [Spike in Egress Sessions](#spike-in-egress-sessions)
- [Anomalous Upload/Download Ratio](#anomalous-uploaddownload-ratio)
- [Unauthorized Egress Email Traffic](#unauthorized-egress-email-traffic)
- [Unauthorized Egress Web Requests](#unauthorized-egress-web-requests)
- [Border Firewall Egress Default Deny Blocks](#border-firewall-egress-default-deny-blocks)

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

