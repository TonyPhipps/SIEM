Articles of interest that may be leveraged for improvements in Cybersecurity (technology, policies, staffing,  budget, etc).

# 2026


## 2026-07 to 08 - FBI & CISA: Water Utilities Targeted in 7 States, Protect PLCs Now

(July 30 & 31, and August 1 & 3, 2026)

Following cyberattacks that disrupted the control systems of 30+ water utilities in Minnesota on July 26 & 27, the FBI published a public service announcement on July 30 stating that seven US states in total had reported incidents affecting the Water and Wastewater Sector (WWS). Both the FBI statement and a simultaneous alert from the US Cybersecurity and Infrastructure Security Agency (CISA) urge that programmable logic controllers (PLCs) be removed from public internet exposure, especially Rockwell Automation MicroLogix 1100 and 1400 series that have been specifically targeted. The FBI explains that attackers remotely accessed internet-accessible PLCs before changing the IP addresses and passwords, which "result[ed] in a loss of monitoring and control functionality," as well as "loss of pressure and flooding;" CISA notes that the attacks led to "boil water notices and sustained manual operations." CISA also warns that "this targeting activity includes cellular modems installed by operators, vendors, or system integrators that may not be documented or included in routine attack surface scans," and the FBI notes that vulnerable third-party network setups applied across multiple sites can put them all at risk. The agencies recommend that organizations disconnect PLCs from the internet and strictly mediate and monitor all network access with VPNs, gateways, and firewalls; harden and restrict access to cellular modems; rotate and strengthen passwords; switch devices into run mode; practice and prepare for manual operation of OT systems; check PLC project files; and plan the replacement of EOL devices. Neither agency has confirmed attribution of the attacks, nor specified which six states beyond Minnesota have been impacted, but SecurityWeek and The Register note reports that indicate Michigan, South Dakota, and Georgia may be among those recently targeted.
- [www.fbi.gov](https://www.fbi.gov/investigate/cyber/alerts/2026/malicious-cyber-actors-targeting-water-and-wastewater-sector-internet--facing-programmable-logic-controllers-causing-operational-disruptions): Malicious Cyber Actors Targeting Water and Wastewater Sector Internet- Facing Programmable Logic Controllers, Causing Operational Disruptions
- [www.cisa.gov](https://www.cisa.gov/news-events/alerts/2026/07/30/cisa-urges-water-and-wastewater-systems-sector-protect-ot-against-activity-targeting-plcs): CISA Urges Water and Wastewater Systems Sector to Protect OT Against Activity Targeting PLCs
- [www.securityweek.com](https://www.securityweek.com/us-water-cyberattacks-extend-beyond-minnesota-to-at-least-6-other-states): US Water Cyberattacks Extend Beyond Minnesota to at Least 6 Other States
- [www.theregister.com](https://www.theregister.com/security/2026/08/03/georgia-michigan-say-water-systems-hacked-by-iran-tied-crew/5282262): Water system cyberattacks spread to Georgia, Michigan amid US-Iran conflict
- [www.darkreading.com](https://www.darkreading.com/ics-ot-security/minnesota-water-utility-attacks-expose-sector-cyber-risks): Minnesota Water Utility Attacks Expose Sector's Cyber-Risks
- [www.bleepingcomputer.com](https://www.bleepingcomputer.com/news/security/cisa-warns-of-cyberattacks-disrupting-us-water-utilities): CISA warns of cyberattacks disrupting U.S. water utilities
- [www.nextgov.com](https://www.nextgov.com/cybersecurity/2026/07/cisa-urges-water-utilities-take-exposed-systems-down-after-minnesota-hacks/415142): CISA urges water utilities to take exposed systems down after Minnesota hacks
- [therecord.media](https://therecord.media/cisa-warns-of-spike-in-water-system-attacks): CISA warns of spike in attacks on water systems as Minnesota incidents probed
- [www.wired.com](https://www.wired.com/story/security-news-this-week-7-states-water-systems-hit-by-cyberattacks-likely-tied-to-iran): Security News This Week: 7 States’ Water Systems Hit by Cyberattacks Likely Tied to Iran


# 2025


## 2026-07-01 - Lake Risevatnet Dam, Norway
- Entry Point: The attackers exploited a weak password on a web-accessible Human-Machine Interface (HMI) control panel that regulated the dam's minimum water flow. This internet-exposed control system lacked robust authentication, such as multi-factor authentication (MFA), allowing hackers to bypass security controls and gain direct access to the operational technology (OT) environment.

- Result: The attackers remotely opened a water discharge valve to 100% capacity for approximately four hours, causing an increased outflow of 497 liters per second above the mandated minimum flow. The breach was detected on April 7, 2025, by the dam's owner, Breivika Eiendom, and reported to Norwegian authorities (NSM, NVE, and Kripos) on April 10. Fortunately, the riverbed could handle up to 20,000 liters per second, so the additional flow did not cause physical damage or endanger public safety. The attack, attributed to the Russian hacktivist group Z-PENTEST (based on Telegram videos), exposed critical vulnerabilities in OT systems but did not lead to significant operational disruption, as the dam primarily serves a fish farm and is not connected to Norway's power grid.
- https://industrialcyber.co/industrial-cyber-attacks/lake-risevatnet-dam-hack-exposes-industrial-cyber-gaps-as-weak-passwords-risk-critical-infrastructure-attacks/


## Army of Russia Reborn (CARR) Attack on Muleshoe, Texas Water Facility
- Entry Point: Unauthorized access to HMIs, likely via internet-exposed interfaces, with attackers sharing screen recordings of manipulation on Telegram.

- Result: Water storage tanks overflowed, disrupting operations. The attack underscored vulnerabilities in small utilities with limited cybersecurity resources.


# 2024


## Ukraine Energy Company Attack (FrostyGoop Malware)

- Entry Point: Exploitation of Modbus TCP communications in publicly exposed devices, likely via internet-accessible ICS protocols.

- Result: Disruption of OT networks, causing a denial-of-service (DoS) condition. The malware targeted ENCO control devices but could affect any device using Modbus TCP, leading to operational malfunctions.


# 2023


## Municipal Water Authority of Aliquippa Attack (CyberAv3ngers)

- Entry Point: Exploitation of internet-accessible devices, likely Human-Machine Interfaces (HMIs), by an Iranian-backed hacktivist group.

- Result: Hackers gained control of a booster station, triggering an immediate alarm response. No significant operational disruption reported, but it highlighted vulnerabilities in under-resourced utilities.


## Fritzmeier Group Cyberattack
- Entry Point: Likely IT systems compromise, with details unspecified, leading to system shutdowns.

- Result: Production ran in emergency mode, with large parts still operational. External support and law enforcement were involved to restore systems.


## YKK Ransomware Attack (LockBit)

- Entry Point: Targeted U.S. networks, likely via ransomware exploiting IT system vulnerabilities.

- Result: The cybersecurity team contained the attack, preventing significant damage or data exfiltration. Operations continued with minimal impact.


# 2022


## KA-SAT Satellite Attack (Viasat)

- Entry Point: Attack on Viasat's satellite communication network, targeting ground segment infrastructure.

- Result: Caused a partial outage affecting internet access in Ukraine and other European countries. Indirectly impacted Enercon, a German wind power company, losing remote access to 5,800 wind turbines (11 GW capacity). No direct endangerment to turbines, as they operated automatically.


## DENSO Automotive Ransomware (Pandora Group)

- Entry Point: Ransomware exploiting IT network vulnerabilities, gaining unauthorized access.

- Result: 1.4 TB of proprietary data stolen, but operations were not significantly disrupted due to containment measures.


## Nordex Wind Turbine Cyberattack (Conti Group)

- Entry Point: Ransomware attack on IT systems, with remote access to wind turbines shut down to prevent spread.

- Result: Internal IT network was affected, but wind turbine operations were not directly disrupted due to proactive system shutdowns.


## Starlink Satellite Attacks (Russia-Ukraine Conflict)

- Entry Point: Jamming and spoofing attempts targeting satellite communication links, likely via ground segment vulnerabilities.

- Result: Exposed vulnerabilities in satellite communications during geopolitical conflict, but no major operational disruptions reported. Highlighted need for stronger cybersecurity protocols.


# 2021


## Oldsmar Water Treatment Facility Attack

- Entry Point: Remote access via TeamViewer software on an engineering workstation, likely due to weak access controls.

- Result: An attacker manipulated sodium hydroxide dosing rates, but the operator detected the change before any water was poisoned, averting harm.


# 2020


## JBS Meat Processing Ransomware Attack

- Entry Point: IT systems compromise, likely via ransomware exploiting IT network vulnerabilities, impacting OT systems.

- Result: The attack cost $11 million in ransom and halted slaughterhouse operations globally, from Australia to the U.S., disrupting the meat supply chain. Motive appeared to be revenge rather than profit.


## Norsk Hydro Ransomware Attack (LockerGoga)

- Entry Point: Phishing or exploitation of vulnerabilities in external remote services, targeting the IT network, which spread to the industrial network.

- Result: The attack impacted multiple global sites, costing $71 million. Production lines were shut down or switched to manual operations, disrupting manufacturing processes.


## Lion Beverage Manufacturer Ransomware (Sodinokibi)

- Entry Point: Likely phishing or vulnerabilities in IT systems, spreading to OT systems connected to production lines.

- Result: Systems were shut down for safety, halting operations from June 9 to June 26, with reduced capacity afterward. Significant operational disruption occurred.


## Stuxnet

- Entry Point: Stuxnet primarily spread through infected USB drives, exploiting zero-day vulnerabilities in Microsoft Windows (notably the LNK vulnerability, CVE-2010-2568). It targeted industrial control systems, specifically Siemens Step7 software used in programmable logic controllers (PLCs). The worm initially infected Windows systems in Iranian facilities, likely introduced via an infected USB drive by an unwitting employee or contractor. From there, it propagated across local networks, seeking out systems connected to Siemens PLCs controlling uranium enrichment centrifuges at Iran's Natanz facility.

- Result: Stuxnet's payload was designed to sabotage centrifuge operations by manipulating their speeds-causing them to spin erratically, leading to physical damage-while sending false feedback to operators to conceal the attack. It reportedly damaged or destroyed around 1,000 of Iran's 9,000 centrifuges at Natanz, significantly delaying Iran's nuclear enrichment program. The worm's stealth allowed it to operate undetected for months, but its eventual discovery raised global awareness of cyber warfare's potential to target critical infrastructure. Stuxnet also inadvertently spread beyond its target, infecting systems worldwide, though its payload only activated on specific Siemens configurations. No definitive attribution has been officially confirmed, but its complexity and targeting strongly point to state-sponsored actors.


