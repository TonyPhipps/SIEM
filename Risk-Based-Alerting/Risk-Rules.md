These rules are recommended to generate risk against risk objects (asset or identity).

- Configuration Changes
  - Software installed, modified, or uninstalled
  - Hardware installed, modified, or uninstalled
  - Scheduled task created, modified, or deleted
  - Service created, modified, or deleted
  - Autorun created, modified, or deleted
  - "Hosts file" created, modified, or deleted
  - File Share created, modified, or deleted
  - Port opening created, modified, or deleted
  - Network Appliance configuration change
        
- Account Changes
  - Account created, modified, or deleted
  - Password changed
  - Member added or removed to Group

- Unexpected Behavior
  - Activity outside business hours
  - Use of "LOLBINs" / "LOLBAS"
  - Suspicious commandline execution
  - Outbound Internet Connection Attempt
        
- Known-Bad Behavior
  - Antivirus and other security alerts
  - Known-malicious commandline execution
  - Known-bad properties (file name, hash, etc)

- Baseline Deviations
  - Newly observed host
  - Newly observed user
  - Newly observed endpoint
  - Newly observed Process executed
  - Newly observed DLL executed
  - Newly observed connection pair (src -> dst)
  - Newly observed Process network connectivity
  - Newly observed User Logon on Host