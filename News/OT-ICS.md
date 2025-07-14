Articles of interest that may be leveraged for improvements in Cybersecurity (technology, policies, staffing,  budget, etc).

# 2025 - Lake Risevatnet Dam, Norway
- Entry Point: The attackers exploited a weak password on a web-accessible Human-Machine Interface (HMI) control panel that regulated the dam's minimum water flow. This internet-exposed control system lacked robust authentication, such as multi-factor authentication (MFA), allowing hackers to bypass security controls and gain direct access to the operational technology (OT) environment.

- Result: The attackers remotely opened a water discharge valve to 100% capacity for approximately four hours, causing an increased outflow of 497 liters per second above the mandated minimum flow. The breach was detected on April 7, 2025, by the dam's owner, Breivika Eiendom, and reported to Norwegian authorities (NSM, NVE, and Kripos) on April 10. Fortunately, the riverbed could handle up to 20,000 liters per second, so the additional flow did not cause physical damage or endanger public safety. The attack, attributed to the Russian hacktivist group Z-PENTEST (based on Telegram videos), exposed critical vulnerabilities in OT systems but did not lead to significant operational disruption, as the dam primarily serves a fish farm and is not connected to Norway's power grid.
- https://industrialcyber.co/industrial-cyber-attacks/lake-risevatnet-dam-hack-exposes-industrial-cyber-gaps-as-weak-passwords-risk-critical-infrastructure-attacks/


# 2025 - Army of Russia Reborn (CARR) Attack on Muleshoe, Texas Water Facility
- Entry Point: Unauthorized access to HMIs, likely via internet-exposed interfaces, with attackers sharing screen recordings of manipulation on Telegram.

- Result: Water storage tanks overflowed, disrupting operations. The attack underscored vulnerabilities in small utilities with limited cybersecurity resources.


# 2024 - Ukraine Energy Company Attack (FrostyGoop Malware)
- Entry Point: Exploitation of Modbus TCP communications in publicly exposed devices, likely via internet-accessible ICS protocols.

- Result: Disruption of OT networks, causing a denial-of-service (DoS) condition. The malware targeted ENCO control devices but could affect any device using Modbus TCP, leading to operational malfunctions.


# 2023 - Municipal Water Authority of Aliquippa Attack (CyberAv3ngers)
- Entry Point: Exploitation of internet-accessible devices, likely Human-Machine Interfaces (HMIs), by an Iranian-backed hacktivist group.

- Result: Hackers gained control of a booster station, triggering an immediate alarm response. No significant operational disruption reported, but it highlighted vulnerabilities in under-resourced utilities.


# 2023 - Fritzmeier Group Cyberattack
- Entry Point: Likely IT systems compromise, with details unspecified, leading to system shutdowns.

- Result: Production ran in emergency mode, with large parts still operational. External support and law enforcement were involved to restore systems.


# 2023 - YKK Ransomware Attack (LockBit)
- Entry Point: Targeted U.S. networks, likely via ransomware exploiting IT system vulnerabilities.

- Result: The cybersecurity team contained the attack, preventing significant damage or data exfiltration. Operations continued with minimal impact.


# 2022 - KA-SAT Satellite Attack (Viasat)
- Entry Point: Attack on Viasat's satellite communication network, targeting ground segment infrastructure.

- Result: Caused a partial outage affecting internet access in Ukraine and other European countries. Indirectly impacted Enercon, a German wind power company, losing remote access to 5,800 wind turbines (11 GW capacity). No direct endangerment to turbines, as they operated automatically.


# 2022 - DENSO Automotive Ransomware (Pandora Group)
- Entry Point: Ransomware exploiting IT network vulnerabilities, gaining unauthorized access.

- Result: 1.4 TB of proprietary data stolen, but operations were not significantly disrupted due to containment measures.


# 2022 - Nordex Wind Turbine Cyberattack (Conti Group)
- Entry Point: Ransomware attack on IT systems, with remote access to wind turbines shut down to prevent spread.

- Result: Internal IT network was affected, but wind turbine operations were not directly disrupted due to proactive system shutdowns.


# 2022 - Starlink Satellite Attacks (Russia-Ukraine Conflict)
- Entry Point: Jamming and spoofing attempts targeting satellite communication links, likely via ground segment vulnerabilities.

- Result: Exposed vulnerabilities in satellite communications during geopolitical conflict, but no major operational disruptions reported. Highlighted need for stronger cybersecurity protocols.


# 2021 - Oldsmar Water Treatment Facility Attack
- Entry Point: Remote access via TeamViewer software on an engineering workstation, likely due to weak access controls.

- Result: An attacker manipulated sodium hydroxide dosing rates, but the operator detected the change before any water was poisoned, averting harm.


# 2020 - JBS Meat Processing Ransomware Attack
- Entry Point: IT systems compromise, likely via ransomware exploiting IT network vulnerabilities, impacting OT systems.

- Result: The attack cost $11 million in ransom and halted slaughterhouse operations globally, from Australia to the U.S., disrupting the meat supply chain. Motive appeared to be revenge rather than profit.


# 2020 - Norsk Hydro Ransomware Attack (LockerGoga)
- Entry Point: Phishing or exploitation of vulnerabilities in external remote services, targeting the IT network, which spread to the industrial network.

- Result: The attack impacted multiple global sites, costing $71 million. Production lines were shut down or switched to manual operations, disrupting manufacturing processes.

# 2020 - Lion Beverage Manufacturer Ransomware (Sodinokibi)
- Entry Point: Likely phishing or vulnerabilities in IT systems, spreading to OT systems connected to production lines.

- Result: Systems were shut down for safety, halting operations from June 9 to June 26, with reduced capacity afterward. Significant operational disruption occurred.


# 2010 - Stuxnet
- Entry Point: Stuxnet primarily spread through infected USB drives, exploiting zero-day vulnerabilities in Microsoft Windows (notably the LNK vulnerability, CVE-2010-2568). It targeted industrial control systems, specifically Siemens Step7 software used in programmable logic controllers (PLCs). The worm initially infected Windows systems in Iranian facilities, likely introduced via an infected USB drive by an unwitting employee or contractor. From there, it propagated across local networks, seeking out systems connected to Siemens PLCs controlling uranium enrichment centrifuges at Iran's Natanz facility.

- Result: Stuxnet's payload was designed to sabotage centrifuge operations by manipulating their speeds-causing them to spin erratically, leading to physical damage-while sending false feedback to operators to conceal the attack. It reportedly damaged or destroyed around 1,000 of Iran's 9,000 centrifuges at Natanz, significantly delaying Iran's nuclear enrichment program. The worm's stealth allowed it to operate undetected for months, but its eventual discovery raised global awareness of cyber warfare's potential to target critical infrastructure. Stuxnet also inadvertently spread beyond its target, infecting systems worldwide, though its payload only activated on specific Siemens configurations. No definitive attribution has been officially confirmed, but its complexity and targeting strongly point to state-sponsored actors.


