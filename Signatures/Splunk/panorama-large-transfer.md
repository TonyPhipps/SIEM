index=pan_logs sourcetype=pan:traffic earliest=-1h
| eval transfer_mb=bytes_out/1024/1024 
| eval hour_of_day=strftime(_time, "%H")
```| where hour_of_day < "08" OR hour_of_day > "18" ```
| stats sum(transfer_mb) as total_transfer_mb by src_ip, dest_ip, app, hour_of_day 
| where total_transfer_mb > 1024
| table _time, src_ip, dest_ip, app, total_transfer_mb, hour_of_day 
| eval total_transfer_mb=round(total_transfer_mb, 2)
| sort - total_transfer_mb