@echo off

if not defined launchable (
    echo This file is not meant to be run directly
    pause
    goto :EOF
)

set inactivedir_check=0
set activedir_check=0

if exist %activedir%\PlayGTAV.exe (
    set inactivedir_check=1
) else (
    echo this inactivedir does not contain the game please verify your game using the game launcher
)
if exist %activedir%\PlayGTAV.exe (
    set activedir_check=1
) else (
    echo this activedir does not contain the game please verify your game using the game launcher
)

if %inactivedir_check%==1 (
    if %activedir_check%==1 (
        echo.
        echo fileCheck: OK
        call identifyModsFolder.bat
    )
)

