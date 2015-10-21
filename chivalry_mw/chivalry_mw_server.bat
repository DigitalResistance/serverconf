@ECHO OFF
rem assume this script is in the root dir of the chivalry dedicated server,
rem as per the documentation, otherwise rtfm or change it
set CHIV_MW_DED=%cd%
set ADMIN_PW=LanTestAdmin
set CHIVPORT=7777
set STEAMPORT=27015
rem Launch the server... it might take a second
rem Set processor affinity when running on a multi-core VM to avoid negative delta time crashes
start /affinity 8 "Chivalry:MW Server" "%CHIV_MW_DED%\Binaries\Win64\UDKLogging.exe" "AOCTD-Forest-CM_p?steamsockets?AdminPassword=%ADMIN_PW%?modname=BlackKnight" -sdkfileid=232823090 -Port=%CHIVPORT% -QueryPort %STEAMPORT% -log=LanTest\server.log -configsubdir=LanTest -seekfreeloadingserver
