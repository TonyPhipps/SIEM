### Threshold Alert
 -Aggregating on specific fields and alerting when the total count of any set exceeds a given threshold.

### Aggregate Count
(AKA Stack Count; AKA Long Tail Analysis)
- Aggregating on specific fields and showing the total count of each set. Presented in the form of a table, bar chart, or pie chart and visually monitored.

### Blacklist Alert
- An alert is generated for each match.
- -OR- comparing against of list of known-bads and alerting for each match.

### Whitelist Alert
- An alert is generated when no match is observed.
- -OR- Comparing against a list of known-good entries, alert if no match is found.

### Rolling Whitelist Alert
- Automatically adding all activity to a time-decaying list and alerting when a unique entry is observed.

### [Levenshtein Score](https://en.wikipedia.org/wiki/Levenshtein_distance) Alert
(AKA Edit Distance) 
- Calculating the similarity between observed words against a list of words of interest and alerting when the score exceeds a given threshold.

### [Shannon Entropy Score](https://en.wikipedia.org/wiki/Entropy_(information_theory)) Alert
(AKA Frequency Scoring)
- Calculating the randomness of strings and alerting when the score exceeds a given threshold.

