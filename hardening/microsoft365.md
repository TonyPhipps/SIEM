# MFA and Security Defaults

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

## MFA For Just Admins via Conditional Access
To create an MFA conditional access policy in your directory for admins:
- Sign in to the Azure portal as a security administrator, Conditional Access administrator, or global administrator.
- Browse to Azure Active Directory > Security.
- Browse to Protect > Conditional Access
- Click New Policy
- Give the policy a name and under the users and groups blade select Directory Roles. From the drop down, select Global Administrator at a minimum. Add other privileged roles like User Administrator or Security Administrator.
- Select All Cloud Apps
- Skip the conditions section and in the Grant section,select Require Multi-factor Authentication
- Enable the policy and click Create




# Additional Resources
- https://usc.pax8.com/resource/display/33588
- https://docs.microsoft.com/en-us/azure/active-directory/fundamentals/concept-fundamentals-security-defaults
