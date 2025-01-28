@echo off
setlocal

:: Makes copies of all files in Folder A and pastes the
:: copies in Folder B. The user is prompted for the path
:: to Folder A and Folder B. If Folder B does not already
:: exist, CopyFiles will make the new folder automatically.

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

rem Copy all files from the source folder to the destination folder
xcopy "%source%\*" "%destination%\" /s /e /y

echo All files have been copied from "%source%" to "%destination%".
endlocal
pause