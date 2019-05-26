﻿
@echo off

rem H is the destination game folder
rem GAMEDIR is the name of the mod folder (usually the mod name)
rem GAMEDATA is the name of the local GameData
rem VERSIONFILE is the name of the version file, usually the same as GAMEDATA,
rem    but not always

set H=R:\KSP_1.3.1_dev
set GAMEDIR=KRASH
set GAMEDATA="GameData\"
set VERSIONFILE=%GAMEDIR%-1.3.1.version

del %GAMEDATA%\%GAMEDIR%\*.version
del %H%\GameData\%GAMEDIR%\*.version

copy /Y "%1%2" "%GAMEDATA%\%GAMEDIR%\Plugins"
copy /y "%1\*.pdb" "%GAMEDATA%\%GAMEDIR%\Plugins"

copy /Y %VERSIONFILE% %GAMEDATA%\%GAMEDIR%

xcopy /y /s /I %GAMEDATA%\%GAMEDIR% "%H%\GameData\%GAMEDIR%"
