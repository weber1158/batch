@echo off

:: Switch Windows light mode to 'on'
:: This script does NOT change the Command Prompt to light mode;
:: rather, to change the color theme of the Command Prompt to
:: light mode use the command "color 9e" without the quotes.

reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v AppsUseLightTheme /t REG_DWORD /d 1 /f
echo Switched to Light Mode.

pause