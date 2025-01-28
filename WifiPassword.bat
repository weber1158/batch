@echo off
setlocal

:: Prints the password to the current Wifi network.
:: The user must be connected to the network in order
:: for this script to work. If the user is not on Wifi
:: then this script will say "~1".

rem Get the name of the current Wi-Fi network
for /f "tokens=2 delims=: " %%i in ('netsh wlan show interfaces ^| findstr /c:"SSID"') do set "ssid=%%i"

rem Remove leading spaces from the SSID
set "ssid=%ssid:~1%"

rem Check if SSID is empty
if "%ssid%"=="" (
    echo You are not connected to a Wi-Fi network.
    endlocal
    pause
    exit /b
)

rem Get the Wi-Fi password for the current network
for /f "tokens=2 delims=: " %%i in ('netsh wlan show profile name^="%ssid%" key^=clear ^| findstr /c:"Key Content"') do set "password=%%i"

rem Remove leading spaces from the password
set "password=%password:~1%"

rem Print the Wi-Fi password
echo The password for the Wi-Fi network "%ssid%" is: %password%

endlocal
pause