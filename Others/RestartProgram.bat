@ECHO OFF
:inicio
FOR /F "eol=e usebackq delims=,:" %%A IN (`TASKLIST /FI "IMAGENAME eq ROBO_GINTER.exe" /FO CSV /NH`) do (
  IF /I NOT %%A=="ROBO_GINTER.exe" C:\ARSISTEMAS\ROBO_GINTER\ROBO_GINTER.exe
)
GOTO inicio