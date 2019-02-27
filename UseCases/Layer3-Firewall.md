| Description                                                                                   | [Method](/Detection-Methods.md) | Notes          |
| --------------------------------------------------------------------------------------------- | ------------------------------- | -------------- |
| Traffic from printers to servers/workstations                                                 | Blacklist Alert                 |                |
| Traffic from servers to workstations                                                          | Blacklist Alert                 |                |
| Egress DNS (53) traffic from anything other than internal DNS servers                         | Blacklist Alert                 | DNS Tunnelling |
| Egress NTP (123) traffix from anything other than internal NTP servers                        | Blacklist Alert                 |                |
| OS Update Requests to Non-Company Servers                                                     | Blacklist Alert                 |                |
| Newly Observed Port Use                                                                       | Rolling Whitelist Alert         |                |
| Known-bad port observed                                                                       | Blacklist Alert                 |                |
| Known-bad IP address observed                                                                 | Blacklist Alert                 |                |
| Newly observed UDP Traffic                                                                    | Rolling Whitelist Alert         |                |
| Spike in Outbound Denies                                                                      | Threshold Alert                 |                |
| Spike in Egress Sessions                                                                      | Threshold Alert                 |                |
| Anomalous Upload/Download Ratio                                                               | Threshold Alert                 |                |
| Egress Email Traffic (25, 143, 587, 110, etc) from anything other than internal Email servers | Blacklist Alert                 |                |



