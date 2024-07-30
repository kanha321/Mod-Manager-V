@echo off

if not defined launchable (
    echo This file is not meant to be run directly
    pause
    goto :EOF
)

del %1

echo // This is a simple txt file where have to specify your paths>>%1
echo // Keep them similar it is recommended to just put " inactive" at the end below is the example>>%1
echo // Don't remove the quotes write the path between those quotes>>%1
echo.>>%1
echo // Example: gtav_activedir="C:\Rockstar Games\GTA V">>%1
echo // Example: gtav_inactivedir="C:\Rockstar Games\GTA V inactive">>%1
echo gtav_activedir="null">>%1
echo.>>%1
echo gtav_inactivedir="null">>%1
echo.>>%1
echo // this is only for epic games version of gta v ^(requires gta v epic games shortcut on both directories^)>>%1
echo epicgamesexe_path="C:\Program Files (x86)\Epic Games\Launcher\Engine\Binaries\Win64\EpicGamesLauncher.exe">>%1
echo.>>%1
echo // launch_automatically is a boolean value only true/false is accepted>>%1
echo launch_automatically="false">>%1
