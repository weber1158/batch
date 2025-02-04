@echo off

:: Print the Wifi password. You must be
:: connected to the Wifi for this to work.
:: You also need to know the name of the
:: Wifi network.

:: If done correctly, the Command Prompt
:: will print several lines. The Wifi pass-
:: word will be listed under the "Security
:: Settings" section next to "Key Content".

set \p wifiName="Enter the name of the Wifi network that you are connected to: "

NETSH WLAN SHOW PROFILE %wifiName% KEY=CLEAR

echo The Wifi password is listed as Key Content.

pause
