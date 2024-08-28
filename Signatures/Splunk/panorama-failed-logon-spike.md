index=pan_logs sourcetype=pan:system event_id=auth-fail earliest =-1h
| rex field=body "From: (?<src_ip>(?:\d{1,3}\.){3}\d{1,3})"
| stats count as failed_attempts by _time, index, host, src_ip
| where failed_attempts > 5
| table _time, index, host, src_ip, failed_attempts 
| sort - _time