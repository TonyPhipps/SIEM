## Brute Force
MITRE ATT&CK Framework: [Brute Force (T1110)](https://attack.mitre.org/techniques/T1110/)

An influx of failed logon attempts indicates a possible brute force attempt on an account.

##### Requirements
- Enable "Audit Logon Events > Failure" via local security or GPO
- SecPol > Local Policies > Audit Policy > Audit Logon Events > Check Failure
- Ensure event ID's 4625 and 4648 from the Windows Security log are collected/forwarded appropriately.

##### Methods
- 4624- Use a Threshold Alert to indicate when > 5 failures occurred on a single account in 1 hour.
- 4648 - Use a Threshold Alert to indicate when > 5 failures occurred from one source account to more than 1 destination account in 1 hour.

#### Responses
- Contact the account owner and determine if the issue is a configuration error.
- Block the traffic with an in-line security device.
- Block the traffic with the local firewall or other security software.

#### Bonuses
- This method may pick up failed service accounts repeatedly trying to "do their job" with a locked account. Notifying the appropriate admin is a good idea here.
