- [Disconnect the PLC from the public-facing internet](#disconnect-the-plc-from-the-public-facing-internet)
- [For controllers with a physical mode switch, place the physical mode switch into run position to prevent remote modification.](#for-controllers-with-a-physical-mode-switch-place-the-physical-mode-switch-into-run-position-to-prevent-remote-modification)
- [For devices that allow for software key switching, enable programming protection in PLC configuration software](#for-devices-that-allow-for-software-key-switching-enable-programming-protection-in-plc-configuration-software)
- [Create and test strong backups of the logic and configurations of PLCs.](#create-and-test-strong-backups-of-the-logic-and-configurations-of-plcs)
- [Implement multifactor authentication (MFA)](#implement-multifactor-authentication-mfa)
- [If remote access is required, implement a network proxy, gateway, firewall, and/or virtual private network (VPN) in front of the PLC to control network access.](#if-remote-access-is-required-implement-a-network-proxy-gateway-firewall-andor-virtual-private-network-vpn-in-front-of-the-plc-to-control-network-access)
- [Configure external and internal firewalls to block traffic using common ports associated with network protocols that are unnecessary for the particular network segment.](#configure-external-and-internal-firewalls-to-block-traffic-using-common-ports-associated-with-network-protocols-that-are-unnecessary-for-the-particular-network-segment)
- [Disable any unused authentication methods, logic, or features](#disable-any-unused-authentication-methods-logic-or-features)
- [Monitor asset management systems for device configuration changes](#monitor-asset-management-systems-for-device-configuration-changes)
- [Monitor the content of network traffic for the following](#monitor-the-content-of-network-traffic-for-the-following)

# Disconnect the PLC from the public-facing internet
Safely allow remote access. Remove inbound port exposure so the OT system is never directly exposed to the internet or external networks, and to ensure all access is mediated, monitored, and controlled. Do this through a secure gateway (jump host) that brokers the connection.
- Ensure cellular modems, used for remote field connectivity and access, are secured with strong authentication and updated.
- Enable logs for the connected modems to detect intrusion and improve incident response speed.


# For controllers with a physical mode switch, place the physical mode switch into run position to prevent remote modification.
Devices should only be in the program or remote position when updating or downloading software online and immediately switched back to the run position when complete. (See Rockwell’s2 System Security Design Guidelines for manufacturer’s instructions.)


# For devices that allow for software key switching, enable programming protection in PLC configuration software
Limit who can modify PLCs remotely. (See Siemens’ Cybersecurity for Industry Operational Guidelines for the manufacturer’s instructions.)


# Create and test strong backups of the logic and configurations of PLCs.
Store backup files offline and secure the physical removal media to enable fast recovery.


# Implement multifactor authentication (MFA)
For access to the OT network from an external network.


# If remote access is required, implement a network proxy, gateway, firewall, and/or virtual private network (VPN) in front of the PLC to control network access.
- A VPN or gateway device can enable MFA for remote access even if the PLC does not support MFA. Implement security rules on these higher-level network security mechanisms that prevent the type of repeated and sustained login attempts that would be seen during a brute force attack. When possible, implement a device control list for workstations sending messages or connecting to OT components.
- Use the device control list to monitor for logon activity for unexpected or unusual access to devices from the internet.
Keep PLC devices updated with the latest software patches by the manufacturer. Use established downtime windows to install patches. Known Exploited Vulnerabilities may need to be prioritized outside a downtime window.


# Configure external and internal firewalls to block traffic using common ports associated with network protocols that are unnecessary for the particular network segment.


# Disable any unused authentication methods, logic, or features
Such as default authentication keys, as well as unused or needed services such as Teletype Network (Telnet), File Transfer Protocol (FTP), Remote Desktop Protocol (RDP), Virtual Network Computing (VNC), and web services.


# Monitor asset management systems for device configuration changes
These can be used to understand expected parameter settings.


# Monitor the content of network traffic for the following
- Unusual logins to internet-connected devices or unexpected protocols to/from the internet.
- Functions of industrial control systems (ICS) management protocols that change an asset’s operating mode or modify programs.
