@echo off
echo ==============================
echo   Uninstall TakatakBot
echo ==============================
echo.

set /p CONFIRM="Are you sure? This will remove the bot folder. (y/N): "
if /i not "%CONFIRM%"=="y" exit /b

echo Removing startup shortcut...
del "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\TakatakBot.lnk" 2>nul

echo Removing virtual environment...
if exist venv rmdir /s /q venv

echo.
echo ==============================
echo   Uninstall Complete
echo ==============================
echo.
echo Bot folder still exists. Delete manually if needed.
pause
