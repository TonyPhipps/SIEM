Seek to understand the holistic structure of the organization, its mission, its tolerance for risk, and its culture.

# Internal Points of Contact

- IT Support
- IT Architecture/Server Teams
- Asset Management
- Identity and Access Management
- Data Backup Administration
- Networking
- Hosting/Application Teams
- Database Administration
- Development Teams
- Computer Security-related teams
- Physical Security
- Human Resources
- Public Relations
- Legal Department

# External Points of Contact

- Internet Service Provider(s)
- Local law enforcement
- Product Vendor and Technical Support

# Regulatory and Compliance Mandates in Scope

What compliance mandates are required by law or internal policy? Which systems are in scope for each mandate?

- HIPAA
- PCI-DSS
- GLBA
- FISMA
- Sarbanes-Oxley Act
- GDPR
- Other Foreign laws
- NIST 800-53
- ISO/IEC 27002

# Crown Jewels

- What is the most sensitive data and where is it stored?
- Which are the most sensitive services and what infrastructure supports them?
- Which service accounts exist to support them?
- What are the permitted access methods?
- Who has authority to access these?
- What logs are available for monitoring?
- Which people would cause the most damage if they were socially engineered or their accounts were compromised or abused?

# Execution of Incident Management Procedures

- Port closure
- DNS Redirect/Black-hole
- VLAN isolation
- Internal device blocking/isolation
- Border device blocking/isolation
- Account disabling
- Active Directory
- VPN
- Other accounts not tied to active directory
- Seizure of devices
- Log collection of any of the above

# Existing Security Policies and Other Documentation

- Asset Inventory (Hardware and Software)
- Network Architecture Diagrams
- Assessment, Authorization, and Monitoring Policy
- Configuration Management Policy
- Awareness and Training Policy
- Access Control Policy
- Identification and Authentication Policy
- Contingency Planning Policy
- System and Information Integrity Policy
- [Incident Response Policy](/Incident-Response-Policy.md)
- Media Protection Policy
- Physical and Environmental Protection Policy
- Personnel Security Policy
- PII Policy
- System and Services Acquisition Policy

# Logging

- [Logging Priorities and Considerations](/Logging.md)
- What log sources are available immediately?
- What log sources can we work on down the road?
- What time zones are set on ingested logs? Is there an internal NTP server?

# Console Access
Incident Response may benefit greatly from access to various systems, including those not inherently security-focused.

- Active Directory
- File Servers
- Print Servers
- Cloud
- Virtualization
- DNS
- DHCP
- MFA
- HIPS
- IPS/IDS
- EDR
- AV
- Firewall
- NetFlow
- Web Proxy
- Domain Controllers
- EDR
- Email
- VPN
- File Sharing
- Switches
- Routers
- Door Access Systems
- Privileged Account Management System
- Service Management
- Third-party services
- Vulnerability Scanners


# Domain Controller Redundancy
- Ensure there is a domain controller that can be quickly taken offline in the need of an isolation to prevent rebuilding. Preferable one that holds FSMO roles. 
  - ```netdom query fsmo```


# Backups
- Ensure critical systems are backed up and NOT accessible from the network. Often connected backups are targeted for encryption or deletion.
- Ensure recent backups of GPO's exist.
  - ```backup-gpo -domain "domain.local" -all -path "c:\temp\gpo-backups"```
- Ensure the Directory Services Restore Mode (DSRM) password is set to a known value on all Domain Controllers. The steps will need to be initiated on each Domain Controller:
```
   PS C:\Windows\system32> ntdsutil
   C:\Windows\System32\ntdsutil.exe: set drsm password
   Reset DRSM Administrator Password: reset password on server null
   Please type password for DS Restore Mode Administrator Account: ***
   Please confirm new password: ***
   Password has been set successfully.
```
- Test recovery from backups at least annually for critical data, servers, and domains.


See Also:
- [Metrics](/Metrics.md)
- [Email Subscriptions](/Subscriptions.md)
- [RSS Feeds](/rss.md)
- [After Action Review](/After-Action-Review.md)

