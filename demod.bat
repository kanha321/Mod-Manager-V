@echo off
setlocal enabledelayedexpansion

REM Set the directory path where you want to move files
set "directory=K:\GTA-V-Demodifier\GTA V"

set "sourceDir=K:\GTA-V-Demodifier\backups"

REM Create a backups directory if it doesn't exist
mkdir %sourceDir% 2>nul

REM Iterate through all files in the directory
for %%i in ("%directory%\*") do (
    REM Check if the current item is a file and end with ".rpf"
    if "%%~xi" == ".rpf" (
        REM Move the file to the backups folder
        move "%%i" "%sourceDir%"
        echo Moved: "%%i"
    )
)

echo All files ending with ".rpf" have been moved to backups folder.

endlocal
