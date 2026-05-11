@echo off
echo ==============================
echo   TakatakBot Setup
echo ==============================
echo.

REM Check Python
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo [ERROR] Python not found! Install Python 3.10+ first.
    pause
    exit /b 1
)
echo [OK] Python found

REM Check Git
git --version >nul 2>&1
if %errorlevel% neq 0 (
    echo [ERROR] Git not found!
    pause
    exit /b 1
)
echo [OK] Git found

REM Create virtual env
if not exist venv (
    echo Creating virtual environment...
    python -m venv venv
)
echo [OK] Virtual environment ready

REM Activate and install
call venv\Scripts\activate.bat
echo Installing dependencies...
pip install --upgrade pip
pip install nanobot python-telegram-bot python-dotenv

REM Create .env file if not exists
if not exist .env (
    echo Creating .env file...
    (
        echo TELEGRAM_BOT_TOKEN=your_token_here
        echo ALLOWED_USER_ID=your_user_id_here
    ) > .env
    echo [IMPORTANT] Edit .env file with your Telegram bot token!
)

REM Create config folder
if not exist config mkdir config

REM Create startup shortcut
echo Creating startup shortcut...
powershell -Command "$WS = New-Object -ComObject WScript.Shell; $SC = $WS.CreateShortcut('%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\TakatakBot.lnk'); $SC.TargetPath = '%CD%\venv\Scripts\nanobot.exe'; $SC.Arguments = 'run'; $SC.WorkingDirectory = '%CD%'; $SC.Save()"

echo.
echo ==============================
echo   Setup Complete! 🎉
echo ==============================
echo.
echo Next steps:
echo 1. Edit .env file with your Telegram bot token
echo 2. Run: venv\Scripts\activate ^&^& nanobot run
echo.
pause
