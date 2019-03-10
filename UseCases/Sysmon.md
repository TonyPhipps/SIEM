- [Newly-observed executables](#newly-observed-executables)
- [Newly-observed network connections](#newly-observed-network-connections)
- [Non-PowerShell process loading powershell DLLs](#non-powershell-process-loading-powershell-dlls)
- [Long Command/PowerShell Command observed](#long-commandpowershell-command-observed)
- [Suspicious PowerShell Command Observed](#suspicious-powershell-command-observed)

# Newly-observed executables
- Evend ID 1
- Rolling Whitelist


# Newly-observed network connections
- Event ID 3
- Rolling Whitelist


# Non-PowerShell process loading powershell DLLs 
- Event ID 7
- Rolling Whitelist


# Long Command/PowerShell Command observed
- Event ID 1
- Threshold
- Recommended threshold of 250+ characters


# Suspicious PowerShell Command Observed
- Event ID 1
- Blacklist
- CommandLine contains things like
  - -noprofile
  - -noprofil
  - -noprofi
  - -noprof
  - -nopro
  - -nopr
  - -nop
  - hidden
  - -noninteractive
  - -noninteractiv
  - -noninteracti
  - -noninteract
  - -noninterac
  - -nonintera
  - -noninter
  - -noninte
  - -nonint
  - -nonin
  - -noni
  - bypass
  - -encodedcommand
  - -encodedcomman
  - -encodedcomma
  - -encodedcomm
  - -encodedcom
  - -encodedco
  - -encodedc
  - -encoded
  - -encode
  - -encod
  - -enco
  - -enc
  - invoke-webrequest
  - iwr
  - curl
  - wget
