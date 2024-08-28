[Palo Alto - Threat Detected]
action.email = 1
action.email.include.search = 1
action.email.inline = 1
action.email.sendcsv = 1
action.email.sendresults = 1
action.email.to = someone@example.com
action.email.useNSSubject = 1
action.webhook.enable_allowlist = 0
alert.expires = 5m
alert.suppress = 0
alert.track = 0
counttype = number of events
cron_schedule = 0 */2 * * *
dispatch.earliest_time = -2h
dispatch.latest_time = now
display.events.fields = ["host","source","sourcetype","eventid","Commandline"]
display.general.type = statistics
display.page.search.mode = verbose
display.page.search.tab = statistics
display.visualizations.chartHeight = 267
display.visualizations.charting.chart = line
enableSched = 1
quantity = 0
relation = greater than
request.ui_dispatch_app = search
request.ui_dispatch_view = search
search = index="pan_logs" sourcetype=pan:threat src_ip!="your-scanner"\
| rename "app:category" as app_category \
| fields _time host log_subtype, threat, threat_category, severity, action, app, app_category, category, src_ip, src_port, dest_ip, dest_port\
| foreach log_subtype, threat, threat_category, severity, action, app, app_category, category, src_ip, src_port, dest_ip, dest_port \
    [ eval <<FIELD>> = if( (len(<<FIELD>>)=0 OR (<<FIELD>>)="" OR isnull(<<FIELD>>)), "-", <<FIELD>>) ] \
| rename host as PaloAlto\
| table _time PaloAlto log_subtype, threat, threat_category, severity, action, app, app_category, category, src_ip, src_port, dest_ip, dest_port\
| sort - _time