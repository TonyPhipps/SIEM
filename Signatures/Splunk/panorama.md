Configuration Change
```sql
index=pan_logs sourcetype=pan:config NOT command IN (request, commit)
| eval host = coalesce(host, src_ip)
```


User Surpassed Failed Logon Threshold
```sql
index=pan_logs sourcetype=pan:system event_id=auth-fail
| bin _time span=1h
| eval host = coalesce(host, src_ip)
| stats count by index, host, user
```


Host with Spike in Outbound Transfer
- Designed to be ran hourly
- Uses last 24h to determine normalcy
```sql
index=pan_logs sourcetype=pan:traffic earliest=-24h latest=-15m
| eval host = coalesce(host, src_ip)
| eval transfer_mb=bytes_out/1024/1024 
| bin _time span=1h
| stats sum(transfer_mb) as hourly_transfer by _time, host
| eventstats median(hourly_transfer) as median_transfer by host
| eval abs_deviation=abs(hourly_transfer - median_transfer)
| eventstats median(abs_deviation) as mad_transfer by host
| eval deviations_from_median = (hourly_transfer - median_transfer) / max(mad_transfer, 0.001)
| eval robust_z_score = deviations_from_median * 1.4826
| where robust_z_score > 3.5 AND hourly_transfer > 100 AND _time >= relative_time(now(), "-75m")
| table _time, index, host, hourly_transfer, median_transfer, mad_transfer, robust_z_score
| sort - robust_z_score
```


Host with Spike in Outbound Ports
- Possible port scanning
- Uses last 24h to determine normalcy
```sql
index=pan_logs sourcetype=pan:traffic earliest=-24h latest=-15m
| eval host = coalesce(host, src_ip)
| bin _time span=1h
| stats dc(dest_port) as hourly_ports by _time, host
| eventstats median(hourly_ports) as median_ports by host
| eval abs_deviation=abs(hourly_ports - median_ports)
| eventstats median(abs_deviation) as mad_ports by host
| eval deviations_from_median = (hourly_ports - median_ports) / max(mad_ports, 0.001)
| eval robust_z_score = deviations_from_median * 1.4826
| where robust_z_score > 3.5 AND hourly_ports > 50 AND _time >= relative_time(now(), "-75m")
| table _time, host, hourly_ports, median_ports, mad_ports, robust_z_score
| sort - robust_z_score
```


Host with Spike in Destination Hosts
- Possible host enumeration or scanning
- Uses last 24h to determine normalcy
```sql
index=pan_logs sourcetype=pan:traffic earliest=-24h latest=-15m
| eval host = coalesce(host, src_ip)
| bin _time span=1h
| stats dc(dest_ip) as hourly_dest_ips by _time, host
| eventstats median(hourly_dest_ips) as median_dest_ips by host
| eval abs_deviation=abs(hourly_dest_ips - median_dest_ips)
| eventstats median(abs_deviation) as mad_dest_ips by host
| eval deviations_from_median = (hourly_dest_ips - median_dest_ips) / max(mad_dest_ips, 0.001)
| eval robust_z_score = deviations_from_median * 1.4826
| where robust_z_score > 3.5 AND hourly_dest_ips > 50 AND _time >= relative_time(now(), "-75")
| table _time, host, hourly_dest_ips, median_dest_ips, mad_dest_ips, robust_z_score
| sort - robust_z_score
```