Dim WShell
Set WShell = CreateObject("WScript.Shell")
WShell.Run "C:\ARSISTEMAS\batMonitor\robo_auto.bat", 0
WShell.Run "C:\ARSISTEMAS\batMonitor\ArxTimed_auto.bat", 0
Set WShell = Nothing