_WORK IN PROGRESS_

Mapped to the ATT&CK Framework, these use cases are intended to guide a SIEM team to...
* ... develop a workflow for content creation (and retirement) in the SIEM and other security tools.
* ... illustrate detection coverage provided.
* ... highlight coverage gaps.
* ... determine whether custom signatures are required where vendor signatures are lacking.
* ... elimiante or add additional layers of coverage based on organizational needs.

#### ATT&CK Abbreviations Used
Initial Access (IA), Execution (Exe), Persistence (P), Privilege Escalation (PE), Defense Evasion (DE), 
Credential Access (CA), Discovery (D), Lateral Movement (LM), Collection (C), Exfiltration (Exf), Command and Control (CC)

## Detect | ATT&CK Tactics Cross Mapping

| Name                                  | [IA](https://attack.mitre.org/tactics/TA0001/) | [Exe](https://attack.mitre.org/tactics/TA0002) | [P](https://attack.mitre.org/tactics/TA0003/) | [PE](https://attack.mitre.org/tactics/TA0004) | [DE](https://attack.mitre.org/tactics/TA0005) | [CA](https://attack.mitre.org/tactics/TA0006) | [D](https://attack.mitre.org/tactics/TA0005) | [LM](https://attack.mitre.org/tactics/TA0008) | [C](https://attack.mitre.org/tactics/TA0006) | [Exf](https://attack.mitre.org/tactics/TA0010) | [CC](https://attack.mitre.org/tactics/TA0011) |
| ------------------------------------- | :--------------------------------------------: | :--------------------------------------------: | :-------------------------------------------: | :-------------------------------------------: | :-------------------------------------------: | :-------------------------------------------: | :------------------------------------------: | :-------------------------------------------: | :------------------------------------------: | :--------------------------------------------: | :-------------------------------------------: |
| Anomalous Account Activity Time       |                       X                        |                       X                        |                       X                       |                       X                       |                       X                       |                       X                       |                      X                       |
| Anomalous Account Creation            |                       X                        |                       X                        |                       X                       |                       X                       |
| Anomalous Account Logon               |                       X                        |                       X                        |                       X                       |                       X                       |                       X                       |                       X                       |
| Anomalous Account Logon Session Count |                       X                        |                       X                        |                       X                       |                       X                       |
| Anomalous Account Logon Time          |                       X                        |                       X                        |                       X                       |                       X                       |
| Anomalous Account Modification        |                       X                        |                       X                        |                       X                       |                       X                       |                       X                       |                       X                       |
| Anomalous API Usage                   |                       X                        |                       X                        |                       X                       |                       X                       |                       X                       |
| Anomalous Application Log             |                       X                        |
| Anomalous Browser Extension           |                       X                        |
| Anomalous Child Process Spawning      |                       X                        |                       X                        |                       X                       |                       X                       |                       X                       |
| Anomalous Command-Line Argument       |                       X                        |                       X                        |                       X                       |                       X                       |                       X                       |                       X                       |                      X                       |                       X                       |                      X                       |
| Anomalous Credentials Granted         |                       X                        |                       X                        |                       X                       |                       X                       |                       X                       |
| Anomalous DLL Loading                 |                       X                        |                       X                        |                       X                       |                       X                       |
| Anomalous Domain Replication Request  |                       X                        |
| Anomalous File Access                 |                       X                        |                       X                        |                       X                       |                       X                       |                       X                       |                       X                       |                      X                       |                       X                       |
| Anomalous File Creation               |                       X                        |                       X                        |                       X                       |                       X                       |                       X                       |                       X                       |
| Anomalous File Deletion               |                       X                        |                       X                        |                       X                       |                       X                       |
| Anomalous File Download Source        |                       X                        |
| Anomalous File Hash                   |                       X                        |                       X                        |                       X                       |                       X                       |                       X                       |
| Anomalous File Content                |                       X                        |
| Anomalous File Modification           |                       X                        |                       X                        |                       X                       |                       X                       |
| Anomalous File Rename                 |                       X                        |                       X                        |                       X                       |
| Anomalous Firmware Modification       |                       X                        |                       X                        |
| Anomalous Hypervisor/VM Presence      |                       X                        |
| Anomalous MBR/VBR Modification        |                       X                        |
| Anomalous Network Activity by Process |                       X                        |
| Anomalous Network File Transfer       |                       X                        |
| Anomalous Network Port Listening      |                       X                        |                       X                        |                       X                       |                       X                       |
| Anomalous Network Protocol Traffic    |                       X                        |                       X                        |
| Anomalous Network Protocol Behavior   |                       X                        |
| Anomalous Network Send/Receive Ratio  |                       X                        |
| Anomalous Network Socket              |                       X                        |                       X                        |                       X                       |                       X                       |                       X                       |
| Anomalous Process Argument            |                       X                        |                       X                        |                       X                       |                       X                       |                       X                       |                       X                       |                      X                       |
| Anomalous Process Execution           |                       X                        |                       X                        |                       X                       |                       X                       |                       X                       |                       X                       |
| Anomalous Process Hooking             |                       X                        |                       X                        |                       X                       |
| Anomalous Process Owner               |                       X                        |
| Anomalous Process Parent              |                       X                        |
| Anomalous Process Termination         |                       X                        |
| Anomalous Registry Entry Access       |                       X                        |
| Anomalous Registry Entry Creation     |                       X                        |                       X                        |                       X                       |                       X                       |
| Anomalous Registry Entry Deletion     |                       X                        |                       X                        |                       X                       |                       X                       |
| Anomalous Registry Entry Modification |                       X                        |                       X                        |                       X                       |                       X                       |
| Anomalous Scheduled Job/Task          |                       X                        |                       X                        |                       X                       |
| Anomalous Script Execution            |                       X                        |                       X                        |                       X                       |                       X                       |
| Anomalous Service/Daemon Creation     |                       X                        |                       X                        |                       X                       |                       X                       |
| Anomalous System Access               |                       X                        |                       X                        |                       X                       |                       X                       |                       X                       |
| Anomalous URL Request                 |                       X                        |
| Anomalous USB Device                  |                       X                        |
| Client Application Exploitation       |                       X                        |
| Command-Line Obfuscation              |                       X                        |                       X                        |
| Executable from Removable Media       |                       X                        |                       X                        |                       X                       |                       X                       |
| Known-Bad Domain                      |                       X                        |                       X                        |
| Known-Bad File Contents               |                       X                        |                       X                        |                       X                       |                       X                       |
| Known-Bad File Name                   |                       X                        |                       X                        |
| Known-Bad File Signer                 |                       X                        |                       X                        |
| Known-Bad GET Parameter (URL)         |                       X                        |                       X                        |
| Known-Bad POST Parameter              |                       X                        |                       X                        |
| Malicious Email Attachment            |                       X                        |                       X                        |                       X                       |
| Multiple Simultaneous Logon           |                       X                        |                       X                        |                       X                       |                       X                       |
| Recently Registered Domain            |                       X                        |
| Rogue System Detection                |                       X                        |
| Script Obfuscation                    |                       X                        |                       X                        |
| Server Service Exploitation           |                       X                        |
| SQL Injection Attempt                 |                       X                        |
 