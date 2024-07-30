@echo off

if not defined launchable (
    echo This file is not meant to be run directly
    pause
    goto :EOF
)

call readvar gtav_inactivedir
set "inactivedir=%value%"

call readvar gtav_activedir
set "activedir=%value%"

:: Define temporary directory name
set "tempdirname=temp"

:: Extract directory names
for %%I in (%activedir%) do set "activedirname=%%~nxI"
for %%I in (%inactivedir%) do set "inactivedirname=%%~nxI"

:: Extract the drive and path from activedir
for %%I in (%activedir%) do set "basedirpath=%%~dpI"

:: Ensure no trailing backslash
set "activedirpath=%activedirpath:~0,-1%"

:: Define the path for tempdir
set "tempdir=%activedirpath%\%tempdirname%"

:: Remove the 'shits' directory from tempdir if present
set "tempdir=%tempdir:shits\=%"

echo.
echo Checking Path
if %inactivedir%=="null" (
    if %activedir%=="null" (
        echo You need to enter your GTA V active and GTA V inactive directory at path.txt
        start notepad %myDir%\path.txt
    )
) else if %inactivedir%=="null" (
    echo Path to inactive directory is null
) else if %activedir%=="null" (
    echo Path to cactive directory is null
) else (
    echo pathCheck: OK
    call checkExe
)
