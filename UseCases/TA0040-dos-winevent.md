# Executive Summary

Windows event logs may provide early detection of denial of service, as many logs are recorded by the operating system during denial of service activity.


## Name

Detect Denial of Service via Windows Events


## Problem Statement

Adversaries may stop or disable services on a system to render those services unavailable to legitimate users. Stopping critical services can inhibit or stop response to an incident or aid in the adversary's overall objectives to cause damage to the environment.

Systems may be shut down or restarted repeatedly to affect the availability of services.


## Objectives

- Detect when a running service is stopped or crashed by an adversary.
- Determine when a system is shut down or rebooted by an adversary.


## Compliance

.


## Mitre ATT&CK Framework

- Impact https://attack.mitre.org/tactics/TA0040/
- Denial of Service https://attack.mitre.org/techniques/T1499/
- Service Stop https://attack.mitre.org/techniques/T1489/


## Assumptions and Limitations

- Services may crash unexpectedly due to benign actions or events.
- Services may be stopped during troubleshooting by legitimate, authorized users/accounts.


# Analysis

Adversaries may attempt to disable individual services of high importance to an organization, such as MSExchangeIS to eliminate impact Exchange services. In some cases, adversaries may stop or disable many or all services to render systems unusable. Modification, deletion, and encryption of data are possible ulterior motives.


## Monitoring and Notifications

.


## Recommended Response Action(s)

- Contact account or service owner to determine if the change was documented and authorized.
- Consider starting the service again and monitoring the result.
- Determine other running processes.
- Collect and analyze any recent and current logon sessions on the affected system.
- Collect and analyze surrounding events on all recorded log sources.
- Consider issuing password change requirement to the account owner.
- Consider quarantining, isolating, or disabling compromised accounts/systems.



# Engineering

.


## Component Names

.


## Data Stream Analysis

- Windows Security Event ID 7034
- Windows Security Event ID 7036
- Windows Application Event ID 3000
- Windows Application Event ID 3001
- Windows System Event ID 1074


## Assurance Metrics

- Stop a monitored service.
- Shutdown or restart a monitored system.