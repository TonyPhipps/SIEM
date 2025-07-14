index=pan_logs sourcetype=pan:traffic action=allowed _index_earliest=-1h@m _index_latest=-2m@m
| stats dc(dest_port) as dest_port_count by index, src_ip
| where dest_port_count > 100
| table index, src_ip, dest_port_count