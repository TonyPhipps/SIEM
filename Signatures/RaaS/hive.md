## Techniques
- Identify processes related to backups, antivirus/anti-spyware, and file copying and then terminating those processes to facilitate file encryption [T1562].
- Stop the volume shadow copy services and remove all existing shadow copies via vssadmin on command line or via PowerShell [T1059] [T1490].
- Delete Windows event logs, specifically the System, Security and Application logs [T1070]. 
- Removes virus definitions and disables all portions of Windows Defender and other common antivirus programs in the system registry [T1112].
- Exfiltrate data likely using a combination of Rclone and the cloud storage service Mega.nz [T1537].
- Files created in root (C:\ or /root/) []
