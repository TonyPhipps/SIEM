Event Feed Down
```
| tstats dc(host) as "Host Count" count as "Event Count" where index="yourindex"
```
