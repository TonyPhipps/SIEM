# Email Traffic Use Cases


Grouped by [Detection Method](/Detection-Methods.md)


## Aggregate Count
- Count of Outbound Emails per Source User/System
- Count of Inbound Emails per Source User/System
- Count of Outbound Emails per Destination User
- Count of Inbound Emails per Destination User
- Count of Unique Destination Users per Source User/System


## Blacklist Alert
- Known-Bad SMTP User Agent
- Inbound Emails Using Internal Email Address as Source or Reply-to
- Email Attachments with Cosecutive Spaces or Extensions (e.g. .docx.exe)
- Outbound Email to Known-Bad Addresses


## Whitelist Alert



## Levenshtein Score Alert
- Typosquatting Company Domains


## Rolling Whitelist Alert
- Newly Observed SMTP User Agent
- Newly Observed Destination Email Domain
- Newly Observed Source Email Domain
 

## Shannon Entropy Score Alert
- High Entropy Domain Name Observed


## Threshold Alert
- Source User, Direction=Outbound where Source User Count exceeds threshold
- Source System, Direction=Outbound where Source System Count exceeds threshold
- Source User, Direction=Inbound where Source User Count exceeds threshold
- Source System, Direction=Inbound where Source System Count exceeds threshold
- Destination SMTP Server, Direction=Outbound where Destination SMTP Server Count exceeds threshold
- Subject=Non-Delivery Report where Count exceeds threshold


# Log Source Examples
- Email server logs
- Email secure gateway logs
- Endpoint Email client logs


# Possible False Positives
