# Executive Summary

A compromise that has gone undetected by existing security software may result in external communications attempts to perform further discovery, lateral movement, data exfiltration, or command and control, or to cause availability impact. Adversaries commonly attempt to mimic normal, expected traffic to avoid detection. However, a securely configured firewall is likely to reveal signs of endpoint infection in the "deny" logs.

# Name
Detect Adversarial Activity via Firewall Deny Events

# Problem Statement

Adversarial activity may indeed be blocked inherently by a properly secured firewall. However, such events often go unnoticed due to lack of alarming, as is expected with other security products. If a user were to work from another location, the corporate firewall would no longer be in place to block the command and control traffic.

# Objectives

Bring attention to any of the following events:

- A source system incurs an abnormally high number of firewall denies.
- A destination system incurs an abnormally high number of firewall denies.

# Compliance

## MITRE ATT&CK

- Discovery https://attack.mitre.org/tactics/TA0007/
- Lateral Movement https://attack.mitre.org/tactics/TA0008/
- Exfiltration https://attack.mitre.org/tactics/TA0010/
- Command and Control https://attack.mitre.org/tactics/TA0011/
- Impact https://attack.mitre.org/tactics/TA0040/

# Assumptions and Limitations

* Firewall deny events from a Layer 3 firewall appliance are insufficient on their own for determining if a system is infected. Additional logs/investigation will nearly always be required to gain context and improve determination confidence. 


# Analysis

A spike in firewall denies from a single source or to a single destination may indicate malware beaconing to a command and control server.

# Monitoring and Notifications



# Recommended Response Action(s)

- Collect basic information on the source system and owner.
- Collect basic information on the destination system and owner.
- Perform triage on systems suspect of compromise.


# Engineering



# Component Names



# Data Stream Analysis

- Source Event: Firewall Deny

# Assurance Metrics

* From behind the log-sourced firewall, simulate traffic that will be blocked.