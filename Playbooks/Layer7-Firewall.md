TODO: Merge into Tactics md's

SIEM detection content for Layer 7 Firewalls. Note that Layer 3 Firewall detection content also apply here.

- [Abnormal Expired Certificates](#abnormal-expired-certificates)
- [Abnormal Self-Signed Certificates](#abnormal-self-signed-certificates)
- [Abnormal certificate Algorithms/Sizes](#abnormal-certificate-algorithmssizes)
- [Abnormal Certificates Validity Length](#abnormal-certificates-validity-length)
- [Certificates with Abnormal Common Name Fields](#certificates-with-abnormal-common-name-fields)
- [Certificates with Blank Fields that are Commonly Filled](#certificates-with-blank-fields-that-are-commonly-filled)
- [Certificates with Invalid Country Codes / States](#certificates-with-invalid-country-codes--states)
- [Newly-observed Protocol in Use](#newly-observed-protocol-in-use)
- [Protocol Use Over Non-Standard Port](#protocol-use-over-non-standard-port)
- [Web requests Directly to IP Address](#web-requests-directly-to-ip-address)
- [Newly Observed File Transfer Protocol Use](#newly-observed-file-transfer-protocol-use)
- [Unauthorized X-Forwarded-For Address](#unauthorized-x-forwarded-for-address)

# Abnormal Expired Certificates
- Aggregate Count


# Abnormal Self-Signed Certificates
- Aggregate Count


# Abnormal certificate Algorithms/Sizes
- Aggregate Count


# Abnormal Certificates Validity Length
- Blacklist Alert
- Suggest looking for 5 years and older


# Certificates with Abnormal Common Name Fields
- Blacklist Alert


# Certificates with Blank Fields that are Commonly Filled
- Blacklist Alert


# Certificates with Invalid Country Codes / States
- Blacklist Alert


# Newly-observed Protocol in Use
- Rolling Whitelist


# Protocol Use Over Non-Standard Port
- Blacklist


# Web requests Directly to IP Address
- Blacklist Alert
- AKA Naked IP


# Newly Observed File Transfer Protocol Use
- Rolling Whitelist Alert
- FTP, TFTP, SSH, etc

# Unauthorized X-Forwarded-For Address
- X-Forwarded-For specifies the proxy forwarding 
- Blacklist