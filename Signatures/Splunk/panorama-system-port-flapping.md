index=pan_logs event_id="link-change" sourcetype="pan:system"
| fields index, host, object, body
| bucket _time span=1d
| stats count values(body) by _time, index, host, object
| where count > 10