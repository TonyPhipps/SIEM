### Review EVTX Files
- What is the size of the event log file? Is it at least as large as policy requires?
- What is the oldest event recorded? Is it at least as old as policy requires?
- Which Event IDs can be filtered out, having no value to the investigation?

#### Security
Note any of these Event IDs
- 1102 events present (log cleared)

#### System
Note any of these Event IDs
```
12,13,27,33,42,105,107,1074,7045
```

- 12 (The operating system started at system time xxxx)
- 13 (The operating system is shutting down at system time xxxx)
- 27 (Network link is disconnected)
- 33 (Network link has been established)
- 41 (The system has rebooted without cleanly shutting down first)
- 42 (The system is entering sleep.)
- 105 (Power source change.) Could be a laptop plugging/unplugging power supply.
- 107 (The system has resumed from sleep.)
- 1074 (Power off intiated OR initiated the restart of computer)
- 7045 (A service was installed in the system.)

