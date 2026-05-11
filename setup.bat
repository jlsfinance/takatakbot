@echo off
chcp 65001 >nul
echo ==============================
echo   TakatakBot Setup 🐈
echo ==============================
echo.

REM Check Python
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo [ERROR] Python nahi mila! Pehle Python 3.10+ install karo.
    pause
    exit /b 1
)
for /f "tokens=2" %%i in ('python --version 2^>^&1') do echo [OK] Python %%i mil gaya

REM Check Git
git --version >nul 2>&1
if %errorlevel% neq 0 (
    echo [ERROR] Git nahi mila!
    pause
    exit /b 1
)
echo [OK] Git mil gaya

REM Create virtual env
if not exist venv (
    echo Virtual environment bana raha hoon...
    python -m venv venv
)
echo [OK] Virtual environment ready

REM Activate and install
call venv\Scripts\activate.bat
echo Dependencies install kar raha hoon...
pip install --upgrade pip -q
pip install nanobot python-telegram-bot python-dotenv -q
echo [OK] Dependencies install ho gayi

REM ===== KEYS COLLECTION =====
echo.
echo ==============================
echo   Ab keys set karte hain
echo ==============================
echo.

set /p TELEGRAM_TOKEN="Telegram Bot Token (BotFather se lo): "
if "%TELEGRAM_TOKEN%"=="" set TELEGRAM_TOKEN=your_token_here

set /p USER_ID="Apna Telegram User ID (userinfobot se lo): "
if "%USER_ID%"=="" set USER_ID=your_user_id_here

set /p API_KEY="DeepSeek API Key (platform.deepseek.com se lo): "
if "%API_KEY%"=="" set API_KEY=your_api_key_here

REM Create .env file
echo .env file bana raha hoon...
(
    echo TELEGRAM_BOT_TOKEN=%TELEGRAM_TOKEN%
    echo ALLOWED_USER_ID=%USER_ID%
    echo DEEPSEEK_API_KEY=%API_KEY%
) > .env
echo [OK] .env file ready

REM Update config.json with keys
echo Config file update kar raha hoon...
powershell -Command ^
"$c = Get-Content 'config\config.json' -Raw | ConvertFrom-Json; " ^
"$c.channels.telegram.token = '%TELEGRAM_TOKEN%'; " ^
"$c.channels.telegram.allowFrom = @('%USER_ID%'); " ^
"$c.providers.openai.apiKey = '%API_KEY%'; " ^
"$c | ConvertTo-Json -Depth 10 | Set-Content 'config\config.json'"
echo [OK] Config file ready

REM Create config folder if not exists
if not exist config mkdir config 2>nul

REM Create startup shortcut
echo Startup shortcut bana raha hoon...
powershell -Command "$WS = New-Object -ComObject WScript.Shell; $SC = $WS.CreateShortcut('%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\TakatakBot.lnk'); $SC.TargetPath = '%CD%\venv\Scripts\nanobot.exe'; $SC.Arguments = 'run'; $SC.WorkingDirectory = '%CD%'; $SC.Save()"
echo [OK] Startup shortcut ready

echo.
echo ==============================
echo   Setup Complete! 🎉
echo ==============================
echo.
echo Bot ab ready hai! Windows start hote hi chalega.
echo Ya abhi chalane ke liye: scripts\start_bot.bat
echo.
pause
