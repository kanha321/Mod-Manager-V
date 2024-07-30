@echo off

color 06

set launchable=1

set "myDir=%cd%"
set "myShits=%cd%\shits"

cd shits

call kill.bat
call checkPath.bat