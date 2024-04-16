
# Threat Hunting
The main purpose of threat hunting is to reduce the time required to find traces of attackers that  have  already  compromised  the  IT  environment.  By  finding  these  traces  as  soon  as 
possible, the impact of breaches to the organization can be minimized. Reduction of the breach detection gap is another important goal.

Other benefits of threat hunting are: 
- Identification of gaps in visibility necessary to detect and respond to a specific attacker TTP. 
- Identification of gaps in detection. 
- Development of new monitoring use cases and detection analytics. 
- Uncovering new threats and TTPs that feedback to the threat intelligence process. 
- Recommendations on new preventive measures.

Threat hunting should focus on events outside the traditional detection capabilities, and may uncover missed or misinterpreted events during the hunt that can be used to improve detection and further train analysts. Threat hunting assumes that there already was a breach and that it has not been identified yet.

# Models
- Intel-based
  - Information on TTPs and actor capabilities is where threat intelligence comes in play. Threat intelligence can be used to determine TTPs of attackers. Thus, threat hunting uses threat intelligence in its process. In turn, threat hunting activities may uncover new TTPs that have not been identified or disclosed yet. Hence, threat hunting can provide unique insights into threat actor capabilities and generate threat intelligence.
- Hypothesis-based
- Custom/on-demand

# Techniques
- Indicator Search
- Stack Counting (total count-based, AKA long-tail analysis)
- Clustering (time-based counting)
- Grouping (e.g. group up endpoints, then use other techniques)
- Ratios (e.g. request/response, upload/download, success/failure)
- Standard deviation
  
# Frameworks
- MITRE ATT&CK
- Targeted Hunting integrating Threat Intelligence (TaHiTI)


# Hypotheses-Based
Planning Phase
- Gather intelligence
-	Develop a hypothesis
-	Determine data sources

Execution Phase
-	Query data sources
-	Follow breadcrumbs
-	Test hypothesis

Reporting Phase
-	Distill findings
-	Create detections
-	Improve process

Focusing on hypothesis that are unlikely to boil down into a signature to automate.

General Examples:
- An adversary acheived <tactic> via/to <technique>.
- An adversary exploited the vulnerbility described in <CVE/Vulnerability>.
- <Group/Campaign> activity has compromised an endpoint.
- A(n) <Type> account has been compromised.
- An adversary is using covert channels based on DNS to exfiltrate data from the organization
- An adversary is levering PowerShell to automatically exfiltrate sensitive data from the organization.
- An adversary is using existing user accounts for lateral movement
- An adversary is leveraging web shells to retain access to the infrastructure
- An adversary is using malware with filenames that are similar to existing system binaries to avoid detection
- An adversary is using fileless malware based on memory injections to avoid detection of malware on disk
- An adversary is using persistence mechanisms without adding files to the operating system.
- An adversary is using Kerberoasting attack techniques to obtain valid credentials




# Resources
- https://hackforlab.com/threat-hunting-scenario/
- https://www.threathunting.net/files/hunt-evil-practical-guide-threat-hunting.pdf
- https://www.betaalvereniging.nl/en/safety/tahiti/
- https://securityintelligence.com/posts/threat-hunting-guide/
- https://www.ibm.com/topics/threat-hunting
