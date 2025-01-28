@echo off

:: Switch Windows dark mode to 'on'
:: This script does NOT change the Command Prompt to dark mode;
:: rather, to change the color theme of the Command Prompt to
:: dark mode use the command "color 0f" without the quotes.

reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v AppsUseLightTheme /t REG_DWORD /d 0 /f
echo Switched to Dark Mode.

pause