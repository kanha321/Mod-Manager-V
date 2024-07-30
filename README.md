# GTA V Mod Manager Setup Guide

## Initial Setup

Before you begin using the GTA V Mod Manager, follow these steps to set up your directories correctly:

1. **Start with a Clean GTA V Installation**
   - Ensure that your GTA V installation has no mods installed.

2. **Create an Inactive Directory**
   - Create a new folder with the same name as your GTA V directory and add " inactive" to the end of the name.
   - Example: If your game directory is named "GTA-V", the new folder should be named "GTA-V inactive".
   - MAKE SURE "GTA V" AND "GTA V inactive" EXIST IN SAME DIRECTORY (see path.txt for example) ...

3. **Copy Files to the Backup Directory**
   - Navigate to your game directory and select all files (Ctrl+A).
   - Deselect the following items:
     - All `.rpf` files
     - `update` folder
     - `x64` folder
     - `Redistributables` folder
   - Copy all the remaining selected files to the new folder you created in step 2.

4. **Epic Games Version Users**
   - If you are using the Epic Games version of GTA V, cut/copy the game shortcut to both directories. This will allow you to launch the game automatically at the end.

## Testing

There are "GTA V" and "GTA V inactive" directories provided for testing purposes. Enter the correct paths of these directories in the `path.txt` file.

## Future Plans

The process of setting up the directories might get automated in future versions of this tool.

## Installation

1. If you have git then just `git clone https://github.com/kanha321/Mod-Manager-V.git` in your terminal/Powershell/CMD.
2. OR You can also download the zip file from release section and extract it (Not recommended but it will work).
