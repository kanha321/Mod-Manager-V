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


@REM call checkModFiles.bat %activedir%
@REM echo %activedir% %modCheckResult%

@REM call checkModFiles.bat %inactivedir%
@REM echo %inactivedir% %modCheckResult%
@REM exit


if %inactivedir%=="null" (
    if %activedir%=="null" (
        echo You need to enter your GTA V active and GTA V inactive directory at path.txt
    )
) else if %inactivedir%=="null" (
    echo Path to inactive directory is null
) else if %activedir%=="null" (
    echo Path to cactive directory is null
) else (
    echo.
    echo pathCheck: OK
    call checkExe
)