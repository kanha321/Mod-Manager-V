@echo off
setlocal enabledelayedexpansion

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