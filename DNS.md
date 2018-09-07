See [Analysis Types](https://github.com/TonyPhipps/SIEM/wiki/Analysis-Types) for further explanation.

All IOC/Tactics listed assume there will be some whitelisting required to eliminate false positives unique to any environment.

| Description                                        | Type                        | Notes | 
|----------------------------------------------------|-----------------------------|-------| 
| Abnormal frequency of DNS queries                  | Threshold Alert             |       | 
| Abnormal frequency of DNS query failures (RCODE:3) | Threshold Alert             |       | 
| Abnormal frequency of TXT queries (RCODE:16)       | Threshold Alert             |       | 
| DNS queries to non-company servers                 | Blacklist Alert             |       | 
| Domain Generating Algorithm (DGA) Use              | Shannon Entropy Score Alert |       | 
| Newly-Registered Domains                           | Aggregate Count             |       | 
| OS update requests to non-company servers          | Blacklist Alert             |       | 
| Requests to non-company servers                    | Blacklist Alert             |       | 
| Successful DNS resolution for “WPAD” domain        | Blacklist Alert             |       | 
| TXT queries with high entropy (RCODE:16)           | Blacklist Alert             |       | 
| Typosquatting Company Domains                      | Levenshtein Score Alert     |       | 
