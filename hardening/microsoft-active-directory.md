- [Windows Firewall](#windows-firewall)
- [RDP](#rdp)
- [Microsoft  Local Administrator Password Solution (LAPS)](#microsoft--local-administrator-password-solution-laps)
- [Least Privilege and Tiered Admin](#least-privilege-and-tiered-admin)
- [Service Account Restrictions](#service-account-restrictions)
- [Protected Users Security Group](#protected-users-security-group)
- [Eliminate Older Operating Systems](#eliminate-older-operating-systems)
- [Set GPO to Reprocess Even if Not Changed](#set-gpo-to-reprocess-even-if-not-changed)
- [Group Managed Service Accounts](#group-managed-service-accounts)
- [Additional Resources](#additional-resources)

# Windows Firewall
- Maintain at least a workstation and server Group Policy Object (GPO) to control the Windows Firewall
  - Computer Configuration > Policies > Windows Settings > Security Settings > Windows Firewall with Advanced Security
    - Generally, it is best to limit the following scenarios
      - Workstation-to-workstation communication
      - Server-to-server communication
      - Server-to-workstation communication
    - At a minimum, consider restrict the following ports where possible
      - Server Message Block (SMB) (TCP/445, TCP/135, TCP/139)
      - Remote Desktop Protocol (RDP) (TCP/3389)
      - Windows Remote Management (WinRM) (TCP/80, TCP/5985, TCP/5986)
      - Windows Management Instrumentation (WMI) (Dynamic/DCOM)
    - Consider setting "Apply local firewall rules" and "Apply local connection security rules" to "No" for all profiles

# RDP
-  Network Level Authentication (NLA) provides an extra layer of pre-authentication before a connection is established. NLA is also useful for protecting against brute force attacks, which often target open internet-facing RDP servers
   - Computer Configuration > Policies > Administrative Templates > Windows Components > Remote Desktop Services > Remote Desktop Session Host > Security > Require user authentication for remote connections by using Network Level Authentication


# Microsoft  Local Administrator Password Solution (LAPS)
- Deploy LAPS to avoid having the same local administrator password on every system on the network. Otherwise, adversary pivoting from a compromised system is extremely simplified.
  - https://www.microsoft.com/en-us/download/details.aspx?id=46899


# Least Privilege and Tiered Admin
- Maintain and enforce use of separate user and admin accounts.
- Maintain separate admin accounts for workstations, servers, and domain admin use to minimize lateral movement that traverses system types. As a result, any attempted use of an account in the wrong environment is an immediate red flag.


# Service Account Restrictions
- Restrict service accounts to their absolute minimum rights to perform their tasks. Most of the settings below can be set on one or more service account
  - Deny access to this computer from the network
  - Deny log on as a batch job
  - Deny log on locally
  - Deny log on through Terminal Services
- All settings above can be found at the GPO path below
  - Computer Configuration > Policies > Windows Settings > Security Settings > Local Policies > User Rights Assignment
- Service accounts that can be restricted to a single system can have this enforced via the Active Directory account's properties > Account Tab > "Log On To" button


# Protected Users Security Group
- Microsoft Windows 8.1 and Microsoft Windows Server 2012 R2 and above have this group, which applies the following restrictions to the member accounts. 
  - The Kerberos ticket granting ticket (TGT) expires after 4 hours, rather than the normal 10-hour default setting.
  - Only Kerberos authentication is used (NTLM authentication is disabled).
  - Cached credentials are blocked (Domain Controller must be accessible to authenticate).
  - WDigest authentication is disabled.
  - Kerberos with AES encryption will be enforced for pre-authentication.
  - The "Account is sensitive and cannot be delegated" setting, as seen in Active Directory Users and Computers, is enforced.
  - Note: requires domain functional level to be Windows Server 2012 R2 or higher.
  - Note: NO service account should be added to the “Protected Users” security group as authentication will fail.
  - https://docs.microsoft.com/en-us/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/dn466518(v=ws.11)?redirectedfrom=MSDN


# Eliminate Older Operating Systems
- Find any means necessary to eliminate Windows 7 / Server 2008 and older systems from the network.
- For any unavoidable older OS's, apply some additional restrictions
  - Computer Configuration > Policies > Administrative Templates > MS Security Guide > WDigest Authentication > DISABLE


# Set GPO to Reprocess Even if Not Changed
- Many attackers will manually change settings on endpoints by directly modifying the registry. Even on endpoints where registry settings are automatically set via GPO it is recommended to enforce the Group Policy settings and configure automatic policy reprocessing for the configured settings on an automated basis.
  - Computer Configuration > Policies > Administrative Templates > System > Group Policy > Configure **security** policy processing–Enabled - Process even if the GPOs have not changed
  - Computer Configuration > Policies > Administrative Templates > System > Group Policy > Configure **registry** policy processing–Enabled - Process even if the GPOs have not changed

# Group Managed Service Accounts
- https://docs.microsoft.com/en-us/windows-server/security/group-managed-service-accounts/group-managed-service-accounts-overview
- https://blog.stangroome.com/2013/07/28/avoid-password-management-with-group-managed-service-accounts/



# Additional Resources
- Mandiant Whitepaper: Ransomware Protection and Containment Strategies
  - https://www.fireeye.com/content/dam/fireeye-www/current-threats/pdfs/wp-ransomware-protection-and-containment-strategies.pdf
- SANS course and public materials
- https://docs.microsoft.com/en-us/windows-server/identity/securing-privileged-access/securing-privileged-access-reference-material
- https://docs.microsoft.com/en-us/security/compass/privileged-access-access-model
