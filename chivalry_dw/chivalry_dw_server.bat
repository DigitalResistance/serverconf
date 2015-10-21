@ECHO OFF
rem assume this script is in the root dir of the chivalry dedicated server,
rem as per the documentation, otherwise rtfm or change it
set CHIV_DW_DED=%cd%
set ADMIN_PW=LanTestAdmin
set CHIVPORT=7877
set STEAMPORT=27815
rem Launch the server... it might take a second
rem Set processor affinity when running on a multi-core VM to avoid negative delta time crashes
start /affinity 8 "Chivalry:DW Server" "%CHIV_DW_DED%\Binaries\Win64\CDWLogging.exe" "LTS-Frigid?game=CDW.LTS?numteams=4?class0=Open?class1=Open?class2=Open?class3=Open?steamsockets?AdminPassword=%ADMIN_PW%" -Port=%CHIVPORT% -QueryPort %STEAMPORT% -log=LanTest\server.log -configsubdir=LanTest -seekfreeloadingserver
