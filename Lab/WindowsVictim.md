In order to build a lab for Windows logs, a Windows system is required. The content on this page will focus on setting up a victim system with advanced logging. While production systems may not have such high levels of logging, it remains important to understand how attacks and activities can be logged. It may be the case that observations in a lab environment warrant increasing logging on production systems to allow detection.

- [Windows Configuration](#windows-configuration)
  - [Enable All Logs and Set Logging Defaults](#enable-all-logs-and-set-logging-defaults)
  - [Enable Windows Firewall, Disable Blocks, and Log All](#enable-windows-firewall-disable-blocks-and-log-all)
  - [Enable and Configure NTLM Logging](#enable-and-configure-ntlm-logging)
  - [Enable Process Creation (Event ID 4688), Including Command Line](#enable-process-creation-event-id-4688-including-command-line)
- [Sysmon](#sysmon)
- [WinLogBeat](#winlogbeat)


# Windows Configuration

## Enable All Logs and Set Logging Defaults
- Computer Configuration > Policies > Administrative Templates > Windows Components > Event Log Service > [Log Name] > Specify the maximum log file size
  - 500 MB
    - HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\WINEVT\Channels\<LogName>\MaxSize (REG_DWORD of 52428800)
- Computer Configuration > Policies > Administrative Templates > Windows Components > Event Log Service > [Log Name] > Control event log behavior when the log file reaches its maximum size
  - Overwrite events as needed (oldest events first)
```powershell
$maxSizeInBytes = 52428800 # (500 MB)
$channels = Get-WinEvent -ListLog *
foreach ($log in $channels) {
    $registryPath = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\WINEVT\Channels\$($log.LogName)"
    if (Test-Path $registryPath) {
        try {
            Set-ItemProperty -Path $registryPath -Name "MaxSize" -Value $maxSizeInBytes -Type Dword
            Set-ItemProperty -Path $registryPath -Name "Retention" -Value 0 -Type Dword # 'Overwrite as needed'
            wevtutil set-log "$($log.LogName)" /e:true
            Write-Host "Success: $($log.LogName)" -ForegroundColor Green
        }
        catch {
            Write-Host "Failed to update: $($log.LogName)" -ForegroundColor Red
        }
    }
}
Restart-Service EventLog -Force
```


## Enable Windows Firewall, Disable Blocks, and Log All
```powershell
Get-NetFirewallRule -Action Block | Remove-NetFirewallRule
$profiles = @("Domain", "Private", "Public")
$logPath = "C:\Windows\System32\LogFiles\Firewall\pfirewall.log"
foreach ($profile in $profiles) {
    try {
        Set-NetFirewallProfile -Name $profile `
            -LogAllowed True `
            -LogBlocked True `
            -LogIgnored True `
            -LogFileName $logPath `
            -LogMaxSizeKilobytes 512000 # 500 MB Log File
        Write-Host "Successfully enabled logging for $profile." -ForegroundColor Green
    }
    catch {
        Write-Host "Failed to configure $profile profile." -ForegroundColor Red
    }
}
Set-NetFirewallProfile -All -Enabled True
Write-Host "Firewall is ENABLED. Logging is active at $logPath" -ForegroundColor Yellow
```


## Enable and Configure NTLM Logging
```powershell
$regPathSystem = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System"
$regPathLsa = "HKLM:\SYSTEM\CurrentControlSet\Control\Lsa\MSV1_0"
Set-ItemProperty $regPathSystem -Name "RestrictNTLM" -Value 0
Set-ItemProperty $regPathSystem -Name "AuditIncomingNTLMTraffic" -Value 1
Set-ItemProperty $regPathLsa -Name "AuditNTLMInDomain" -Value 7 
Restart-Service Netlogon -Force
Start-Sleep -Seconds 2
```




### Enable ScriptBlock Logging
Event ID 4104 will populate the Microsoft-Windows-PowerShell/Operational log

```powershell
$registryPath = "HKLM:\SOFTWARE\Wow6432Node\Policies\Microsoft\Windows\PowerShell\ScriptBlockLogging"
if (-not (Test-Path $registryPath)) {
    New-Item -Path $registryPath -Force | Out-Null
    Write-Host "Created registry path: $registryPath" -ForegroundColor Cyan
}
$values = @{
    "EnableScriptBlockLogging"           = 1
    "EnableScriptBlockInvocationLogging" = 1
}
foreach ($name in $values.Keys) {
    Set-ItemProperty -Path $registryPath -Name $name -Value $values[$name] -Type DWord -Force
    Write-Host "Set $name to $($values[$name])" -ForegroundColor Green
}
```

-OR-

- gpedit.msc
- Computer Configuration > Administrative Templates > Windows Components > Windows Powershell
- Turn On Script Block Logging: Enabled
- Log Stop/Start Events: Checked


### Enable Module Logging
```powershell
$basePath = "HKLM:\SOFTWARE\Wow6432Node\Policies\Microsoft\Windows\PowerShell\ModuleLogging"
$namesPath = "$basePath\ModuleNames"
if (-not (Test-Path $basePath)) {
    New-Item -Path $basePath -Force | Out-Null
}
Set-ItemProperty -Path $basePath -Name "EnableModuleLogging" -Value 1 -Type DWord -Force
if (-not (Test-Path $namesPath)) {
    New-Item -Path $namesPath -Force | Out-Null
}
Set-ItemProperty -Path $namesPath -Name "*" -Value "*" -Type String -Force
```

-OR-

- gpedit.msc
- Computer Configuration > Administrative Templates > Windows Components > Windows Powershell
- Turn On Module Logging: Enabled
- Module Name: *

Event ID 4103 will populate the Microsoft-Windows-PowerShell/Operational log


### Transcription
- Logs will be stored in .txt files in the specified directory, using the format `..\YYYYMMDD\PowerShell_transcript.PCNAME.RANDOM.YYYYMMDDHHMMSS.txt`
```powershell
$transcriptPath = "C:\PowerShellTranscripts"
$registryPath = "HKLM:\SOFTWARE\Wow6432Node\Policies\Microsoft\Windows\PowerShell\Transcription"
if (-not (Test-Path $transcriptPath)) {
    New-Item -Path $transcriptPath -ItemType Directory -Force | Out-Null
}
if (-not (Test-Path $registryPath)) {
    New-Item -Path $registryPath -Force | Out-Null
}
Set-ItemProperty -Path $registryPath -Name "EnableTranscripting" -Value 1 -Type DWord -Force
Set-ItemProperty -Path $registryPath -Name "EnableInvocationHeader" -Value 1 -Type DWord -Force
Set-ItemProperty -Path $registryPath -Name "OutputDirectory" -Value $transcriptPath -Type String -Force
```

-OR-

- gpedit.msc
- Computer Configuration > Administrative Templates > Windows Components > Windows Powershell
- Turn On PowerShell Transcription: Enabled
- Log Stop/Start Events: Checked


## Enable Process Creation (Event ID 4688), Including Command Line
```powershell
auditpol /set /subcategory:"Process Creation" /success:enable
$lsaPath = "HKLM:\System\CurrentControlSet\Control\Lsa"
if (-not (Test-Path $lsaPath)) { New-Item -Path $lsaPath -Force | Out-Null }
Set-ItemProperty -Path $lsaPath -Name "SCENoApplyLegacyAuditPolicy" -Value 1 -Type DWord -Force
$auditPath = "HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System\Audit"
if (-not (Test-Path $auditPath)) { New-Item -Path $auditPath -Force | Out-Null }
Set-ItemProperty -Path $auditPath -Name "ProcessCreationIncludeCmdLine_Enabled" -Value 1 -Type DWord -Force
```


-OR-

- Secpol.exe
- Advanced Audit Policy Configuration > System Audit Policies > Detailed Tracking
- Audit Process Creation: Enabled, Success
- gpedit.msc
  - Computer Configuration > Windows Settings > Security Settings > Local Policies > Security Options
    - Audit: Force audit policy subcategory settings (Windows Vista or later) to override audit policy category settings: Enabled
  - Computer Configuration > Administrative Templates > System > Audit Process Creation
    - Include command line in process creation events: Enabled
  - Computer Configuration > Policies > Windows Settings > Security Settings > Advanced Audit Configuration > Audit Polcies > Detailed Tracking
    - Audit Process Creation: Success and Failure


# Sysmon
- Copy Sysmon to virtual host and install as a service
- c:\windows\sysmon\sysmon64.exe -accepteula -i [sysmonlabconfig.xml](/Lab/sysmonlabconfig.xml)
- %SystemRoot%\system32\winevt\logs\Microsoft-Windows-Sysmon%4Operational.evtx


# WinLogBeat
- https://www.elastic.co/downloads/beats/winlogbeat
- Configure WinLogBeat by editing winlogbeat.yml
- Recommended starter config: https://raw.githubusercontent.com/Cyb3rWard0g/HELK/master/winlogbeat/winlogbeat.yml
- Ensure the ```hosts:``` section of the config file has the correct destination IP
- Install via install-service-winlogbeat.ps1, then start via ```Start-Service winlogbeat```


### Break SleepStudy
Sometimes this odd service will begin creating an endless loop of .etl files. This command breaks that "feature," since there is no proper option to disable it.
```
Set-ItemProperty -Path C:\Windows\System32\SleepStudy\*.etl -Name IsReadOnly -Value $true
```

