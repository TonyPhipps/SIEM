Running malware in a lab environment demands some sort of firewall protection, which pfSense provides well and cheaply.

# Virtualization Recommended Settings
- 1GB Memory
- 1 Virtual processor
- 4GB Hard drive
- Provide two network interfaces - one joined to a Private Network, one joined to the External Network (if you wish to connect to the real world)


# Installation
- Literally accepting every default is fine and fast.


# Initial Setup
- Assign WAN to the interface tied to External Network (use the MAC to verify, or unplug the interface)
- Assign LAN to the internface tied to Private Network (use the MAC to verify, or unplug the interface)
- You may need to assign a static IP to the LAN interface (option 2), like 192.168.2.1
  - When asked if you want to enable DHCP, say Yes
  - When asked if you want to revert to HTTP as the webConfigurator protocol, say No.
- Now you can use the virtual hosts on the internal network to access the web interface via the LAN IP.
  -   Default username: admin 
  -   Default password: pfsense
- Using the web interface, navigate to Services > DHCP Server and provide DNS servers
  - 1.1.1.1
  - 9.9.9.9
  - 8.8.8.8
- Navigate to Advanced > Admin Access
  - Ensure Protocol is set to HTTPS
  - Ensure SSH is enabled

# Suricata Setup
- Install the Suricata package at System > Package Manager
- Services > Suricata
  - Global Settings
    - Enable "Install ETOpen Emerging Threats rules"
    - Enable "Install Snort GPLv2 Community rules"
    - Set update interval to 1 day
    - Enable "Live Rule Swap on Update"
  - Updates
    - Click Update to perform an update