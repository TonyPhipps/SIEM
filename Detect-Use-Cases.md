Mapped to the ATT&CK Framework, these use cases are intended to guide a SIEM team to...
* ... develop a workflow for content creation (and retirement) in the SIEM and other security tools.
* ... illustrate detection coverage provided.
* ... highlight coverage gaps.
* ... determine whether custom signatures are required where vendor signatures are lacking.
* ... elimiante or add additional layers of coverage based on organizational needs.

| Name                                  | [Initial Access](https://attack.mitre.org/tactics/TA0001/) | [Execution](https://attack.mitre.org/tactics/TA0002) | [Persistence](https://attack.mitre.org/tactics/TA0003/) |
| ------------------------------------- | :--------------------------------------------------------: | :--------------------------------------------------: | :-----------------------------------------------------: |
| Anomalous Account Creation            |                             X                              |                                                      |                                                         |
| Anomalous Account Modifications       |                             X                              |                          X                           |                            X                            |
| Anomalous Activity Times              |                             X                              |                          X                           |                            X                            |
| Anomalous Application Logs            |                             X                              |                                                      |                                                         |
| Anomalous Child Process Spawning      |                                                            |                          X                           |                            X                            |
| Anomalous Command-Line Activity       |                             X                              |                          X                           |                            X                            |
| Anomalous Credentials Granted         |                             X                              |                          X                           |                                                         |
| Anomalous DLL Loading                 |                                                            |                          X                           |                            X                            |
| Anomalous File Access                 |                             X                              |                          X                           |                            X                            |
| Anomalous File Creation               |                             X                              |                          X                           |                                                         |
| Anomalous File Deletion               |                             X                              |                                                      |                                                         |
| Anomalous File Download Sources       |                             X                              |                                                      |                                                         |
| Anomalous File Hash                   |                             X                              |                          X                           |                            X                            |
| Anomalous File Modification           |                             X                              |                                                      |                            X                            |
| Anomalous Logon                       |                             X                              |                          X                           |                                                         |
| Anomalous Logon Times                 |                             X                              |                                                      |                                                         |
| Anomalous Network Socket              |                             X                              |                                                      |                            X                            |
| Anomalous Port Listening              |                             X                              |                                                      |                            X                            |
| Anomalous Process Arguments           |                             X                              |                          X                           |                            X                            |
| Anomalous Process Execution           |                                                            |                          X                           |                            X                            |
| Anomalous Process Termination         |                                                            |                          X                           |                                                         |
| Anomalous Protocol Use                |                                                            |                          X                           |                                                         |
| Anomalous Registry Entry Creation     |                                                            |                          X                           |                            X                            |
| Anomalous Registry Entry Deletion     |                                                            |                          X                           |                            X                            |
| Anomalous Registry Entry Modification |                                                            |                          X                           |                            X                            |
| Anomalous Scheduled Jobs/Tasks        |                                                            |                          X                           |                                                         |
| Anomalous Script Execution            |                             X                              |                          X                           |                                                         |
| Anomalous Service/Daemon Creation     |                                                            |                          X                           |                                                         |
| Anomalous System Access               |                             X                              |                          X                           |                                                         |
| Anomalous URL                         |                             X                              |                                                      |                                                         |
| Anomalous USB Devices                 |                             X                              |                                                      |                                                         |
| Client Application Exploitation       |                                                            |                          X                           |                                                         |
| Command-Line Obfuscation              |                                                            |                          X                           |                                                         |
| Executable from Removable Media       |                             X                              |                          X                           |                                                         |
| Known-Bad Domains                     |                             X                              |                          X                           |                                                         |
| Known-Bad File Contents               |                             X                              |                          X                           |                                                         |
| Known-Bad File Name                   |                                                            |                          X                           |                                                         |
| Known-Bad File Signer                 |                                                            |                          X                           |                                                         |
| Known-Bad GET Parameters (URL)        |                             X                              |                          X                           |                                                         |
| Known-Bad POST Parameters             |                             X                              |                          X                           |                                                         |
| Malicious Email Attachment            |                             X                              |                          X                           |                                                         |
| Multiple Simultaneous Logon           |                             X                              |                                                      |                                                         |
| Recently Registered Domains           |                             X                              |                                                      |                                                         |
| Rogue System Detection                |                             X                              |                                                      |                                                         |
| Script Obfuscation                    |                             X                              |                          X                           |                                                         |
| Server Service Exploitation           |                                                            |                          X                           |                                                         |
| SQL Injection Attempts                |                             X                              |                                                      |                                                         |
