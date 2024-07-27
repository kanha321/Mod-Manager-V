@echo off
setlocal enabledelayedexpansion

REM Set the base filename and extension
set "baseName=file"

REM Loop to create 10 .rpf files
for /l %%i in (1, 1, 10) do (
    REM Format the count number with leading zeros (e.g., 01, 02, ..., 10)
    set "count=%%i"
    if %%i lss 10 set "count=0%%i"

    REM Create the filename with the incremented count
    set "fileName=!baseName!!count!.rpf"
    
    REM Echo the file creation command (for testing)
    echo "rpf file" > "!fileName!"
    echo Created: !fileName!
)

echo All rpf files have been created.

endlocal
