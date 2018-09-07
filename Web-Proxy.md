See [Analysis Types](https://github.com/TonyPhipps/SIEM/wiki/Analysis-Types) for further explanation.

All IOC/Tactics listed assume there will be some whitelisting required to eliminate false positives unique to any environment.

| Description                                                | Type                        | Notes                                   | 
|------------------------------------------------------------|-----------------------------|-----------------------------------------| 
| Abnormal HTTP Method counts per system in a time period    | Threshold Alert             |                                         | 
| Abnormal URL Request Length                                | Aggregate Count             |                                         | 
| Abnormal frequency of blocked web requests                 | Threshold Alert             |                                         | 
| Abnormal ratio of HTTP GET/POST                            | Aggregate Count             |                                         | 
| Abnormal useragent length                                  | Aggregate Count             |                                         | 
| Domain Generating Algorithm (DGA) Use                      | Shannon Entropy Score Alert |                                         | 
| HTTP over port 443 (https request with 3 or more /)        | Blacklist Alert             |                                         | 
| Newly-Registered Domains                                   | Aggregate Count             | Requres categorization or WHOIS Dataset | 
| Typosquatting Company Domains                              | Levenshtein Score Alert     |                                         | 
| Uncommon Web Site Use – sites not in top 1 million list(s) | Aggregate Count             | Requieres Top 1 Million List            | 
| Rolling whitelist of URL                                   | Rolling Whitelist Alert     |                                         | 
| Web request unknown user agents                            | Whitelist Alert             |                                         | 
| Web requests directly to IP Address (versus domain names)  | Blacklist Alert             |                                         | 
| Web requests not originating from company proxy            | Blacklist Alert             |                                         | 
| X-Forwarded-For contains a non-trusted proxy address       | Blacklist Alert             |                                         | 

