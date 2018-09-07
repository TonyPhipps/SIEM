See [Analysis Types](https://github.com/TonyPhipps/SIEM/wiki/Analysis-Types) for further explanation.

All IOC/Tactics listed assume there will be some whitelisting required to eliminate false positives unique to any environment.

| Description                                             | Type            | Notes | 
|---------------------------------------------------------|-----------------|-------| 
| Abnormal Expired Certificates                           | Aggregate Count |       | 
| Abnormal Self-Signed Certificates                       | Aggregate Count |       | 
| Abnormal certificate algorithms/sizes                   | Aggregate Count |       | 
| Abnormal certificates validity length (5y+)             | Blacklist Alert |       | 
| Certificates with abnormal Common Name fields           | Blacklist Alert |       | 
| Certificates with blank fields that are commonly filled | Blacklist Alert |       | 
| Certificates with invalid country codes / states        | Blacklist Alert |       | 
