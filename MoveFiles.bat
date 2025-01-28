@echo off
setlocal

:: Moves all of the files in Folder A to Folder B. The
:: user is prompted for the path to Folders A and B. If
:: Folder B does not already exist, MoveFiles will make 
:: the new folder automatically.

rem Prompt the user to enter the source folder path
set /p source="Enter the path to the source folder: "

rem Prompt the user to enter the destination folder path
set /p destination="Enter the path to the destination folder: "

rem Check if the source folder exists
if not exist "%source%" (
    echo The source folder does not exist.
    endlocal
    pause
    exit /b
)

rem Check if the destination folder exists, create it if it doesn't
if not exist "%destination%" (
    mkdir "%destination%"
)

rem Move all files from the source folder to the destination folder
move "%source%\*" "%destination%"

echo All files have been moved from "%source%" to "%destination%".
endlocal
pause