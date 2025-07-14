```alert daily```
index=cisco:ios sourcetype=cisco:ios mnemonic=ELEMENT_CRITICAL 
| stats count by host, app, severity, message_text