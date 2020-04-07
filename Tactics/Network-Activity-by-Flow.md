# Use Cases by Detection Method

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
- Source System, Destination System, Protocol=UDP where Source System Count exceeds threshold
- Source System, Destination System, Protocol=UDP where Destination System Count exceeds threshold
- Source System, Protocol=TCP where Count exceeds threshold
- Destination System, Protocol=TCP where Count exceeds threshold
- Bytes In Total, Bytes Out Total, Bytes In/Out Ratio where Bytes In/Out Ratio exceeds threshold
- Connection Length where Connection Length exceeds threshold


# Log Source Examples
- Netflow Logs
- IPFIX Logs
- SFLOW Logs

# Possible False Positives
