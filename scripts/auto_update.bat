@echo off
echo ==============================
echo   TakatakBot Auto-Update
echo ==============================
echo.

cd /d "%~dp0.."

echo Pulling latest changes...
git pull

echo Updating dependencies...
call venv\Scripts\activate.bat
pip install --upgrade nanobot python-telegram-bot

echo.
echo ==============================
echo   Update Complete! 🎉
echo ==============================
pause
