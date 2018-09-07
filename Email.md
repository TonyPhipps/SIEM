See [Analysis Types](https://github.com/TonyPhipps/SIEM/wiki/Analysis-Types) for further explanation.

All IOC/Tactics listed assume there will be some whitelisting required to eliminate false positives unique to any environment.

| Description                                    | Type                        | Notes                                     | 
|------------------------------------------------|-----------------------------|-------------------------------------------| 
| Abnormal SMTP useragents                       | Blacklist Alert             |                                           | 
| Abnormal amount of outbound email              | Threshold Alert             |                                           | 
| Domain Generating Algorithm (DGA) Use          | Shannon Entropy Score Alert | Requries Entropy Enrichment               | 
| Inbound emails using internal email addresses  | Blacklist Alert             |                                           | 
| Newly-Registered Domains                       | Aggregate Count             | Requires WHOIS Enrichment                 | 
| Outbound emails using external email addresses | Basic Alert                 |                                           | 
| SMTP from non-company mail servers             | Basic Alert                 |                                           | 
| Typosquatting Company Domains                  | Levenshtein Score Alert     | Requires Levenshtein/Frequency Enrichment | 
