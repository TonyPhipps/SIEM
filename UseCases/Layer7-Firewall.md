SIEM Use Cases for Layer 7 Firewalls. Note that Layer 3 Firewall use cases also apply here.

- [Abnormal Expired Certificates](#Abnormal-Expired-Certificates)
- [Abnormal Self-Signed Certificates](#Abnormal-Self-Signed-Certificates)
- [Abnormal certificate Algorithms/Sizes](#Abnormal-certificate-AlgorithmsSizes)
- [Abnormal Certificates Validity Length](#Abnormal-Certificates-Validity-Length)
- [Certificates with Abnormal Common Name Fields](#Certificates-with-Abnormal-Common-Name-Fields)
- [Certificates with Blank Fields that are Commonly Filled](#Certificates-with-Blank-Fields-that-are-Commonly-Filled)
- [Certificates with Invalid Country Codes / States](#Certificates-with-Invalid-Country-Codes--States)
- [Newly-observed Protocol in Use](#Newly-observed-Protocol-in-Use)
- [Protocol Use Over Non-Standard Port](#Protocol-Use-Over-Non-Standard-Port)
- [Web requests Directly to IP Address](#Web-requests-Directly-to-IP-Address)
- [Newly Observed File Transfer Protocol Use](#Newly-Observed-File-Transfer-Protocol-Use)
- [Unauthorized X-Forwarded-For Address](#Unauthorized-X-Forwarded-For-Address)

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