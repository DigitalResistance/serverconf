@ECHO OFF
rem assume this script is in the root dir of the chivalry dedicated server,
rem as per the documentation, otherwise rtfm or change it
set CHIV_MW_DED=%cd%
set ADMIN_PW=LanTestAdmin
rem Launch the server... it might take a second
start "Chivalry:MW Server" "%CHIV_MW_DED%\Binaries\Win64\UDKLogging.exe" "AOCTD-Forest-CM_p?steamsockets?AdminPassword=%ADMIN_PW%?modname=BlackKnight" -sdkfileid=232823090 -Port=7777 -QueryPort 27015 -log=LanTest\server.log -configsubdir=LanTest -seekfreeloadingserver
