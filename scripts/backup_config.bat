@echo off
echo ==============================
echo   Backup Configuration
echo ==============================
echo.

set BACKUP_DIR=backups
if not exist %BACKUP_DIR% mkdir %BACKUP_DIR%

set TIMESTAMP=%DATE:~10,4%%DATE:~4,2%%DATE:~7,2%_%TIME:~0,2%%TIME:~3,2%%TIME:~6,2%
set TIMESTAMP=%TIMESTAMP: =0%

echo Backing up config...
copy config\config.json %BACKUP_DIR%\config_%TIMESTAMP%.json
copy .env %BACKUP_DIR%\.env_%TIMESTAMP%.txt 2>nul

echo.
echo Backup saved to: %BACKUP_DIR%\config_%TIMESTAMP%.json
echo ==============================
echo   Backup Complete! 🎉
echo ==============================
pause
