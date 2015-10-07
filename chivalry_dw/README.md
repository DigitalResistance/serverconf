# Chivalry: Deadliest Warrior

## Spinning up a server
1. Download the dedicated server files, either through the Steam client or [SteamCMD](https://developer.valvesoftware.com/wiki/SteamCMD)
> `app_update 258680 validate`
2. Make note of where the dedicated server files were installed
> `set CHIV_DW_DED="C:\Program Files (x86)\Steam\SteamApps\common\chivalry_dw_ded_server"`
3. In %CHIV_DW_DED%\CDWGame\Config, create a new subdirectory for config specific to this dedicated server
> `mkdir %CHIV_DW_DED%\CDWGame\Config\LanTest`
4. Copy \*.ini from the base config directory to the newly created subdirectory
> `copy %CHIV_DW_DED%\CDWGame\Config\*.ini %CHIV_DW_DED%\CDWGame\Config\LanTest\`
5. Copy the appropriate `PCServer-CDWGame.ini` and `PCServer-CDWEngine.ini` from the repo to the config subdirectory
6. Copy `chivalry_mw_server.bat` to `%CHIV_DW_DED%`, name it whatever you like
7. Edit the batch file, changing arguments to match the appropriate config subdirectory (note, maps are voted on every round)
> `CDWLogging.exe TD-Bamboo_small?game=CDW.AOCTD?numteams=2?class0=Open?class1=Open?steamsockets?AdminPassword=%ADMIN_PW% -Port=7877 -QueryPort 27815 -log=LanTest\server.log -configsubdir=LanTest -seekfreeloadingserver`

## Connecting to a server
Though Medieval Warfare had it, Deadliest Warrior doesn't have a LAN browser, you have to connect via the console (~)
> `open IP:PORT`

## Administrating a server
After logging in with the admin password in the console (`AdminLogin PASSWORD`), the following commands are available:
  * adminchangemap MAPNAME
  * adminrestartmap
  * adminchangeteamdamageamount 0.0
  * aoc_endgame
  * admin addbots NUM