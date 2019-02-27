| Description                                                                         | [Method](/Detection-Methods.md) | Notes |
| ----------------------------------------------------------------------------------- | ------------------------------- | ----- |
| Abnormal Expired Certificates                                                       | Aggregate Count                 |       |
| Abnormal Self-Signed Certificates                                                   | Aggregate Count                 |       |
| Abnormal certificate algorithms/sizes                                               | Aggregate Count                 |       |
| Abnormal certificates validity length (5y+)                                         | Blacklist Alert                 |       |
| Certificates with abnormal Common Name fields                                       | Blacklist Alert                 |       |
| Certificates with blank fields that are commonly filled                             | Blacklist Alert                 |       |
| Certificates with invalid country codes / states                                    | Blacklist Alert                 |       |
| Newly-observed protocol in use                                                      | Rolling Whitelist               |       |
| Protocol used over non-standard port                                                | Blacklist                       |       |
| Web requests directly to IP Address (versus domain names)                           | Blacklist Alert                 |       |
| Newly Observed File Transfer Protocol Use (Ports 20, 21, 22, 69, 80, 115, 443, etc) | Rolling Whitelist Alert         |       |