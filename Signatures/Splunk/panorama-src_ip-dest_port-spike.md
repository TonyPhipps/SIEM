index=pan_logs sourcetype=pan:traffic earliest=-1h
| stats dc(dest_port) as dest_port_count by index, src_ip
| where dest_port_count > 100
| table index, src_ip, dest_port_count