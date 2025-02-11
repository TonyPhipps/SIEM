# Install via pip
```bat
pip install sigma-cli
```

Install plugins
```bat
sigma plugin list
sigma plugin install splunk
```

# Convert Rules

- Assuming you are in a directory with a 'sigma' folder and inside it is the git repository 'sigma-master'.
- For Linux, use '\' in place of '^'
- If a single error is detected, no output file will result.

Basic Sample

- Just make sure the LAST property is always the source directory/file.

```bat
sigma convert ^
    --target splunk ^
    --pipeline splunk_windows ^
    ./sigma/sigma-master/rules
```

Use a Custom pipeline
```bat
    --pipeline my_pipeline.yml ^
```

Generate a savedsearches.conf file for splunk
```bat
    -f savedsearches ^
    --output ./sigma/output/output.txt ^
```

Output rules to a folder
```bat
    --output ./sigma/output/{rule}.txt ^
```

Review any  errors
```bat
--verbose ^
```

Stuffed example
```bat
sigma convert ^
    --target splunk ^
    --pipeline splunk_windows ^
    --output ./sigma/output/{rule}.txt ^
    ./sigma/sigma-master/rules
```

## Mass-Convert via Powershell
- Assumes a python venv named "sigma" resides in user home directory.

```powershell
$venv = "C:\Users\youruser\python\sigma"
$inputDir = "./sigma-master/rules/windows/"
$outputDir = "./output"

# Ensure output directory exists
New-Item -ItemType Directory -Path $outputDir -Force

& "$venv\Scripts\Activate.ps1"

# Loop through each YAML rule file
Get-ChildItem -Path $inputDir -Recurse -Filter "*.yml" | ForEach-Object {
    $ruleName = $_.BaseName  # Extracts the filename without extension
    $outputFile = "$outputDir/$ruleName.txt"
    
    Write-Host "Converting: $($_.FullName) -> $outputFile"

    sigma convert --target splunk --pipeline splunk_windows --output $outputFile $_.FullName
    
}

deactivate
```

# Create Rules

Sample
```yaml
# ./rules/cloud/okta/okta_user_account_locked_out.yml
title: Okta User Account Locked Out
id: 14701da0-4b0f-4ee6-9c95-2ffb4e73bb9a
status: test
description: User account locked out.
references:
    - https://developer.okta.com/docs/reference/api/system-log/
    - https://developer.okta.com/docs/reference/api/event-types/
author: Austin Songer @austinsonger
date: 2021-09-12
modified: 2022-10-09
tags:
    - attack.impact
logsource:
    product: okta
    service: okta
detection:
    selection:
        displaymessage: Max sign in attempts exceeded
    condition: selection
falsepositives:
    - Unknown
level: medium
```

### level:
- *critical* should never trigger a false positive and be of high relevance
- *high* threats of high relevance that have to be reviewed manually (rare false positives > baselining required)
- *low* and *medium* indicate suspicious activity and policy violations
- *informational* have informative character and are often used for compliance or correlation purposes

- https://sigmahq.io/docs/basics/rules.html
- https://www.uuidgenerator.net/version4

## Filters

Sample
- Rule
```yaml
title: New Service Creation Using Sc.EXE
name: proc_creation_win_sc_create_service
description: Detects the creation of a new service using the "sc.exe" utility.
author: Timur Zinniatullin, Daniil Yugoslavskiy, oscd.community
logsource:
  category: process_creation
  product: windows
detection:
  selection:
    Image|endswith: '\sc.exe'
    CommandLine|contains|all:
      - "create"
      - "binPath"
  condition: selection
falsepositives:
  - Legitimate administrator or user creates a service for legitimate reasons.
  - Software installation
level: low
```
-Filter
```yaml
title: Filter Out Administrator accounts
description: Filters out administrator accounts that start with adm_
logsource:
  category: process_creation
  product: windows
filter:
  rules:
    - proc_creation_win_sc_create_service
  selection:
    User|startswith: "adm_"
  condition: not selection
```

NOTE: You can leverage condition: to INCLUDE items as well.

- Command
```bash
sigma convert -t splunk --pipeline splunk_windows \
  --filter ./filters/win_filter_admins.yml \
  ./rules/windows/process_creation/proc_creation_win_sc_create_service.yml
```

- Bulk command

```bash
$ sigma convert -t splunk -p splunk_windows \
    --filter ./filters/windows \
    ./rules/windows
```

- https://sigmahq.io/docs/meta/filters.html