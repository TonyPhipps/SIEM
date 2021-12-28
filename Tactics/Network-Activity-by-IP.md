# Network Activity by IP Use Cases

Grouped by [Detection Method](/Detection-Methods.md)


## Aggregate Count


## Blacklist Alert
- Egress Traffic to Known-Bad Port
- Engress Traffic to Known Bad IP
- Egress Traffic to Known Sinkhole IP
- Allowed Ingress Border Traffic on port 3389 (RDP)
- Allowed Ingress Border Traffic on port 6568 (Anydesk)
- Allowed Ingress Border Traffic on port 6129, 6132, or 6133 (Dameware)
- Allowed Ingress Border Traffic on port 5938 (Teamviewer)
- Allowed Ingress Border Traffic on port 5800 or 5900 (VNC)


## Whitelist Alert
- Anomalous Destination Port Use

## Levenshtein Score Alert


## Rolling Whitelist Alert
- Newly observed Source System, Protocol
- Newly Observed Source System, HourOfDay


## Shannon Entropy Score Alert


## Threshold Alert
- Source System, Destination System, Protocol=UDP where Source System Count exceeds threshold
- Source System, Destination System, Protocol=UDP where Destination System Count exceeds threshold
- Source System, Protocol=TCP where Count exceeds threshold
- Destination System, Protocol=TCP where Count exceeds threshold


# Log Source Examples
- Layer 3 or 7 Firewall Logs


# Possible False Positives
