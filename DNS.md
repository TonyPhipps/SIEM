| Description                                               | [Technique](/Detection-Techniques.md) | Notes |
| --------------------------------------------------------- | ------------------------------------------------------- | ----- |
| Abnormal count of DNS queries per system                  | Threshold Alert                                         |       |
| Abnormal count of DNS query failures per system (RCODE:3) | Threshold Alert                                         |       |
| Abnormal count of TXT queries per sytem (RCODE:16)        | Threshold Alert                                         |       |
| DNS queries to non-company servers                        | Blacklist Alert                                         |       |
| Domain Generating Algorithm (DGA) Use                     | Shannon Entropy Score Alert                             |       |
| Newly-Registered Domains                                  | Aggregate Count                                         |       |
| OS update requests to non-company servers                 | Blacklist Alert                                         |       |
| Successful DNS resolution for "WPAD" domain               | Blacklist Alert                                         |       |
| DNS TXT queries with high entropy (RCODE:16)              | Blacklist Alert                                         |       |
| DNS TXT queries with high length (RCODE:16)               | Blacklist Alert                                         |       |
| Typosquatting Company Domains                             | Levenshtein Score Alert                                 |       |
