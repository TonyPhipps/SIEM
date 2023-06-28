### Generic Event Feed Down
Check the latest 7 days for logs, then review the last one day. If a log source has missing logs for an entire day, recent will equal zero and is worth firing an alert to the administrator.
```
| tstats latest(_time) as latest where index=* earliest=-7d by sourcetype, index
| eval recent = if(latest > relative_time(now(),"-1d"),1,0)
| eval latest = strftime(latest,"%c")
| where recent = 0
| table index sourcetype latest recent
```

### Single Event Feed Down

Use a time window based on how frequently events are expected from each particular source.
```
| tstats dc(host) as "Host Count" count as "Event Count" where index="yourindex"
```
