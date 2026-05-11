@echo off
echo ==============================
echo   Restore Configuration
echo ==============================
echo.

set BACKUP_DIR=backups
if not exist %BACKUP_DIR% (
    echo No backups found!
    pause
    exit /b 1
)

echo Available backups:
echo.
dir /b %BACKUP_DIR%\config_*.json 2>nul
echo.

set /p FILE="Enter backup filename (e.g. config_20260511_120000.json): "

if not exist %BACKUP_DIR%\%FILE% (
    echo File not found!
    pause
    exit /b 1
)

copy %BACKUP_DIR%\%FILE% config\config.json
echo Config restored from: %FILE%

pause
