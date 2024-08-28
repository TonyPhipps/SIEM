index=pan_logs sourcetype=pan:traffic earliest=-1h
| search NOT(app IN (dns-base, ssl, paloalto-updates, pan-db-cloud, sybase, ntp-base, ms-rdp, ms-ds-smbv3, osisoft-pi-v3, unknown-udp, unknown-tcp, insufficient-data, incomplete, splunk, ssh, paloalto-shared-services))
| stats count by index, src_ip, dest_ip, app, action 
| where action="allowed" 
| table _time, index, src_ip, dest_ip, app, action, count 
| sort - count