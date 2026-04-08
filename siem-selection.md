# Product Feature Evaluation 


## Email Security 

- Foundational email protections settings 
- DKIM / SPF inspection 
- Guides on secure email configuration for services like O365 
- Multitenancy 
- Client Access 
- RBAC 
- SIEM Log ingestion (API, JSON or other formats) 
- SOAR and API-based commands 
- Malicious email removal 


## EDR 

- SIEM integration (API alerts query, JSON, etc) 
- Full event details, or partial? 
- Active Response capability 
- SOAR capabilities - automated response through API 
- Memory-focused signatures 
- Heuristics-based signatures 
- Host IDS component (SNORT, Surricata, etc) 
- Capable of running alongside a standalone AV product (e.g. Defender) 
- Artifact collection / custom script execution 
- Community base (content sharing, troubleshooting) 
- Vendor Support 
- Multitenancy 
- Client access 
- RBAC 
- Signatures/Rules/Watchlists/Other content can be exported to redeploy elsewhere 
- Signatures/Rules/Watchlists/Other content is open - logic is reviewable, verifiable, etc. 
- 3% or lower CPU/Memory footprint 
- Tamper-resistant agent with alarming 


## Log Pipeline 

- Client-Server architecture - client-style system to run in Client DMZ that forwards data to a server-style system Secure - Authentication and encrypted traffic for admin interfaces 
- Data Security - Encrypted data in transit 
- High availability - Ability to Failover and Failback between two disparate data centers 
- Horizontal Scaling - Ability to add/remove nodes that work together to share workload 
- Buffering - Ability to store data locally and send when connection issues have been resolved Ability to split data to two or more destinations 


## Log Retention and Restoral 

- Ability to store 1 year of data 
- Auto-destroy data after age threshold 
- Store signed, encrypted, and compressed 
- Ability to comply with GDPR data removal within 24h 
- Ability to restore events based on date, client, feed within 24h 
- Raw data is stored in an open format, easily accessible by third party software 
- Ability to search events 
- Parsing preferred, minimum regex-based search support 


## SOAR

- Sync Disparate Ticketing systems 
- Create a detonation chamber for suspicious email attachments and other files. Forward results to SIEM as an event and/or to ticketing system as an update. 
- Match existing ticketing system cases with a copy of phish emails and attach the raw .msg/.eml to the case. 
- Likely based on sender/receiver/subject 
- Phishbot 
- Automate analysis of raw emails to determine likelihood of malicious intent/content. 
- Automatically respond to user-submitted phish attempts without original attached emails and close the case. 
- Automatically respond to known, sanctioned phishing simulations by clients. 


## SIEM 

- A SIEM is a tool to improve awareness and enable monitoring of the environment. 


### Required Features 

- Role-Based Access Control 
  - Ability to add accounts to a group, groups to roles, where permissions are assigned to roles. 
- Multi-tenancy / Client Separation 
  - Ability to apply different access restrictions to properly segregate one client's data from another 
  - Ability to allow clients to see their own data (and only their data) 
  - Ability to show data consumption per client 
  - Ability to tag data to show client 
  - Ability to apply rules differently to different clients 
- Centralized Architecture 
  - One interface to pivot among tenants 
  - A single interface for configuration and analytics across the entire deployment solution. 
- Data Extraction 
  - Ability to extract all data in a format that other tools can ingest (JSON/CSV, etc) 
- Filter/Event Reduction 
  - Filter events at multiple points of ingestion (client collector, landing zone, SIEM itself, etc) 
- Threat Intel Support 
  - Automated ingestion of threat intel feeds into a watchlist that can be referenced in automated monitoring/alerts. Flexible parsing or "parse-free" data ingestion 
- Storage & Data Lifecycle Management 
  - 90 days hot log retention 
  - Ability to comply with GDPR data requests (destruction and request) 
  - 1y cold log retention or supports offloading logs for storage elsewhere 
  - Cold storage supports compression, signing, and encryption 
  - Data is separated per client 
  - Integrity of data can be validated 
- Backup
  - Backup flexibility (e.g. cloud sources) 
  - Standard industry best practice backup of architecture apart from event storage 
