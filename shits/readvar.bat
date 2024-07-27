@echo off
setlocal enabledelayedexpansion

if not defined launchable (
    echo This file is not meant to be run directly
    pause
    goto :EOF
)

set "variable=%1"

cd ..

set "file=%mydir%\path.txt"

set "found="
for /f "tokens=1,2 delims==" %%a in ('findstr /i %variable% %file%') do (
    if /i "%%a"=="%variable%" (
        set "value=%%b"
        set "found=1"
    )
)

if not defined found (
    echo.
    echo you probably messed up with the path.txt file
    echo recreating path.txt file...
    echo.
    echo try again, and this time dont change variable name
    call shits/recreatePathTxt.bat %file%
    pause
    start notepad %myDir%\path.txt
    exit
)

cd %myShits%
endlocal & set "value=%value%"