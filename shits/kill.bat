@echo off
echo Killing all GTA V and Rockstar Games Launcher processes...

:: Kill GTA V processes
taskkill /F /IM GTA5.exe 2>nul
taskkill /F /IM GTA5Launcher.exe 2>nul

:: Kill Rockstar Games Launcher processes
taskkill /F /IM RockstarService.exe 2>nul
taskkill /F /IM Launcher.exe 2>nul

echo All GTA V and Rockstar processes have been terminated.
