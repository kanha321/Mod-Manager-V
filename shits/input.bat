@echo off

if not defined launchable (
    echo This file is not meant to be run directly
    pause
    goto :EOF
)

cls
color 0a
echo.
echo.
echo                                ,o888888o. 8888888 8888888888   .8.                    `8.`888b           ,8' 
echo                               8888     `88.     8 8888        .888.                    `8.`888b         ,8'  
echo                            ,8 8888       `8.    8 8888       :88888.                    `8.`888b       ,8'   
echo                            88 8888              8 8888      . `88888.                    `8.`888b     ,8'    
echo                            88 8888              8 8888     .8. `88888.                    `8.`888b   ,8'     
echo                            88 8888              8 8888    .8`8. `88888.                    `8.`888b ,8'      
echo                            88 8888   8888888    8 8888   .8' `8. `88888.                    `8.`888b8'       
echo                            `8 8888       .8'    8 8888  .8'   `8. `88888.                    `8.`888'        
echo                               8888     ,88'     8 8888 .888888888. `88888.                    `8.`8'         
echo                                `8888888P'       8 8888.8'       `8. `88888.                    `8.`          
echo.
echo.
echo.
echo Choose your game
echo.

if %mod_folder%==1 (
    if %rpf_folder%==1 (
        echo 1. GTA V mod*
        echo 2. GTA V online
    ) else if %rpf_folder%==2 (
        echo 1. GTA V mod*?
        echo 2. GTA V online
    ) else (
        echo this is not possible, something went wrong
        pause
        exit
    )
) else if %mod_folder%==2 (
    if %rpf_folder%==1 (
        echo 1. GTA V mod
        echo 2. GTA V online*
    ) else if %rpf_folder%==2 (
        echo 1. GTA V mod
        echo 2. GTA V online*?
    )
) else (
    echo this is surely not possible
)
echo.
set /P a=enter 1 or 2: 
set /a result=%a%

if %result%==1 (
    call executeChanges.bat
) else if %result%==2 (
    call executeChanges.bat
) else (
    cls
    call input.bat
)