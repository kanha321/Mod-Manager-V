@echo off

if not defined launchable (
    echo This file is not meant to be run directly
    pause
    goto :EOF
)
call %myShits%\readvar.bat launch_automatically
set "launch=%value%"

call %myShits%\readvar.bat epicgamesexe_path
set epic="%value%"


echo.
echo Checking File
set inactivedir_check=0
set activedir_check=0

if exist %activedir%\PlayGTAV.exe (
    set inactivedir_check=1
) else (
    echo this inactivedir does not contain the game please verify your game using the game launcher or update the path in path.txt
)
if exist %activedir%\PlayGTAV.exe (
    set activedir_check=1
) else (
    echo this activedir does not contain the game please verify your game using the game launcher or update the path in path.txt
)

if %inactivedir_check%==1 (
    if %activedir_check%==1 (
        echo fileCheck: OK
        for %%I in ("%activedir%") do set "basepath=%%~dpI"
        set "tempdir=%basepath%tempdir"
        call identifyModsFolder.bat
    )
)

