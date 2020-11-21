Note that [Active Directory](active-directory.md) GPO should be used as much as possible over individually targeting Windows systems.

# Windows Firewall
This can be controlled via [network](network.md) devices, Active Directory GPO, and/or via Windows Firewall directly on endpoints.
- Systems should NOT be allowed to communicate with each other or outbound to workstations unless absolutely necessary.
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

# User Account Control and Virtualization
- https://www.microsoftpressstore.com/articles/article.aspx?p=2228450&seqNum=9


# Credential Guard
- https://docs.microsoft.com/en-us/windows/security/identity-protection/credential-guard/credential-guard-requirements


# Limit Cached Credential Count
- HKEY_LOCAL_MACHINE\Software\Microsoft\Windows NT\Current Version\Winlogon\CachedLogonsCount

# Resources
- Mandiant Whitepaper: Ransomware Protection and Containment Strategies
  - https://www.fireeye.com/content/dam/fireeye-www/current-threats/pdfs/wp-ransomware-protection-and-containment-strategies.pdf