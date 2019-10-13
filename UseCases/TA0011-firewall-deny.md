# Executive Summary

Adversarial compromises that go undetected by existing security software may seek to establish a command and control channel to communicate with systems under their control within a victim network. Adversaries commonly attempt to mimic normal, expected traffic to avoid detection. However, a properly configured firewall allowing only necessary outbound traffic is likely to reveal signs of endpoint infection in the "deny" logs.

# Name
Detect Command and Control via Firewall Deny Events

# Problem Statement

Command and control may be blocked inherently by a properly configured firewall, but still present no obvious alarm or warning, as is expected with other security products. If a user were to work from another location, the corporate firewall would no longer be in place to block the command and control traffic.

# Objectives

Bring attention to any of the following events:

- A source system incurs an abnormally high number of firewall denies
- A destination system incurs an abnormally high number of firewall denies

# Compliance

## MITRE ATT&CK
- Command and Control https://attack.mitre.org/tactics/TA0011/

# Assumptions and Limitations

* Firewall deny events from a Layer 3 firewall appliance are insufficient on their own for determining if a system is infected. Additional logs/investigation will nearly always be required to gain context and improve determination confidence. 


# Analysis

A spike in firewall denies from a single source or to a single destination may indicate malware beaconing to a command and control server.

# Monitoring and Notifications



# Recommended Response Action(s)

- Determine basic information on the source system and owner
- Determine basic information on the destination system and owner

# Engineering



# Component Names



# Data Stream Analysis

- Source Event: Firewall Deny

# Assurance Metrics

* From behind the log-sourced firewall, simulate traffic that will be blocked.