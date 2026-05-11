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
pip install nanobot

echo.
echo ==============================
echo   Setup Complete! 🎉
echo ==============================
echo Run: venv\Scripts\activate.bat
echo Then: nanobot run
echo.
pause
