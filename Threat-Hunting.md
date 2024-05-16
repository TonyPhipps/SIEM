
# Threat Hunting
The main goals of threat hunting are to
- detect compromises that existing systems failed to detect.
- minimize the impact of breaches by shrinking the breach detection gap.
- convert hunts into automated detections.

Other benefits of threat hunting are: 
- Identification of gaps in visibility necessary to detect and respond to a specific attacker TTP. 
- Identification of gaps in detection. 
- Development of new monitoring use cases and detection analytics. 
- Uncovering new threats and TTPs that feedback to the threat intelligence process. 
- Recommendations on new preventive measures.

Threat hunting should focus on events outside the traditional detection capabilities, and may uncover missed or misinterpreted events during the hunt that can be used to improve detection and further train analysts. Threat hunting assumes that there already was a breach and that it has not been identified yet.

# Models
- Hypothesis-Driven
  - A supposition is made about potential threats and their activities that may be present on the organization’s network, then data and analysis are used to confirm or deny suspicion.
- Intel-Driven
  - Information on TTPs and actor capabilities is where threat intelligence comes in play. Threat intelligence can be used to determine TTPs of attackers. Thus, threat hunting uses threat intelligence in its process. In turn, threat hunting activities may uncover new TTPs that have not been identified or disclosed yet. Hence, threat hunting can provide unique insights into threat actor capabilities and generate threat intelligence.
- Baseline Hunts
  - A proactive approach to threat detection that involves setting up a baseline of normal activity, monitoring that baseline for deviations, and investigating any suspicious activity.
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
- Splunk's PEAK (Plan, Execute, Act, all with Knowledge)

# Hunting Phases
## Planning Phase
-	Develop a hypothesis / Identify impactful intelligence / Establish a baseline
- Research the involved technologies, tactics, techniques, threat actors
-	Determine relevant data sources
- Determine scope of time
- Plan the hunt

## Execution Phase
-	Query data sources
- Ensure data/results are clean
-	Investigate/Analyze
- Escalate any critical findings immediately
- Test and refine hypothesis, if appropriate

## Action Phase
- Document the hunt itself
-	Document findings
-	Create detections
-	Improve process
- Report findings
- Plan to redo hunt or scrap it

General Examples:
- An adversary acheived [tactic] via/to [technique].
- An adversary exploited the vulnerbility described in [CVE/Vulnerability].
- [Group/Campaign] activity has compromised an endpoint.
- A(n) [Type] account has been compromised.
- An adversary is using covert channels based on [protocol] to exfiltrate data from the organization
- An adversary is levering [software] to automatically exfiltrate sensitive data from the organization.
- An adversary is levering [hardware] to automatically exfiltrate sensitive data from the organization.
- An adversary is using existing user accounts for lateral movement.
- An adversary is leveraging web shells to retain access to the infrastructure.
- An adversary is using malware with filenames that are similar to existing system binaries to avoid detection.
- An adversary is using fileless malware based on memory injections to avoid detection of malware on disk.
- An adversary is using persistence mechanisms without adding files to the operating system.
- An adversary is using Kerberoasting attack techniques to obtain valid credentials.




# Resources
- https://hackforlab.com/threat-hunting-scenario/
- https://www.threathunting.net/files/hunt-evil-practical-guide-threat-hunting.pdf
- https://www.betaalvereniging.nl/en/safety/tahiti/
- https://securityintelligence.com/posts/threat-hunting-guide/
- https://www.ibm.com/topics/threat-hunting
