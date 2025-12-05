Scheduled Task Created Modified Deleted
```sql
index=wineventlog sourcetype="WinEventLog*" EventCode IN (4698, 4699, 4702)
| rex field=_raw "<Command>(?<Command>.*?)<\/Command>"
| rex field=_raw "<Arguments>(?<Arguments>.*?)<\/Arguments>"
| rex field=_raw "<UserId>(?<TargetUser>.*?)<\/UserId>"
```


Service Created Modified
```sql
index=wineventlog sourcetype="WinEventLog*" EventCode IN (4697, 7040, 7045)
```


User Created Modified Deleted
```sql
index=wineventlog sourcetype="WinEventLog*" EventCode IN (4720, 4726, 4738)
```


User Object Enabled or Disabled
```sql
index=wineventlog sourcetype="WinEventLog*" EventCode IN (4722, 4725)
```


Domain Group Created Modified Deleted
```sql
index=wineventlog sourcetype="WinEventLog*" EventCode IN (4727, 4730, 4737, 4754, 4755, 4758)
```


Member Added or Removed to Domain Security Group
```sql
index=wineventlog sourcetype="WinEventLog*" EventCode IN (4728, 4729, 4756, 4757)
```


Local Group Created Modified Deleted
```sql
index=wineventlog sourcetype="WinEventLog*" EventCode IN (4731, 4734, 4735)
```


Member Added or Removed from Local Security Group
```sql
index=wineventlog sourcetype="WinEventLog*" EventCode IN (4732, 4733)
```


Domain Computer Object Created Modified Deleted
```sql
index=wineventlog sourcetype="WinEventLog*" EventCode IN (4741, 4742, 4743)
```


Member Added to Priveleged Local Group
- Administrators
- Backup Operators
- Cryptographic Operators
- Distributed COM Users
- Event Log Readers
- Hyper-V Administrators
- Network Configuration Operators
- Power Users
- Remote Desktop Users
- Remote Management Users
- Replicator
```sql
index=wineventlog sourcetype="WinEventLog*" EventCode IN (4732, 4733) Group_Name IN("Administrators", "Backup Operators", "Cryptographic Operators", "Distributed COM Users", "Event Log Readers", "Hyper-V Administrators", "Network Configuration Operators", "Power Users", "Remote Desktop Users", "Remote Management Users", "Replicator")
```


Member Added to privleged Domain Group
- Account Operators
- Administrators
- Backup Operators
- Cert Publishers
- Cryptographic Operators
- Distributed COM Users
- DnsAdmins
- Domain Admins
- Enterprise Admins
- Group Policy Creator Owners
- Incoming Forest Trust Builders
- Network Configuration Operators
- Print Operators
- Schema Admins
- Server Operators
```sql
index=wineventlog sourcetype="WinEventLog*" EventCode IN (4728, 4729, 4732, 4733, 4756, 4757) Group_Name IN("Account Operators", "Administrators", "Backup Operators", "Cert Publishers", "Cryptographic Operators", "Distributed COM Users", "DnsAdmins", "Domain Admins", "Enterprise Admins", "Group Policy Creator Owners", "Incoming Forest Trust Builders", "Network Configuration Operators", "Print Operators", "Schema Admins", "Server Operators")
```


Domain GPO Created or Modified
```sql
index=wineventlog sourcetype="WinEventLog*" EventCode IN (5136, 5137, 5141)
```


Domain GPO Linked or Unlinked
```sql
index=wineventlog sourcetype="WinEventLog*" EventCode IN (5136) LDAP_Display_Name="gPLink" 
| rex field=_raw "Operation:\s+Type:\s?+(?<OperationType>.+)"
```


User Account Password Changed
- Source and target are typically both the same user.
```sql
index=wineventlog sourcetype="WinEventLog*" EventCode=4723 TargetUserName="*$"
```


User Account Password Reset
- Source and target are typically different users.
```sql
index=wineventlog sourcetype="WinEventLog*" EventCode=4724 TargetUserName="*$"
```


Software Installed on Host
```sql
index=wineventlog (sourcetype="WinEventLog*" OR source="*AppXDeployment-Server*") 
(EventCode=11707 OR EventCode=1033 OR EventCode=401) OR (EventCode=4688
(New_Process_Name="*\\setup.exe" OR New_Process_Name="*\\install.exe" OR New_Process_Name="*\\*.msi" OR CommandLine="* /install *" OR CommandLine="* -install *"))
```


Autorun Created or Modified
```sql

```


Hosts File Modified
```sql

```


