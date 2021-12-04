- [Common Tools Used by Adversaries](#common-tools-used-by-adversaries)
  - [Discovery (Passive)](#discovery-passive)
    - [Google Dorking](#google-dorking)
    - [Breach Databases](#breach-databases)
  - [Discovery (Active)](#discovery-active)
  - [Credential Access](#credential-access)
- [Open Source Attacker Simulation Tools](#open-source-attacker-simulation-tools)

# Common Tools Used by Adversaries

Study these tools to find new ways to discover/defend against.

- TokenPlayer - https://github.com/S1ckB0y1337/TokenPlayer
- crackmapexec - https://github.com/byt3bl33d3r/CrackMapExec
- impacket - https://github.com/SecureAuthCorp/impacket
  - Especially secretsdump.py
- Basically anything in Kali Linux - https://www.kali.org/
- pingcastle - https://github.com/vletoux/pingcastle
- mimikatz - https://github.com/gentilkiwi/mimikatz
- hashchat - https://github.com/hashcat/hashcat
- Burp Suite - https://portswigger.net/burp/communitydownload
  - Request Smuggler plugin
- openvas - https://github.com/greenbone/openvas
- autossh - www.harding.motd.ca/autossh/
- dirb - http://dirb.sourceforge.net/
- evilginx2 - https://github.com/kgretzky/evilginx2
- chashell - https://github.com/sysdream/chashell
- Exchange Web Services (EWS) Crack - https://github.com/mikesiegel/ews-crack
- Okta Password Sprayer - https://github.com/Rhynorater/Okta-Password-Sprayer
- CQHashDumpV2 - https://cqureacademy.com/blog/identity-theft-protection/pass-hash-attack-tutorial
- Rubeus - https://github.com/GhostPack/Rubeus
- Seatbelt - https://github.com/ghostpack/seatbelt
- evilClippy - https://github.com/outflanknl/EvilClippy
- proxychains - https://github.com/haad/proxychains

## Discovery (Passive)
Stuff you probably won't see on your network, but could use "against yourself"
- hardcidr - https://github.com/trustedsec/hardcidr
- amass - https://github.com/caffix/amass
- PowerMeta - https://github.com/dafthack/PowerMeta
- truffleHog - https://github.com/dxa4481/truffleHog
- reposcanner - https://github.com/Dionach/reposcanner

### Google Dorking
- yourdomain.com (site:amazonaws.com | site:blob.core.windows.net | site:digitaloceanspaces.com)
- yourdoamin.com (site:pastebin.com | site:paste2.org | site:paste.bradleygill.com | site:pastie.org | site:dpaste.org)
- "your company" site:linkedin.com (intitle:"Service Desk" | intitle:"Desktop Support" | intitle:"Security Engineer" | intitle:"Help Desk")

### Breach Databases
- https://thepiratebay.org/torrent/22590240/Leaked_Databases

## Discovery (Active)
You might see some of this
- aquatone - https://github.com/michenriksen/aquatone
- dirsearch - https://github.com/maurosoria/dirsearch
- nmap - https://nmap.org/
- bloodhound - https://github.com/BloodHoundAD/BloodHound

## Credential Access
- CleverSpray - https://github.com/wavestone-cdt/Invoke-CleverSpray


# Open Source Attacker Simulation Tools

- Atomic Red Team
  - https://github.com/redcanaryco/atomic-red-team
- Mordor
  - https://github.com/hunters-forge/mordor
- EVTX Attack Samples
  - https://github.com/sbousseaden/EVTX-ATTACK-SAMPLES
- Caldera
  - https://github.com/mitre/caldera
- Metta
  - https://github.com/uber-common/metta
- APT Simulator
  - https://github.com/NextronSystems/APTSimulator
- Red Team Automation
  - https://github.com/endgameinc/RTA
- Infection Monkey
  - https://github.com/guardicore/monkey
- Blue Team Training Toolkit (BT3)
  - https://www.encripto.no/en/downloads-2/tools/
- DumpsterFire
  - https://github.com/TryCatchHCF/DumpsterFire
- AutoTTP
  - https://github.com/jymcheong/AutoTTP
- NSA Unfetter
  - https://mitre.github.io/unfetter/
- MATE MITRE ATT&CK Technique Emulation
  - https://github.com/fugawi/mate
- Purple Team ATT&CK Automation
  - https://github.com/praetorian-inc/purple-team-attack-automation
