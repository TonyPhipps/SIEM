These basic use cases should be detectable by any SIEM, provided the correct logs are being collected.

## Endpoint
- A file share is created
- A file system is mounted
- A process modifies another process
- A registry value or key is created/updated/deleted
- A scheduled task is created/updated/deleted
- A service is created/updated/deleted
- A sensitive process is updated/stopped
- A sensitive OS file is updated/deleted
- Firmware is updated/out-of-date
- Software is installed/out-of-date


## Correlation
- A system reports more than X anomaly-style alerts in Y time frame
- A system alerts on more than X known-bad-style alerts in Y time frame
- Specific firewall blocks are triggered
- A firewall blocks more than X packets to/from a single system in Y time frame
- An account accesses more than X file shares in Y time frame
- An account makes authentication attempts during abnormal hours of the day
- A system makes network connections during abnormal hours of the day