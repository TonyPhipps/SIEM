See [Analysis Types](https://github.com/TonyPhipps/SIEM/wiki/Analysis-Types) for further explanation.

All IOC/Tactics listed assume there will be some whitelisting required to eliminate false positives unique to any environment.

## Logs

| Description                                 | Type                        | Notes                                   | 
|---------------------------------------------|-----------------------------|-----------------------------------------| 
|  Brute Force Attempts (4625)                | Threshold Alert             |                                         | 
|  Clearing of Event Logs (1102)              | Blacklist Alert             |                                         |
|  New Service Creation (7045)                | Rolling Whitelist Alert     |                                         | 
|  Newly observed executable (4688)           | Rolling Whitelist Alert     |                                         | 
|  Non-default PowerShell module use (4103)   | Whitelist Alert             |                                         | 

## Data Collection

| Description                                  | Type            | Notes | 
|----------------------------------------------|-----------------|-------| 
| Trusted Certificate Authorities on endpoints | Aggregate Count |       | 
