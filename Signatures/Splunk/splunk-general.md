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

### Auto Pruning Event Feed Down
These two combined ensures only stabilized sourectypes generate errors when they are down.

Lookup Table Report:
- Schedule: Run Every Week on a day at a time
- Time Range: Last 60d
```
| eventcount summarize=false index=* 
| stats sum(count) as IndexEventCount by index 
| where IndexEventCount > 0 
| map 
    [| tstats count WHERE index=$index$ by _time sourcetype span=1d 
    | timechart sum(count) as count by sourcetype limit=0 span=1d 
    | fillnull value=0 
    | untable _time sourcetype count
    | stats perc10(count) as Perc10EventCount, avg(count) as AvgEventCount, sum(count) as TotalEventCount, min(_time) as StartTime, max(_time) as EndTime by sourcetype 
    | eval index="$index$" ] maxsearches=1000 ``` timechart & untable required to create time bins with 0 events ```
| table index, sourcetype, StartTime, EndTime, *EventCount
| fieldformat EndTime = strftime(EndTime, "%F %T %Z") 
| fieldformat StartTime = strftime(StartTime, "%F %T %Z") 
| outputlookup eventcount_stats.csv override_if_empty=false
```

Saved Search (alert):
- Time Range: Last 24h
- Cron Expression to run every 12 hours: 0 */12 * * *
- Expires: 7d
```
| eventcount summarize=false index=* 
| stats sum(count) as IndexEventCount by index 
| where IndexEventCount > 0 
| map 
    [| metadata type=sourcetypes index="$index$" 
    | eval index="$index$"] maxsearches=1000 
| lookup eventcount_stats.csv index sourcetype OUTPUT Perc10EventCount 
| where totalCount > 100 ``` Do not monitor empty or temporarily used sourcetypes```
| where Perc10EventCount >= 5 ``` Do not monitor event types that produce infrequent or a very small number of results, as they can produce an overly sensitive alert unrelated to the actual data pipeline health ```
| where recentTime > relative_time(now(),"-7d") ``` Do not monitor sourcetypes not seen in 7 days```
| where recentTime < relative_time(now(),"-1d") ``` Alert on sourcetypes not seen in over 1 day```
| eval age = now()-recentTime
| eval TimeSince = tostring(age,"duration") 
| convert timeformat="%F %T %Z" ctime(lastTime), ctime(recentTime), ctime(firstTime) 
| eval Perc10EventCount = round(Perc10EventCount,1) 
| fields index sourcetype TimeSince Perc10EventCount recentTime lastTime firstTime totalCount
```