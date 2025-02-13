```yml
name: Windows Transformations
# Breaking into multiple transformations to categorize/priortize different caused unpredictable results. ID's being skipped seemingly randomly, entire transformation block being skipped randomly.
priority: 20
transformations:
  - id: drop_rules_due_to_unavailable_fields
    type: detection_item_failure
    message: One or more fields do not have a mapping from sysmon to 4688
    field_name_conditions:
      - type: include_fields
        fields:
          - xxOriginalFileName
    rule_conditions:
      - type: logsource
        product: windows
        category: process_creation

  - id: fields_renamed_4688
    type: field_name_mapping
    mapping:
      Image: New_Process_Name
      ParentImage: Creator_Process_Name
      CommandLine: Process_Command_Line
    rule_conditions:
      - type: logsource
        product: windows
        category: process_creation

  - id: fields_dropped_4688_due_to_unavaiable_fields
    type: drop_detection_item
    rule_conditions:
      - type: logsource
        product: windows
        category: process_creation
    field_name_conditions:
      - type: include_fields
        fields:
          - OriginalFileName
          - Product
          - Company
          - Description
          - IntegrityLevel
          - CurrentDirectory

  - id: condition_windows_process_creation
    type: add_condition
    conditions:
      Channel: "Security"
      EventID: 4688
    rule_conditions:
      - type: logsource
        product: windows
        category: process_creation

  - id: source_wineventlog
    type: add_condition
    conditions:
      source: WinEventLog
    rule_conditions:
      - type: logsource
        product: windows

name: Splunk Alert Stanza Windows
priority: 40
postprocessing:
- type: template
  template: |+
    [{{ rule.title }}]
    description = {{ rule.description | replace('\n', ' ') }}
    search = index=yourindex-* _index_earliest=-1h@h {{ query | replace('\n', '\\\n')}} | fields - _raw | collect index=notable_events source="{{ rule.title }}" marker="guid={{ rule.id }},{% for t in rule.tags %}tags={{ t }},{% endfor %}"
  rule_conditions:
    - type: logsource
      product: windows

finalizers:
- type: template # Set default cron schedule for Alerts
  template: |
    [default]
    cron_schedule = */30 * * * *
    dispatch.earliest_time = 0
    dispatch.latest_time = now
    enableSched = 0
    schedule_window = auto
    {{ queries | join('\n') }}
```