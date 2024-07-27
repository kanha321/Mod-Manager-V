@echo off
setlocal enabledelayedexpansion

:: Ensure these variables are set if called from another script
:: Example initialization (replace with actual values if not already set)
:: set "cleandir=K:\GTA-V-Demodifier\GTA V"
:: set "moddir=K:\GTA-V-Demodifier\GTA V mod"
echo.
:: Call checkRpfFiles.bat for mod directory
call checkRpfFiles.bat %inactivedir%
set "rpf_at_inactive=%rpfCheckResult%"
if %rpf_at_inactive%==0 (
    echo  inactive directory: Inactive
) else if %rpf_at_inactive%==1 (
    echo *inactive directory: Active
) else (
    echo this is not possible
    pause
)

:: Call checkRpfFiles.bat for clean directory
call checkRpfFiles.bat %activedir%
set "rpf_at_active=%rpfCheckResult%"
if %rpf_at_active%==0 (
    echo  active directory: Inactive
) else if %rpf_at_active%==1 (
    echo *active directory: Active
) else (
    echo this is not possible
    pause
)
echo.
:: Check conditions and output messages
if "%rpf_at_active%"=="1" (
    if "%rpf_at_inactive%"=="1" (
        echo There are rpf files in both folders. PROCEED AT YOUR OWN RISK
        pause
    ) else (
        echo rpf files found in active folder
    )
) else (
    if "%rpf_at_inactive%"=="1" (
        echo rpf files found in inactive folder
    ) else (
        echo No rpf files found. You might need to redownload it.
        echo Exiting...
        pause
    )
)

endlocal