- Encryption
  - Ability to encrypt traffic in transit (e.g. TLS for web interface) 
  - Ability to encrypt traffic at rest (e.g. AES/3DES) 
- Scalable licensing
  - Based on data ingestion volume and/or client count 
- Training & Documentation 
  - Documentation must provide adequate information and detail to allow self maintenance, troubleshooting, and customization. Multi-Factor Authentication Capability
- API support for programmatic access 
- Event Parsers (if used) 
  - Ability to create custom parsers 
  - Parsers should be reloaded on-the-fly 
  - Ability to change field names 
  - Ability to change field values 
  - Parsers are configured in an human-readable open format 
  - Parsers or searches support regular expression extraction 
- Event Enrichment
  - Data can be enriched before correlation analytics are applied. 
    - For example, resolve the geolocation of an IP address and add it to another field 
    - Enrichment can use a lookup table to lookup a key and retrieve the value into a field 
- Self Auditing 
  - Provides logs to detail activity performed within the tool stack. 
    - User Log In Success/Fail 
    - User Create Object Success/fail 
    - User Ran Search, with search details 
    - User Access Report Success/Fail 
  - Ability to trigger alarm when various internal components are overwhelmed, etc. 
- Detection Features 
  - Mute - Ability to silence matching alarms from firing for X time period 
  - Aggregation - Ability to group up alarms into one parent alarm in a given time period 
  - Trigger Action - Ability to execute a script/command for each alarm (automation) 
- Detection Methods
- Match Alarm 
  - Threshold Alarm (time and count) 
  - Cardinality / Distinct Count 
  - Blacklist (value found in lookup table) 
  - Whitelist Alarm (value NOT found in lookup table) 
  - Time of Day Alarm 
  - Day of Week Alarm 
- Visualizations 
  - Stack Counting bar chart 
  - Split Bar Chart 
  - Sortable/filterable tables 
  - Line Chart 
- Reporting 
  - CSV/JSON export of all fields of all results in a search 
  - Capable of providing UI-driven reports 
  - Capable of querying for programmatic access of reports and/or raw data 


### Desired Features 

- Single-Sign On Capability 
- API 
  - Ability to read from all fields of all events 
  - Support REST API 
- Privacy 
  - Ability to tokenize/strip/delete data based on privacy concerns (GDPR) - both hot and cold storage. 
- Training & Documentation 
  - Recorded video training included 
  - Certification program 
- Events
  - Ability to properly ingest NetFlow or netflow-like event feeds that require aggregating counts among muliple events to depict the full picture 
  - Ability to change character case in raw events 
  - Dynamically-built User and Entity asset database 
- Threat Intel 
  - Supports STIX/TAXII/FS-ISAC feed ingestion 
  - Supports removal of entries based on age 
- Lookup Tables 
  - Ability to create tables and reference them in rule logic (in, not in, contains, etc) 
  - Ability to pull lookup table files from an arbitrary web or file location supporting authentication, parse entries, and append /update lookup tables. 
  - Supports matching more than one field 
  - Supports removal of entries based on age 
  - Supports removal of entries based on "last observed/modified" counter 
- Self Auditing 
  - Ingests self auditing logs to make available as with other event sources 
- Alarming 
  - Ability to send alarms via email 
  - Ability to send alarms via api 
  - Ability to send alarms via text message 
  - Ability to send alarms via webook 
  - Ability to highlight alarms in user interface 
- Search/Queries 
  - Searches should be performed with access to edit query directly 
  - Provide suggestions to field names/syntax during query construction 
- Permalinks 
  - Permalinks generated for each rule and other key elements to allow collaboration 
- Detection Methods 
  - Rolling Whitelist Alarm (newly observed items) 
  - Dynamic Watchlists/Lookups 
  - Standard Deviation Alarm 
  - Levenshtein Score Alarm 
  - Shannon Entropy Score Alarm 
  - Combination of methods above and in Required section (e.g. chained/nested/grouped methods) 
  - Ratio Alarms (e.g. upload/download ratio) 
