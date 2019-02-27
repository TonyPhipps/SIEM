| Description                                                             | [Method](/Detection-Methods.md) | Notes                                                                |
| ----------------------------------------------------------------------- | ------------------------------- | -------------------------------------------------------------------- |
| Abnormal SMTP User Agent                                                | Blacklist Alert                 |                                                                      |
| Abnormal Count of Outbound Emails per Server/Source User                | Threshold Alert                 |                                                                      |
| Domain Generating Algorithm (DGA) Use                                   | Shannon Entropy Score Alert     | Requires Entropy Enrichment                                          |
| Inbound emails using internal email addresses                           | Blacklist Alert                 |                                                                      |
| Newly-Registered Domains                                                | Aggregate Count                 | Requires WHOIS Enrichment                                            |
| Outbound emails using external email addresses                          | Blacklist Alert                 |                                                                      |
| Typosquatting Trusted Domains                                           | Levenshtein Score Alert         | Requires Levenshtein/Frequency Enrichment                            |
| Email Attachments with Cosecutive Spaces or Extensions (e.g. .docx.exe) | Blacklist Alert                 |                                                                      |
| Excessive Inbound Emails from a Single Source                           | Threshold Alert                 |                                                                      |
| Excessive Outbound Emails from a Single Source                          | Threshold Alert                 |                                                                      |
| Outbound or Internal Infected Email Detected                            | Blacklist Alert                 |                                                                      |
| Threshold of Outbound Emails to a Single Address                        | Threshold Alert                 |                                                                      |
| Outbound Email to Known-Bad Addresses                                   | Blacklist Alert                 |                                                                      |
| Excessive Non-Delivery Reports                                          | Threshold Alert                 |                                                                      |
| Low-and-Slow Outbound Emails                                            | Threshold Alert                 | Count of emails per hour, with a 1 hour inactivity reset per counter |


