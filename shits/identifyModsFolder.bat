@echo off
setlocal enabledelayedexpansion

set mod_folder=0

@REM set "activedir=K:\GTA-V-Demodifier\GTA V"
@REM set "inactivedir=K:\GTA-V-Demodifier\GTA V inactive"

echo.
call checkModFiles.bat %activedir%
set mod_at_active=%modCheckResult%

if %mod_at_active%==1 (
    echo Active directory: Mod
) else if %mod_at_active%==0 (
    echo Active directory: Clean
) else (
    echo this is not possible
    pause
)

call checkModFiles.bat %inactivedir%
set mod_at_inactive=%modCheckResult%

if %mod_at_inactive%==1 (
    echo Inactive directory: Mod
) else if %mod_at_inactive%==0 (
    echo Inactive directory: Clean
) else (
    echo this is not possible
    pause
)

echo.

if "%mod_at_active%"=="1" (
    if "%mod_at_inactive%"=="1" (
        echo There are mod files in both folders. PROCEED AT YOUR OWN RISK
    ) else (
        echo mod files found in active folder
        set mod_folder=1
    )
) else (
    if "%mod_at_inactive%"=="1" (
        echo mod files found in inactive folder
        set mod_folder=2
    ) else (
        echo No mod files found. You might need to redownload it.
        echo Exiting...
    )
)

endlocal