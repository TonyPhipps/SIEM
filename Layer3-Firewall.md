See [Analysis Types](https://github.com/TonyPhipps/SIEM/wiki/Analysis-Types) for further explanation.

All IOC/Tactics listed assume there will be some whitelisting required to eliminate false positives unique to any environment.

| Description                                               | Type            | Notes          | 
|-----------------------------------------------------------|-----------------|----------------| 
| Abnormal traffic from printers to servers/workstations    | Aggregate Count |                | 
| Abnormal traffic from servers to workstations             | Aggregate Count |                | 
| DNS (53) requests to non-company IP address               | Blacklist Alert | DNS Tunnelling | 
| NTP (123) requests to non-company servers                 | Blacklist Alert |                | 
| OS update requests to non-company servers                 | Blacklist Alert |                | 
| Web requests directly to IP Address (versus domain names) | Blacklist Alert |                | 




