This goes over ADSI SACL settings to enable specific logging types that will improve logging for detections without opening the 5136/5137 logging floodgates.

# PowerShell
```ps1
# 1. Setup Domain and Partition Information
$DomainRoot = (Get-ADDomain).DistinguishedName
$DomainDNS = (Get-ADRootDSE).namingContexts | Where-Object {$_ -like "DC=DomainDnsZones*"}
$Everyone = New-Object System.Security.Principal.SecurityIdentifier("S-1-1-0")
$Guids = @{
    "dnsRecord"                                = "e0fa5628-3a84-4e0e-9b56-177ef47f0d01"
    "dNSTombstoned"                            = "96213710-5349-4f76-80f4-52d09559c3c1"
    "msDS-AllowedToDelegateTo"                 = "254477ee-338b-47e2-a0e2-632b85994f27"
    "msDS-AllowedToActOnBehalfOfOtherIdentity" = "3c360980-06cd-49ee-8a30-f8f43577d6ba"
    "userAccountControl"                       = "bf967a68-0de6-11d0-a285-00aa003049e2"
    "gPLink"                                   = "f30e3bc2-9ff0-11d1-b603-0000f80367c1"
    "gPOptions"                                = "f30e3bc1-9ff0-11d1-b603-0000f80367c1"
    "dnsNode"                                  = "e0fa562b-3a84-4e0e-9b56-177ef47f0d01" # Object Class GUID
}
function Add-AttributeAudit {
    param($Path, $TargetObjectGuid, $AttributeGuid, $Inheritance = "Descendents")
    $Acl = Get-Acl -Path "AD:\$Path" -Audit
    # Create the rule: Principal, Rights, Type, Inheritance, InheritedObjectGuid, ObjectGuid
    $Rule = New-Object System.Security.AccessControl.ActiveDirectoryAuditRule(
        $Everyone, "WriteProperty", "Success", $Inheritance, $AttributeGuid, $TargetObjectGuid
    )
    $Acl.AddAuditRule($Rule)
    Set-Acl -Path "AD:\$Path" -AclObject $Acl
}
try {
    Write-Host "[*] Applying Domain Root Audits (Users, Computers, OUs)..." -ForegroundColor Yellow
    Add-AttributeAudit -Path $DomainRoot -AttributeGuid $Guids["msDS-AllowedToDelegateTo"]
    Add-AttributeAudit -Path $DomainRoot -AttributeGuid $Guids["msDS-AllowedToActOnBehalfOfOtherIdentity"]
    Add-AttributeAudit -Path $DomainRoot -AttributeGuid $Guids["userAccountControl"]
    Add-AttributeAudit -Path $DomainRoot -AttributeGuid $Guids["gPLink"]
    Add-AttributeAudit -Path $DomainRoot -AttributeGuid $Guids["gPOptions"]
    Write-Host "[*] Applying DNS Partition Audits (MicrosoftDNS)..." -ForegroundColor Yellow    
    $DNSPath = "CN=MicrosoftDNS,$DomainDNS"
    $DNSAcl = Get-Acl -Path "AD:\$DNSPath" -Audit
    $CreateRule = New-Object System.Security.AccessControl.ActiveDirectoryAuditRule(
        $Everyone, "CreateChild", "Success", "All", $Guids["dnsNode"]
    )
    $DNSAcl.AddAuditRule($CreateRule)
    Set-Acl -Path "AD:\$DNSPath" -AclObject $DNSAcl
    Add-AttributeAudit -Path $DNSPath -AttributeGuid $Guids["dnsRecord"]
    Add-AttributeAudit -Path $DNSPath -AttributeGuid $Guids["dNSTombstoned"]
    Write-Host "[!] Audit Policy Configuration Complete." -ForegroundColor Green
}
catch {
    Write-Error "Failed to apply audits: $($_.Exception.Message)"
}
```


# Manual
Open ADSI Edit (adsiedit.msc).
Right-click the container (or the specific zone) and select Properties.
Go to the Security tab > Advanced > Auditing tab.

For each of the groups below, click Add, scroll to the bottom and click Clear All, THEN configure as instructed.

Principal: Everyone
Type: Success
Applies to: Descendant dnsNode Objects
Settings: Write dnsRecord; Write dNSTombstoned

Principal: Everyone
Type: Success
Applies to: Descendant User Objects
Settings: Write msDS-AllowedToDelegateTo, Write msDS-AllowedToActOnBehalfOfOtherIdentity, Write userAccountControl

Principal: Everyone
Type: Success
Applies to: Descendant Computer Objects
Settings: Write msDS-AllowedToDelegateTo, Write msDS-AllowedToActOnBehalfOfOtherIdentity, Write userAccountControl

Principal: Everyone
Type: Success
Applies to: Descendant Organizational Unit objects
Settings: Write gPLink, Write gPOptions



Open ADSI Edit (adsiedit.msc).
Right-click the MicrosoftDNS container and select Properties.
Go to the Security tab > Advanced > Auditing tab.
Connect to the DomainDnsZones partition (or the partition where your DNS lives).
Navigate to CN=MicrosoftDNS,DC=DomainDnsZones,DC=yourdomain,DC=com.

For each of the groups below, click Add, scroll to the bottom and click Clear All, THEN configure as instructed.

Principal: Everyone
Type: Success
Applies to: This object and all descendant objects
Settings: Create dnsNode objects

