- [Enable MFA](#enable-mfa)
  - [Enable MFA For Just Admins](#enable-mfa-for-just-admins)
- [Block Legacy Authentication](#block-legacy-authentication)
- [Enable Self-Service Password Reset](#enable-self-service-password-reset)
- [Do Not Expire Passwords](#do-not-expire-passwords)
- [Delete/block accounts not used in last 30 days](#deleteblock-accounts-not-used-in-last-30-days)
- [Designate More than 1 Global Admin but fewer than 5](#designate-more-than-1-global-admin-but-fewer-than-5)
- [Do not allowusers to grant consent to unmanaged applications](#do-not-allowusers-to-grant-consent-to-unmanaged-applications)
- [Additional Resources](#additional-resources)

# Enable MFA

Security defaults make it easier to help protect your organization from these attacks with preconfigured security settings:
- Requiring all users to register for Azure AD Multi-Factor Authentication.
- Requiring administrators to perform multi-factor authentication.
- Blocking legacy authentication protocols.
- Requiring users to perform multi-factor authentication when necessary.
- Protecting privileged activities like access to the Azure portal.

Compliance Controls:
- CSA CCM301; Control DSI-02
- FedRAMP Moderate; Control IA-3
- GDPR; Control 6.6.5
- ISO 27018:2014; Control C.9.4.2, Control A.10.8
- NIST 800-171; Control 3.5.2
- NIST 800-53; Control IA-3

To enable security defaults in your directory:
- Sign in to the Azure portal as a security administrator, Conditional Access administrator, or global administrator.
- Browse to Azure Active Directory > Properties.
- Select Manage security defaults.
- Set the Enable security defaults toggle to Yes.
- Select Save.

## Enable MFA For Just Admins
To create an MFA conditional access policy in your directory for admins:
- Sign in to the Azure portal as a security administrator, Conditional Access administrator, or global administrator.
- Browse to Azure Active Directory > Security.
- Browse to Protect > Conditional Access
- Click New Policy
- Give the policy a name and under the users and groups blade select Directory Roles. From the drop down, select Global Administrator at a minimum. Add other privileged roles like User Administrator or Security Administrator.
- Select All Cloud Apps
- Skip the conditions section and in the Grant section,select Require Multi-factor Authentication
- Enable the policy and click Create

# Block Legacy Authentication
Legacy authentication is more susceptible to password spray attacks or brute force attacks because you cannot layer on MFA. It is advised to block all legacy authentication methods. Note that if you have any printers/copiers/scanners or IMAP accounts used for ticketing, you should update those protocols before blocking legacy auth.

To block legacy authentication via security defaults in your directory:
- Ensure Security Defaults are enabled (see above)
- Sign in to the Azure portal as a security administrator, Conditional Access administrator, or global administrator.
- Browse to Azure Active Directory > Security.
- Browse to Protect > Conditional Access
- Click New Policy
- Name your policy and scope to all users
- In the Cloud apps or actions blade, click All cloud apps.
  - *NOTE* If you do have applications that use legacy auth, you could exclude them here to give yourself more time to update the protocol
- In the conditions section, click Client Apps > Mobile Apps and Desktop Clients > Other Clients
- In the Grant blade, leave the setting at Block Access
- Enable the policy and click Create


# Enable Self-Service Password Reset
- Go to the Azure Active Directory Admin Portal and click on the Password Reset 
- Enable for All users or use Selected to exclude some user groups
- In the Authentication Methods tab, define settings users may put in place. These may be the same selected for MFA, with the addition of "Security questions"
- In the Registration tab, define the number of days before users are asked to confirm their recovery options and also get alerts if you want to know when someone has reset their password.

# Do Not Expire Passwords

Compliance Controls
- FedRAMP Moderate; Control AC-7(a)
- NIST 800-171; Control 3.1.8
- NIST 800-53; Control AC-7(a)

# Delete/block accounts not used in last 30 days

Compliance Controls
- FedRAMP Moderate; Control AC-2(3)
- NIST 800-53; Control AC-2(3)

# Designate More than 1 Global Admin but fewer than 5

Compliance Controls
- CSA CCM301; Control DSI-02
- FedRAMP Moderate; Control IA-3
- GDPR; Control 6.6.5
- ISO 27018:2014; Control C.9.4.2, Control A.10.8
- NIST 800-171; Control 3.5.2
- NIST 800-53; Control IA-3

# Do not allowusers to grant consent to unmanaged applications

Compliance Controls
- FedRAMP Moderate; Control CM-8(3)(a)
- NIST 800-53; Control CM-8(3)(a)
- NIST CSF; Control ID.AM-1


# Additional Resources
- https://usc.pax8.com/resource/display/33588
- https://docs.microsoft.com/en-us/azure/active-directory/fundamentals/concept-fundamentals-security-defaults