- Visualizations 
  - Exportable/Shareable Dashboards, Visualizations, etc. 
  - Visualizations allow "drilling in" or creating a new search based on variables in visualization 
  - GeoMap 
  - Interactive visualizations (click to add to filter or "drill down") 
  - Ability to apply a single search bar to all visualizations in a dashboard 
- Reporting 
  - On-demand CSV/JSON export of all fields of all events 
  - Capable of sending scheduled search results as a report via email (e.g. csv/xlsx) 
  - Capable of sending scheduled dashboard snapshot as a report via email (e.g. pdf) 
  - Ability to query database programmatically (e.g. via API) 
- Client Access 
  - Clients should have ability to view dashboards displaying only their own data 
  - Clients able to export events/alarms and other data filtered to their tenancy 
  - Ability to query database (filtered to their tenancy) through PowerBI to enrich monthly reports


## SIEM POC Testing 

SIEM POC testing should consider several elements of the interface and capabilities of the underlying technology. When testing, consider the following. 

- User Management 
  - Adding/removing MSSP-level accounts 
  - Client Onboarding/Offboarding 
  - Process to add a new client 
  - Impact on license/fees 
  - Process to add new client's users 
  - Process to ensure one client doesn't see another's data, alerts, etc. 
  - Process to remove a client and users 
  - Cost to maintain data for upwards of a year after offboarding 
- Event Feed Onboarding/Offboarding 
  - Process to add brand new event feed 
  - Process to build initial parsers 
  - Process to drop a feed 
  - Impact on license/fees 
- Parsing Adjustment 
  - Process to add/remove/adjust fields 
- Dashboard Creation 
  - Dashboard-level filtering (apply one filter at the top to all visualizations/tables 
  - Interactive results (e.g. drilling down, pivoting) 
  - Table limitations, sorting 
  - Visualization options in general 
  - Stack counting, including in reverse to permit long tail analysis 
  - Renaming of columns, rows, etc. 
  - Colorization options
- Dashboard Types 
  - Overall Event Feed Health (self monitoring) 
  - Dashboard per event feed with an overview of security-related events 
  - Dashboard summarizing recent alarms 
  - Dashboard(s) to assist in reviewing activity from a given account/ip/hostname. 
- Rules/Signatures 
  - Included rules 
  - Process of building and tuning rules of each "type" 
    - See https://github.com/TonyPhipps/SIEM/blob/master/Detection-Methods.md 
  - Silence options 
  - Acknowledgement or tagging options 
  - Rule Tuning 
    - Lookup lists for inclusion/exclusion in searches/alarms 
    - Lookup lists capable of holding more than one value with boolean AND among them 
    - Lookup lists add/remove based on rule, age, last modified, etc. 
  - Self-Monitoring Rules 
    - Alert when log sources stops feeding 
    - Alert when received time and generated times have a gap greater than 4hrs 
  
### Rule Capability Demo / Testing
| Type                  | Sample Psuedocode                                                                                                                |
| :-------------------- | :------------------------------------------------------------------------------------------------------------------------------- |
| Two Disparate Events  | When an endpoint has a threat intel watchlist hit and a firewall/AV threat event within 10min                                    |
| Rule + Event          | Any brute force SIEM rule followed by a successful logon event                                                                   |
| Two Disparate Rules   | Any two SIEM rules within a 10min window                                                                                         |
| Watchlist hit         | SIEM monitors a list that is updated by an external source or file read. The list is used to dynamically monitor events for hits |
| Match events to lists | Determine if a user is in a list of known-sensitive users before triggering a rule                                               |


Get a demo and/or perform testing on each of the detection methods here:
[.\Detection-Methods.md](.\Detection-Methods.md)



- Threat Feed 
  - Included Threat feeds 
  - Process of adding new threat feeds 
  - Threat feed types supported 
  - How rules leverage threat feeds 
- Alerting 
  - Possible notification types (syslog, email, web hooks, etc.) 
  - Alert temporary suppression/muting/aggregation
- API 
  - Query events 
  - Query alarms 
  - Create/Modify lookup lists 
  - Create/Modify rules 
- Data Backup and Retrieval 
  - Process to backup 
  - Process to recover from a back 
  - Time to perform recovery 
  - Time to parse, search, extract key fields Process to remove recovered data again Costs