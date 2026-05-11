@echo off
echo ==============================
echo   System Health Report
echo ==============================
echo.

echo [System Info]
systeminfo | findstr /C:"OS Name" /C:"OS Version" /C:"System Manufacturer" /C:"System Model" /C:"Total Physical Memory"

echo.
echo [Disk Usage]
wmic logicaldisk get size,freespace,caption

echo.
echo [CPU Info]
wmic cpu get name,numberofcores,maxclockspeed

echo.
echo [Network]
ipconfig | findstr "IPv4"

echo.
echo [Running Processes Count]
tasklist /FI "STATUS eq RUNNING" 2>nul | find /c /v ""

echo.
echo ==============================
echo   Report Complete!
echo ==============================
pause
