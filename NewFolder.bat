@echo off
setlocal

:: Make a new folder and specify its directory.

rem Prompt the user to enter the path where the new folder should be created
set /p folderPath="Enter the path where you want to create the new folder: "

rem Prompt the user to enter the name of the new folder
set /p folderName="Enter the name of the new folder: "

rem Create the new folder
mkdir "%folderPath%\%folderName%"

rem Display a message indicating that the folder has been created
echo The folder "%folderName%" has been created at "%folderPath%".
endlocal
pause