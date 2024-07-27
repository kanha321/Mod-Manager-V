@echo off
setlocal enabledelayedexpansion

:: Set the target folder
set "targetFolder=%~1"

:: Initialize a flag to check for .rpf files
set "foundRpfFiles=0"

:: Loop through the .rpf files in the target folder
for %%f in ("%targetFolder%\*.rpf") do (
    set "foundRpfFiles=1"
    goto :breakLoop
)

:breakLoop
:: Set an environment variable with the result
set "rpfCheckResult=%foundRpfFiles%"
endlocal & set "rpfCheckResult=%rpfCheckResult%"
