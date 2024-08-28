```
[SourceType Outage Dynamic]
action.email = 1
action.email.inline = 1
action.email.sendresults = 1
action.email.to = someone@example.com
action.email.useNSSubject = 1
action.webhook.enable_allowlist = 0
alert.expires = 7d
alert.suppress = 0
alert.track = 0
counttype = number of events
cron_schedule = 0 */12 * * *
description = Triggered when sourcetypes/index pairs that typically produce data have stopped, ignoring sourcetypes that do not reliably produce events.
dispatch.earliest_time = -24h@h
dispatch.latest_time = now
display.general.type = statistics
display.page.search.mode = verbose
display.page.search.tab = statistics
enableSched = 1
quantity = 0
relation = greater than
request.ui_dispatch_app = search
request.ui_dispatch_view = search
search = | eventcount summarize=false index=* \
| stats sum(count) as IndexEventCount by index \
| where IndexEventCount > 0\
| map [|metadata type=sourcetypes index="$index$" | eval index="$index$"] maxsearches=1000\
| lookup eventcount_stats.csv index sourcetype OUTPUT Perc10EventCount\
| where totalCount > 100 ``` Do not monitor empty or temporarily used sourcetypes```\
| where Perc10EventCount >= 5 ``` Do not monitor event types that produce infrequent or a very small number of results, as they can produce an overly sensitive alert unrelated to the actual data pipeline health ```\
| where recentTime > relative_time(now(),"-7d") ``` Do not monitor sourcetypes not seen in 7 days```\
| where recentTime < relative_time(now(),"-1d") ``` Alert on sourcetypes not seen in over 1 day```\
| eval age = now()-recentTime\
| eval TimeSince = tostring(age,"duration")\
| convert timeformat="%F %T %Z" ctime(lastTime), ctime(recentTime), ctime(firstTime)\
| eval Perc10EventCount = round(Perc10EventCount,1)\
| fields index sourcetype TimeSince Perc10EventCount recentTime lastTime firstTime totalCount
```


```
[LookupTable - eventcount_stats.csv]
action.email.useNSSubject = 1
action.webhook.enable_allowlist = 0
alert.track = 0
cron_schedule = 0 21 * * 3
dispatch.earliest_time = -30d@d
dispatch.latest_time = now
display.general.type = statistics
display.page.search.mode = fast
display.page.search.tab = statistics
display.visualizations.show = 0
enableSched = 1
request.ui_dispatch_app = search
request.ui_dispatch_view = search
search = | eventcount summarize=false index=* \
| stats sum(count) as IndexEventCount by index \
| where IndexEventCount > 0\
| map [| tstats count WHERE index=$index$ by _time sourcetype span=1d | timechart sum(count) as count by sourcetype limit=0 span=1d | fillnull value=0 | untable _time sourcetype count | stats perc5(count) as Perc05EventCount, perc10(count) as Perc10EventCount, perc25(count) as Perc25EventCount, perc50(count) as Perc50EventCount, perc95(count) as Perc95EventCount, avg(count) as AvgEventCount, sum(count) as TotalEventCount, min(_time) as StartTime, max(_time) as EndTime by sourcetype | eval index="$index$" ] maxsearches=1000 ``` timechart & untable required to create time bins with 0 events ```\
| table index, sourcetype, StartTime, EndTime, *EventCount\
| fieldformat EndTime = strftime(EndTime, "%F %T %Z")\
| fieldformat StartTime = strftime(StartTime, "%F %T %Z")\
| outputlookup eventcount_stats.csv override_if_empty=false
```
