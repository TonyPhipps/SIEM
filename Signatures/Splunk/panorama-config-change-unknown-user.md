index=pan_logs sourcetype=pan:config NOT command IN (request, commit) NOT src_user IN (user1, user2, user3) earliest=-1h
| fields index, host, src_user, src, dest, command, path
| stats count as change_count values(path) as targets by index, host, src_user, src, dest, command