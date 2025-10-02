# Network Activity by Flow Detection Content

Grouped by [Detection Method](/Detection-Methods.md)


## Aggregate Count


## Blacklist Alert
- Known-Bad Destination Port Use

## Whitelist Alert
- Anomalous Destination Port Use

## Levenshtein Score Alert


## Rolling Whitelist Alert
- Newly observed Source System, Protocol
- Newly Observed Source System, HourOfDay


## Shannon Entropy Score Alert


## Threshold Alert
- Source System, Destination System, Protocol=UDP where Count exceeds threshold
- Source System, Destination System, Protocol=UDP where Count exceeds threshold
- Source/Destination System, Protocol=TCP where Count exceeds threshold
- Source/Destination System, Protocol=TCP where Count exceeds threshold
- Source/Destination System, Bytes In Total, where Bytes In Total exceeds threshold
- Source/Destination System, Bytes Out Total, where Bytes Out Total exceeds threshold
- Source/Destination System, Bytes In Total, Bytes Out Total, Bytes In/Out Ratio where Bytes In/Out Ratio exceeds threshold
- Source/Destination System, Connection Length where Connection Length exceeds threshold


# Log Source Examples
- Netflow Logs
- IPFIX Logs
- SFLOW Logs
- VPC Flow Logs


# Possible False Positives
