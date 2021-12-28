- [Endpoint Segmentation](#endpoint-segmentation)
- [Threat Intelligence-Based Blocking](#threat-intelligence-based-blocking)
- [Services](#services)
  - [Remote Desktop Protocol](#remote-desktop-protocol)
- [Maintain Network Documentation](#maintain-network-documentation)
- [Resources](#resources)

# Endpoint Segmentation
Implement and ensure robust network segmentation between networks and functions to reduce the spread of the ransomware. Define a demilitarized zone that eliminates unregulated communication between networks.
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

# Threat Intelligence-Based Blocking
Filter network traffic to prohibit ingress and egress communications with known malicious IP addresses. 
- Ideally performed automatically with a curated threat intelligence feed, but also allowing for management of a manual block/allowlist.

# Services
## Remote Desktop Protocol
- RDP was designed to be used internally and should never be exposed to the Internet. Instead, expose VPN to the Internet and make RDP accessible internally only.
  - After assessing risks, if RDP is deemed operationally necessary, restrict the originating sources and require multi-factor authentication.

# Maintain Network Documentation
Develop/update network maps to ensure a full accounting of all equipment that is connected to the network.
  - Remove any equipment from networks that is not required to conduct operations to reduce the attack surface malicious actors can exploit.  


# Resources
- Mandiant Whitepaper: Ransomware Protection and Containment Strategies
  - https://www.fireeye.com/content/dam/fireeye-www/current-threats/pdfs/wp-ransomware-protection-and-containment-strategies.pdf