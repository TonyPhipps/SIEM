These basic use cases should be detectable by any SIEM, provided the correct logs are being collected.

## Endpoint
- A file with a non-executable extension is executed
- A file is created in a non-standard location
- A file share is created
- A file system is mounted
- A known-bad IP address is observed
- A known-bad domain is observed
- A known-bad filename is observed
- A known-bad hash is observed
- A known-bad port is observed
- A known-bad user agent is observed
- A privileged account abnormally executes a process
- A service account logs on interactively
- A privileged/service account accesses a website
- An account is added to a group
- An account is directly granted rights
- An account resets a password
- An account's authentication method is changed
- A process creates an executable file on disk
- A process launches an executable file
- A process modifies another process
- A registry value or key is created/updated/deleted
- A scheduled task is created/updated/deleted
- A service is created/updated/deleted
- A sensitive process is updated/stopped
- A sensitive OS file is updated/deleted
- A sensitive business file is read/updated/deleted
- A common admin tool is executed
- An executable file is launched from a non-standard location
- Firmware is updated/out-of-date
- Software is installed/out-of-date

## Network

- A protocol field is larger than X bytes
- A TCP connection has been open for a prolonged period


## Correlation
- A system reports more than X anomaly-style alerts in Y time frame
- A system alerts on more than X known-bad-style alerts in Y time frame
- An account suprasses X failed or successful logon attempts in Y time frame
- A system surpasses X DNS requests in Y time frame
- A system with an unrecognized naming convention is observed
- A user with an unrecognized naming convention is observed
- Traffic to domains not in a Top-Million list is observed
- Specific firewall blocks are triggered
- A firewall blocks more than X packets to/from a single system in Y time frame
- An account authenticates to more than X systems in Y time frame
- A non-workstation endpoint initiates a TCP handshake
- A system receives/sents UDP packets to more than X IPs in Y time frame
- A new port/protocol is observed in use
- A system surpasses X TCP connections in Y time frame
- An account accesses more than X file shares in Y time frame
- A system surpasses X currently active TCP sessions
- An account makes authentication attempts during abnormal hours of the day
- A system makes network connections during abnormal hours of the day