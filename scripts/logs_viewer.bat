@echo off
echo ==============================
echo   Bot Logs Viewer
echo ==============================
echo.

cd /d "%~dp0.."

if exist nanobot.log (
    echo Last 20 lines of log:
    echo.
    powershell -Command "Get-Content nanobot.log -Tail 20"
) else (
    echo No log file found.
    echo Make sure bot has been run at least once.
)

echo.
echo ==============================
pause
