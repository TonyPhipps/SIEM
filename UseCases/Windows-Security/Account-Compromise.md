## Account Compromise
- Anomalous User Interactive Logon
- Service Account Activity Originating from Unauthorized System
- User Logon More than an Hour Outside Expected Times
- User Logged In to Multiple Systems Interactively
- Account Use After Employee End Date

#### Requirements
- Event logs attributable to user accounts (4624, 4625, 4688, etc.)
  - Datetime stamps
  - Source System
  - Destination System

#### Methods
- Rolling Whitelist Alert
- Threshold Alert
- Blacklist Alert
- Whitelist Alert

#### Responses