- [Abnormal SMTP User Agent](#abnormal-smtp-user-agent)
- [Abnormal Count of Outbound Emails per Server/Source User](#abnormal-count-of-outbound-emails-per-serversource-user)
- [Domain Generating Algorithm (DGA) Use](#domain-generating-algorithm-dga-use)
- [Inbound emails using internal email addresses](#inbound-emails-using-internal-email-addresses)
- [Newly-Registered Domains](#newly-registered-domains)
- [Outbound emails using external email addresses](#outbound-emails-using-external-email-addresses)
- [Typosquatting Trusted Domains](#typosquatting-trusted-domains)
- [Email Attachments with Cosecutive Spaces or Extensions (e.g. .docx.exe)](#email-attachments-with-cosecutive-spaces-or-extensions-eg-docxexe)
- [Excessive Inbound Emails from a Single Source](#excessive-inbound-emails-from-a-single-source)
- [Excessive Outbound Emails from a Single Source](#excessive-outbound-emails-from-a-single-source)
- [Outbound or Internal Infected Email Detected](#outbound-or-internal-infected-email-detected)
- [Threshold of Outbound Emails to a Single Address](#threshold-of-outbound-emails-to-a-single-address)
- [Outbound Email to Known-Bad Addresses](#outbound-email-to-known-bad-addresses)
- [Excessive Non-Delivery Reports](#excessive-non-delivery-reports)
- [Low-and-Slow Outbound Emails](#low-and-slow-outbound-emails)

# Abnormal SMTP User Agent
- Blacklist Alert


# Abnormal Count of Outbound Emails per Server/Source User
- Threshold Alert


# Domain Generating Algorithm (DGA) Use
- Shannon Entropy Score Alert
-  Requires Entropy Enrichment


# Inbound emails using internal email addresses
- Blacklist Alert


# Newly-Registered Domains
- Aggregate Count
- Requires WHOIS Enrichment


# Outbound emails using external email addresses
- Blacklist Alert


# Typosquatting Trusted Domains
- Levenshtein Score Alert
- Requires Levenshtein/Frequency Enrichment


# Email Attachments with Cosecutive Spaces or Extensions (e.g. .docx.exe)
- Blacklist Alert


# Excessive Inbound Emails from a Single Source
- Threshold Alert


# Excessive Outbound Emails from a Single Source
- Threshold Alert


# Outbound or Internal Infected Email Detected
- Blacklist Alert


# Threshold of Outbound Emails to a Single Address
- Threshold Alert


# Outbound Email to Known-Bad Addresses
- Blacklist Alert


# Excessive Non-Delivery Reports
- Threshold Alert


# Low-and-Slow Outbound Emails
- Threshold Alert
- Count of emails per hour, with a 1 hour inactivity reset per counter


