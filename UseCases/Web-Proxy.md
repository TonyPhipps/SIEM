| Description                                                | [Method](/Detection-Methods.md) | Notes                                   |
| ---------------------------------------------------------- | ------------------------------------------------------ | --------------------------------------- |
| Abnormal HTTP Method counts per system in a time period    | Threshold Alert                                        |                                         |
| Abnormal URL Request Length                                | Aggregate Count                                        |                                         |
| Abnormal count of blocked web requests per day             | Threshold Alert                                        |                                         |
| Abnormal ratio of HTTP GET/POST                            | Aggregate Count                                        |                                         |
| Abnormal ratio of HTTP Up/Down Bytes                       | Aggregate Count                                        |                                         |
| Abnormal user agent                                        | Rolling Whitelist Alert                                |                                         |
| Domain Generating Algorithm (DGA) Use                      | Shannon Entropy Score Alert                            |                                         |
| HTTP over port 443 (https request with 3 or more /)        | Blacklist Alert                                        |                                         |
| Newly-Registered Domains                                   | Aggregate Count                                        | Requres categorization or WHOIS Dataset |
| Typosquatting Company Domains                              | Levenshtein Score Alert                                |                                         |
| Uncommon Web Site Use – sites not in top 1 million list(s) | Aggregate Count                                        | Requieres Top 1 Million List            |
| Newly Observed Domains                                     | Rolling Whitelist Alert                                |                                         |
| Known-bad user agents                                      | Blacklist Alert                                        |                                         |
| Known-bad Domains                                          | Blacklist Alert                                        |                                         |
| Web requests directly to IP Address (versus domain names)  | Blacklist Alert                                        |                                         |
| Web requests not originating from company proxy            | Blacklist Alert                                        |                                         |
| X-Forwarded-For contains a non-trusted proxy address       | Blacklist Alert                                        |                                         |
