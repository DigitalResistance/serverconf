# Chivalry: Medieval Warfare

## Spinning up a server
1. Download the dedicated server files, either through the Steam client or [SteamCMD](https://developer.valvesoftware.com/wiki/SteamCMD)
  *`app_update 220070 validate`
2. Make note of where the dedicated server files were installed
  *`set CHIV_MW_DED="C:\Program Files (x86)\Steam\SteamApps\common\chivalry_ded_server"`
3. In %CHIV_MW_DED%\UDKGame\Config, create a new subdirectory for config specific to this dedicated server
  *`mkdir %CHIV_MW_DED%\UDKGame\Config\LANtasticServer`
4. Copy \*.ini from the base config directory to the newly created subdirectory
  *`copy %CHIV_MW_DED%\UDKGame\Config\*.ini %CHIV_MW_DED%\UDKGame\Config\LANtasticServer\`
5. Copy the appropriate `PCServer-UDKGame.ini` and `PCServer-UDKEngine.ini` from the repo to the config subdirectory
6. In Explorer, create a shortcut to %CHIV_MW_DED%\Binaries\Win64\UDKLogging.exe and place it wherever you wish
7. Edit the shortcut properties, appending arguments such as the following to the target (note, the map should be the first defined in Maplist)
  *`UDKLogging.exe AOCTD-Forest-CM_p?steamsockets?AdminPassword=%ADMIN_PW% -log=LanTest\server.log -configsubdir=LanTest -seekfreeloadingserver`
8. Mods can be enabled using the modname flag with the corresponding set of sdkfileid parameters
  *`UDKLogging.exe AOCTD-Forest-CM_p?steamsockets?modname=BlackKnight -sdkfileid=232823090...`

