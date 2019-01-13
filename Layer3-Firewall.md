| Description                                               | [Technique](/Detection-Methods.md) | Notes          |
| --------------------------------------------------------- | ------------------------------------------------------- | -------------- |
| Traffic from printers to servers/workstations             | Aggregate Count                                         |                |
| Traffic from servers to workstations                      | Aggregate Count                                         |                |
| DNS (53) requests to non-company IP address               | Blacklist Alert                                         | DNS Tunnelling |
| NTP (123) requests to non-company servers                 | Blacklist Alert                                         |                |
| OS update requests to non-company servers                 | Blacklist Alert                                         |                |
| Web requests directly to IP Address (versus domain names) | Blacklist Alert                                         |                |
| Newly observed destination port                           | Rolling Whitelist Alert                                 |                |
| Known-bad port observed                                   | Blacklist Alert                                         |                |
| Known-bad IP address observed                             | Blacklist Alert                                         |                |
| Newly observed UDP Traffic                                | Rolling Whitelist Alert                                 |                |

