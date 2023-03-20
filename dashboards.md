These dashboard/widget suggestions are high level, meant to be used to get off on the right foot and to inspire further development.

## Long Tail Analysis
- All should be displayed as count of aggregated events in a bar charts.
- Generally, the purpose is to identify unique occurrences in a data set visually, by inspecting the "Long Tail" of unique events.
- The most interesting events here are the unique items at the end of the chart, but sometimes can be the largest items at the beginning.

| Data Source            | Filters                                      | Agregated Columns                |
| ---------------------- | -------------------------------------------- | -------------------------------- |
| Host-Based IPS         |                                              | Threat Source Process Name       |
| Host-Based IPS         |                                              | Detecting Hostname               |
| Host-Based IPS         |                                              | Threat Source Username           |
| Data Loss Protection   |                                              | Destination/Device Type          |
| Rogue System Deteciton |                                              | Hostname                         |
| Virus Engine           |                                              | Alert Name                       |
| Virus Engine           |                                              | Process Name                     |
| Firewall               | Outbound connections on uncommon ports       | Destination IP, destination port |
| Web Proxy              | Web Traffic                                  | Destination Domain               |
| Firewall               | Outbound SMTP traffic NOT from Mail gateways | Destination, Port                |
| Firewall               | Inbound Blocks                               | Source, Destination, Port        |
| Firewall               | Outbound Blocks                              | Source, Destination, Port        |
| Windows Event Logs     | Non-Interactive logon on User accounts       | Username                         |
| Windows Event Logs     | Interactive Logon on Privileged Accounts     | Username                         |
| Windows Event Logs     | Interactive logon on Service accounts        | Username                         |
| Web Proxy              | Interaction with IP addresses (not a domain) | Full URL                         |
| Network Appliances     | Change-notification on Cisco devices         | Username                         |
| Web Server             | Web Request 200, 404                         | Requested Address                |
| Windows Event Logs     | Service or Schedule Task Creation            | Service or Task Name, Filepath   |

