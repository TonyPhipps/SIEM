# Endpoint Segmentation
- Endpoints should NOT be allowed to communicate with each other unless absolutely necessary. This peer-level communication can be controlled via [Private VLANs](https://en.wikipedia.org/wiki/Private_VLAN) (AKA port isolation) on switches.
  - Generally, it is best to limit the following scenarios
      - Workstation-to-workstation communication
      - Server-to-server communication
      - Server-to-workstation communication
    - At a minimum, consider restrict the following ports where possible
      - Server Message Block (SMB) (TCP/445, TCP/135, TCP/139)
      - Remote Desktop Protocol (RDP) (TCP/3389)
      - Windows Remote Management (WinRM) (TCP/80, TCP/5985, TCP/5986)
      - Windows Management Instrumentation (WMI) (Dynamic/DCOM)

# Services
## Remote Desktop Protocol
- RDP was designed to be used internally and should never be exposed to the Internet. Instead, expose VPN to the Internet and make RDP accessible internally only.


# Resources
- Mandiant Whitepaper: Ransomware Protection and Containment Strategies
  - https://www.fireeye.com/content/dam/fireeye-www/current-threats/pdfs/wp-ransomware-protection-and-containment-strategies.pdf