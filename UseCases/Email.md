| Description                                              | [Technique](/Detection-Methods.md) | Notes                                     |
| -------------------------------------------------------- | ------------------------------------------------------- | ----------------------------------------- |
| Abnormal SMTP user agent                                 | Blacklist Alert                                         |                                           |
| Abnormal count of outbound emails per server/source user | Threshold Alert                                         |                                           |
| Domain Generating Algorithm (DGA) Use                    | Shannon Entropy Score Alert                             | Requires Entropy Enrichment               |
| Inbound emails using internal email addresses            | Blacklist Alert                                         |                                           |
| Newly-Registered Domains                                 | Aggregate Count                                         | Requires WHOIS Enrichment                 |
| Outbound emails using external email addresses           | Basic Alert                                             |                                           |
| SMTP from non-company mail servers                       | Basic Alert                                             |                                           |
| Typosquatting Company Domains                            | Levenshtein Score Alert                                 | Requires Levenshtein/Frequency Enrichment |
