@echo off
setlocal enabledelayedexpansion

if not defined launchable (
    echo This file is not meant to be run directly
    pause
    goto :EOF
)

set "targetFolder=%~1"

set "foundModFiles=0"

if exist "%targetFolder%\ScriptHookV.dll" (
    set "foundModFiles=1"
    goto :breakLoop
)

if exist "%targetFolder%\OpenIV.asi" (
    set "foundModFiles=1"
    goto :breakLoop
)

:breakLoop
:: Set an environment variable with the result
set "modCheckResult=%foundModFiles%"
endlocal & set "modCheckResult=%modCheckResult%"