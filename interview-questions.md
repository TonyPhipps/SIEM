# General
- Why are you looking for work?
- Could you describe the perfect job for you at this point in your career?
- If you were to be given someone to mentor, how would you go about training them?
- As technology develops and processes and requirements change, how do you ensure your team is kept up to date and delivers a uniform, professional service?
- Can you give an example of a task you automated to save time or speed up work?
- Can you give an example of a signature that stemmed from a threat hunt you performed?
- Can you explain the MITRE ATT&CK framework and how you've leveraged it?
- If you were given a blank check to set up a SOC with the primary responsibility of detecting and responding to security incidents, what would your setup look like?
  - Technologies used? (AV, EDR, IDS, SIEM, ticketing, etc)
  - Logs pulled?
  - How do you make use of logs?


# Forensics
- If you could run one tool or suite against a dead box in a forensics case, what would you choose and why?
- what is your go-to approach for developing a timeline for an executive report?
- What is ShimCache/AppCompatCache?
  - Application compatibility artifact
  - Only contains info until the most recent shutdown – rest is stored in memory
  - Chronologically stored with the most recent at the top
- What is AmCache?
  - C:\Windows\appcompat\Programs\Amcache.hve
  - Stores metadata related to PE execution
  - Records SHA1 and full file path
- What makes prefetch so valuable?
- Have you ever analyzed the SRUM before?
- What is MRUListEx?
- What is a Mutex/Mutant?
  - Indicator used by malware to determine if a host has been infected before
  - Digital vaccine


# Incident Response
- How would you investigate an incident where a webserver was found to be potentially have a webshell?
- What are some key sensitive files on a Windows box?
  - SAM file
  - User Registry Hives
- What you would do in a potential ransomware incident? eg. A company server is online and confirmed to have been hit with ransomware. You’re on call and now have to direct the situation – what do you do first?
