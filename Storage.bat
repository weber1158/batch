@echo off
setlocal

:: Prints the available storage space

rem Get the available storage space on the C: drive in bytes and convert to gigabytes with 3 decimal places
for /f %%a in ('powershell -command "Get-WmiObject -Query 'SELECT FreeSpace FROM Win32_LogicalDisk WHERE DeviceID=''C:'' ' | ForEach-Object { [math]::round($_.FreeSpace / 1GB, 3) }"') do set freeSpaceGB=%%a

rem Print the available storage space
echo The available storage space on the C: drive is %freeSpaceGB% GB.

endlocal
pause