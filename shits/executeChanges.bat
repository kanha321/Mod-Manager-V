@echo off

if not defined launchable (
    echo This file is not meant to be run directly
    pause
    goto :EOF
)

if %result%==1 (

    if %mod_folder%==1 (
        if %rpf_folder%==1 (
            @REM do nothing
            echo No changes needed
            @REM echo 1 1 1
        )
    )

    if %mod_folder%==1 (
        if %rpf_folder%==2 (
            @REM move rpf from folder 2 to folder 1
            move %inactivedir%\*.rpf %activedir%
            move %inactivedir%\Redistributables %activedir%\Redistributables
            move %inactivedir%\update %activedir%\update
            move %inactivedir%\x64 %activedir%\x64
            echo 1 1 2
        )
    )

    if %mod_folder%==2 (
        if %rpf_folder%==1 (
            @REM move rpf from folder 1 to folder 2, swap the names of folders
            move %activedir%\*.rpf %inactivedir%
            move %activedir%\Redistributables %inactivedir%\Redistributables
            move %activedir%\update %inactivedir%\update
            move %activedir%\x64 %inactivedir%\x64
            :: Rename directories using variables
            cd /d %basedirpath%
            ren "%activedirname%" "%tempdirname%"
            ren "%inactivedirname%" "%activedirname%"
            ren "%tempdirname%" "%inactivedirname%"
            echo 1 2 1
        )
    )

    if %mod_folder%==2 (
        if %rpf_folder%==2 (
            @REM just swap the names of folder
            cd /d %basedirpath%
            ren "%activedirname%" "%tempdirname%"
            ren "%inactivedirname%" "%activedirname%"
            ren "%tempdirname%" "%inactivedirname%"
            echo 1 2 2
        )
    )

)

if %result%==2 (
    if %mod_folder%==1 (
        if %rpf_folder%==1 (
            @REM move rpf from folder 1 to folder 2, swap the names of folders
            move %activedir%\*.rpf %inactivedir%
            move %activedir%\Redistributables %inactivedir%\Redistributables
            move %activedir%\update %inactivedir%\update
            move %activedir%\x64 %inactivedir%\x64
            :: Rename directories using variables
            cd /d %basedirpath%
            ren "%activedirname%" "%tempdirname%"
            ren "%inactivedirname%" "%activedirname%"
            ren "%tempdirname%" "%inactivedirname%"
            echo 2 1 1
        )
    )
    if %mod_folder%==1 (
        if %rpf_folder%==2 (
            @REM just swap the names
            cd /d %basedirpath%
            ren "%activedirname%" "%tempdirname%"
            ren "%inactivedirname%" "%activedirname%"
            ren "%tempdirname%" "%inactivedirname%"
            echo 2 1 2
        )
    )
    if %mod_folder%==2 (
        if %rpf_folder%==1 (
            @REM do nothing
            echo No changes needed
            @REM echo 2 2 1
        )
    )
    if %mod_folder%==2 (
        if %rpf_folder%==2 (
            @REM just move the rpf from 2 to 1
            move %inactivedir%\*.rpf %activedir%
            move %inactivedir%\Redistributables %activedir%\Redistributables
            move %inactivedir%\update %activedir%\update
            move %inactivedir%\x64 %activedir%\x64
            echo 2 2 2
        )
    )
)

if exist "%activedir%\.egstore\" (

    if %launch%=="true" (

        if exist "%epic%" (
            @REM launch the game

            echo changes done, press any key to launch the game...
            pause >nul
            start "%epic%" "%activedir%\Grand Theft Auto V.url"
            exit
        ) else (
            echo Epic Games executable not found.
            pause
        )
    ) else if %launch%=="false" (
        echo changes done you can now simply launch the game
        pause
    ) else (
        echo launch_automatically=%launch%
        echo you meant to write only true/false there, anyways changes done, you can launch the game
        pause
    )
) else (
    if %launch%=="true" (
        echo currently only the epic games version can be launched automatically
        echo changes done you can now simply launch the game
        pause
    ) else if %launch%=="false" (
        echo changes done you can now simply launch the game
        pause
    ) else (
        echo launch_automatically=%launch%
        echo you meant to write only true/false there, anyways changes done, you can launch the game
        pause
    )
)
