# Chivalry: Medieval Warfare

## Spinning up a server
1. Download the dedicated server files, either through the Steam client or [SteamCMD](https://developer.valvesoftware.com/wiki/SteamCMD)
> `app_update 220070 validate`
2. Make note of where the dedicated server files were installed
> `set CHIV_MW_DED="C:\Program Files (x86)\Steam\SteamApps\common\chivalry_ded_server"`
3. In %CHIV_MW_DED%\UDKGame\Config, create a new subdirectory for config specific to this dedicated server
> `mkdir %CHIV_MW_DED%\UDKGame\Config\LANtasticServer`
4. Copy \*.ini from the base config directory to the newly created subdirectory
> `copy %CHIV_MW_DED%\UDKGame\Config\*.ini %CHIV_MW_DED%\UDKGame\Config\LANtasticServer\`
5. Copy the appropriate `PCServer-UDKGame.ini` and `PCServer-UDKEngine.ini` from the repo to the config subdirectory
6. Copy `chivalry_mw_server.bat` to `%CHIV_MW_DED%`, name it whatever you like
7. Edit the batch file, changing arguments to match the appropriate config subdirectory (note, the map should be the first defined in Maplist)
> `UDKLogging.exe AOCTD-Forest-CM_p?steamsockets?AdminPassword=%ADMIN_PW% -Port=7777 -QueryPort 27015 -log=LanTest\server.log -configsubdir=LanTest -seekfreeloadingserver`
8. Mods can be enabled using the modname flag with the corresponding set of sdkfileid parameters
> `UDKLogging.exe AOCTD-Forest-CM_p?steamsockets?modname=BlackKnight -sdkfileid=232823090...`

## Connecting to a server
If the server is running on the default ports (i.e. 7777 and 27015 for Steam), the server should show up in the LAN browser. Otherwise, you have to connect via the console (~)
> `open IP:PORT`

## Administrating a server
After logging in with the admin password in the console (`AdminLogin PASSWORD`), the following commands are available:
  * adminchangemap MAPNAME
  * adminrestartmap
  * adminchangeteamdamageamount 0.0
  * aoc_endgame
  * admin addbots NUM