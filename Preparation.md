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
- Network Architecture
- Authorized Users and Groups
- Account and Device Naming Conventions
- Disaster Recovery Plan
- Business Continuity Plan
- Change Management Process
- Acceptable Use Policy
- Data Classification and Protection

# Temporal Documentation
- Vulnerability Scan Reports

# Logging
- [Logging Priorities and Considerations](/Logging.md)
- What log sources are available immediately?
- What log sources can we work on down the road?

# Leverageable Systems
Incident Response may benefit greatly from logs, read access, write access, API access, etc. from various systems. IR may benefit from systems that are not inherently security-focused, such as DHCP logs/access for tying IP addresses to a hostname through lease details live or in a specific time period.

- Active Directory
- File Servers
- Print Servers
- DNS
- DHCP
- MFA
- IDPS/IDS
- Firewall
- Web Proxy
- Domain Controllers
- EDR
- Email
- VPN
- Secure File Sharing
- Switches
- Routers
- Door Access Systems
- Privileged Account Management
- Other network appliances
- Other servers
- Third-party services
- Third-party VPN
- What systems can the Incident Response be granted access to for investigation/response? (noting response usually requires "write" access)
