index=pan_logs sourcetype=pan:config NOT command IN (request, commit) earliest=-1h
| fields index, host, src_user, src, dest, command, path
| bucket _time span=1h
| stats count as change_count values(path) as targets by index, host, src_user, src, dest, command
| where change_count > 10