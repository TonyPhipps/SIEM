### Review EVTX Files
- What is the size of the event log file? Is it at least as large as policy requires?
- What is the oldest event recorded? Is it at least as old as policy requires?
- Which Event IDs can be filtered out, having no value to the investigation?

#### Security
- Review any Security Event ID 1102 events present (log cleared).

#### System
- Note any Event ID 1074 (Power off intiated)
- Note any Event ID 27 (Network link is disconnected)
- Note any Event ID 33 (Network link has been established)
- Note any Event ID 13 (The operating system is shutting down at system time xxxx)
- Note any Event ID 12 (The operating system started at system time xxxx)
