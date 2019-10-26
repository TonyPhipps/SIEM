# Event Feed and Priority

The following is a prioritized list of recommended event logs to collect into your SIEM (ordering should be customized per organization and is subject to change here). 

- DHCP Leases
- DNS Queries (with endpoint name/IP)
- Active Directory / LDAP Logs
- Egress Firewall Traffic
- Web Proxy Requests
- VPN Authentication
- Security Product Alerts
- Windows Event Logs
- Linux auditd Logs
- Email
- Custom Application Logs
- Layer 7 Firewall
- Layer 3 Firewall
- Netflow
- Full packet capture

The priority here takes into consideration
- Common attack vectors 
- Common detection sources
- Expected noise levels
- Legal precedence on what adequate security monitoring includes
- Raw space consumption