### Aggregate Count
AKA Stack Count, Long Tail Analysis. Number of times a value or set of values has occurred, usually in a table or bar chart.

### Blacklist Alert
A alert is generated for each instance. Grouping multiple alerts occurring in a short time frame is usually a good idea. Blacklists can have a list of exceptions.

### Whitelist Alert
Compare incoming values against a list of known-good entries. If no match is found, fire an alert.

### [Levenshtein Score](https://en.wikipedia.org/wiki/Levenshtein_distance) Alert
(AKA Edit Distance) A score representing how similar two strings are. In the SIEM, consider this for domain typo-squatting, naming files similarly to recognizable files, sending email from a closely-named, fake user, etc.

### Rolling Whitelist Alert
Building a list of observed strings over a period of time in a given field, then alerting on anything not in the list. New items may also be added to the list (or not).

### Shannon Entropy Score Alert
(AKA Frequency Scoring) A score representing the randomness of a string. May be used in a SIEM to detect domains created by a [Domain-Generation Algorithm (DHA)](https://en.wikipedia.org/wiki/Domain_generation_algorithm)

### Threshold Alert
Counting matching occurrences based on a filter, then alerting when a specified number has been met or surpassed.