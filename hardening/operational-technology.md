- [Disconnect the PLC from the public-facing internet](#disconnect-the-plc-from-the-public-facing-internet)
- [If remote access is required, implement a network proxy, gateway, firewall, and/or virtual private network (VPN) in front of the PLC to control network access.](#if-remote-access-is-required-implement-a-network-proxy-gateway-firewall-andor-virtual-private-network-vpn-in-front-of-the-plc-to-control-network-access)
- [Strictly control network access to PLC devices](#strictly-control-network-access-to-plc-devices)
- [For controllers with a physical mode switch, place the physical mode switch into run position to prevent remote modification.](#for-controllers-with-a-physical-mode-switch-place-the-physical-mode-switch-into-run-position-to-prevent-remote-modification)
- [For devices that allow for software key switching, enable programming protection in PLC configuration software](#for-devices-that-allow-for-software-key-switching-enable-programming-protection-in-plc-configuration-software)
- [Create and test strong backups of the logic and configurations of PLCs.](#create-and-test-strong-backups-of-the-logic-and-configurations-of-plcs)
- [Implement multifactor authentication (MFA)](#implement-multifactor-authentication-mfa)
- [Configure external and internal firewall](#configure-external-and-internal-firewall)
- [Disable any unused authentication methods, logic, or features](#disable-any-unused-authentication-methods-logic-or-features)
- [Monitor asset management systems for device configuration changes](#monitor-asset-management-systems-for-device-configuration-changes)
- [Monitor the content of network traffic for the following](#monitor-the-content-of-network-traffic-for-the-following)
- [Ensure device passwords are complex, unique combinations of letters, numbers, and symbols that are not easily guessable.](#ensure-device-passwords-are-complex-unique-combinations-of-letters-numbers-and-symbols-that-are-not-easily-guessable)
- [Place physical and software key switches into the run position to block unauthorized changes to logic, configuration, and firmware.](#place-physical-and-software-key-switches-into-the-run-position-to-block-unauthorized-changes-to-logic-configuration-and-firmware)
- [Practice and maintain the ability to operate OT systems manually.](#practice-and-maintain-the-ability-to-operate-ot-systems-manually)
- [Review project files running on PLCs for unauthorized changes](#review-project-files-running-on-plcs-for-unauthorized-changes)
- [Plan for end-of-life (EOL) replacements when possible](#plan-for-end-of-life-eol-replacements-when-possible)


# Disconnect the PLC from the public-facing internet
Safely allow remote access. Remove inbound port exposure so the OT system is never directly exposed to the internet or external networks, and to ensure all access is mediated, monitored, and controlled. Do this through a secure gateway (jump host) that brokers the connection.
- Ensure cellular modems, used for remote field connectivity and access, are secured with strong authentication and updated.
- Enable logs for the connected modems to detect intrusion and improve incident response speed.


# If remote access is required, implement a network proxy, gateway, firewall, and/or virtual private network (VPN) in front of the PLC to control network access.
- A VPN or gateway device can enable MFA for remote access even if the PLC does not support MFA. Implement security rules on these higher-level network security mechanisms that prevent the type of repeated and sustained login attempts that would be seen during a brute force attack. When possible, implement a device control list for workstations sending messages or connecting to OT components.
- Use the device control list to monitor for logon activity for unexpected or unusual access to devices from the internet.
Keep PLC devices updated with the latest software patches by the manufacturer. Use established downtime windows to install patches. Known Exploited Vulnerabilities may need to be prioritized outside a downtime window.


# Strictly control network access to PLC devices
- Configure firewall rules or access control list (ACL) security features on PLCs or programmable controllers to allow only authorized communications between expected control system devices. Block access from unauthorized or threat actor-controlled IP addresses, such as those associated with hosting providers


# For controllers with a physical mode switch, place the physical mode switch into run position to prevent remote modification.
Devices should only be in the program or remote position when updating or downloading software online and immediately switched back to the run position when complete. (See Rockwell’s2 System Security Design Guidelines for manufacturer’s instructions.)


# For devices that allow for software key switching, enable programming protection in PLC configuration software
Limit who can modify PLCs remotely. (See Siemens’ Cybersecurity for Industry Operational Guidelines for the manufacturer’s instructions.)


# Create and test strong backups of the logic and configurations of PLCs.
Store backup files offline and secure the physical removal media to enable fast recovery.


# Implement multifactor authentication (MFA)
For access to the OT network from an external network.


# Configure external and internal firewall
- to block traffic using common ports associated with network protocols that are unnecessary for the particular network segment.


# Disable any unused authentication methods, logic, or features
Such as default authentication keys, as well as unused or needed services such as Teletype Network (Telnet), File Transfer Protocol (FTP), Remote Desktop Protocol (RDP), Virtual Network Computing (VNC), and web services.


# Monitor asset management systems for device configuration changes
These can be used to understand expected parameter settings.


# Monitor the content of network traffic for the following
- Unusual logins to internet-connected devices or unexpected protocols to/from the internet.
- Functions of industrial control systems (ICS) management protocols that change an asset’s operating mode or modify programs.


# Ensure device passwords are complex, unique combinations of letters, numbers, and symbols that are not easily guessable. 
- Implementing robust password practices remains a critical security measure that can help prevent unauthorized access and strengthen the overall security posture of OT devices.


# Place physical and software key switches into the run position to block unauthorized changes to logic, configuration, and firmware.
- Devices should only be in the program or remote position when updating or downloading software online and immediately switched back to the run position when complete. (See Rockwell Automation’s System Security Design Guidelines for manufacturer’s instructions.)
  - Prior to switching the device to run mode, review and validate project files, as changing modes will lock in the current project file downloaded to the device.


# Practice and maintain the ability to operate OT systems manually. 
- The capability for organizations to revert to manual controls to quickly restore operations is vital in the immediate aftermath of an incident. Business continuity and disaster recovery plans, fail-safe mechanisms, islanding capabilities, software backups, and standby systems should all be routinely tested to ensure safe manual operations in the event of an incident.


# Review project files running on PLCs for unauthorized changes
- Use vendor provided integrity checking tools and visually compare the running program to known good logic. Ensure reusable logic and input/output configurations are valid.
  - If restoring backups, verify the backup does not contain malicious logic before deployment.
  - Review logs and configurations on all connected devices, including modems, HMIs, and workstations, to assess potential lateral movement by threat actors. If it appears the actors connected to additional devices, reimage these devices to remove any potential malicious changes or access tools.


# Plan for end-of-life (EOL) replacements when possible
- When a hardware device is EOL, the manufacturer no longer sells the product and is not actively supporting the hardware, which also means they are no longer releasing software updates or security patches for the device. Since EOL devices no longer receive security updates, they are routinely targeted by MCAs.
  - Maintain a rolling 12-month EOL forecast, reviewed quarterly with owners and procurement.
  - Track EOL systems by product, owner, location, and retirement date.
  - Replace or isolate EOL assets; if delays occur, apply compensating controls with firm decommission dates.

