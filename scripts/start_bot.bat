@echo off
cd /d "%~dp0"
call venv\Scripts\activate.bat
echo Starting TakatakBot...
nanobot run
pause
