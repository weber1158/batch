@echo off
setlocal enabledelayedexpansion

:: Replaces all instances of a specified file extension
:: in a folder with a new extension of the user's choice.
:: For example, this script can be used to rename all of
:: the .txt files in a folder to .csv files.

rem Prompt the user to enter the folder path
set /p folder="Enter the path to the folder containing the files: "

rem Prompt the user to enter the current file extension
set /p oldext="Enter the current file extension (e.g., txt): "

rem Prompt the user to enter the new file extension
set /p newext="Enter the new file extension (e.g., csv): "

rem Change directory to the specified folder
cd /d "%folder%"

rem Loop through all files with the specified old extension in the folder
for %%f in (*.%oldext%) do (
    rem Rename each file to the new extension
    set "filename=%%~nf"
    ren "%%f" "!filename!.%newext%"
)

endlocal
echo All .%oldext% files have been renamed to .%newext%
pause