@echo off
echo ==============================
echo   Disk Cleanup Utility
echo ==============================
echo.

REM Temp files
echo Cleaning Temp folders...
del /q /f /s "%TEMP%\*" >nul 2>&1
del /q /f /s "C:\Windows\Temp\*" >nul 2>&1
echo [OK] Temp files cleaned

REM Prefetch
echo Cleaning Prefetch...
del /q /f /s "C:\Windows\Prefetch\*" >nul 2>&1
echo [OK] Prefetch cleaned

REM Recycle Bin
echo Emptying Recycle Bin...
rd /s /q C:\$Recycle.bin >nul 2>&1
echo [OK] Recycle Bin emptied

REM Disk Cleanup (built-in)
echo Running Windows Disk Cleanup...
cleanmgr /sagerun:1 >nul 2>&1
echo [OK] Disk Cleanup complete

echo.
echo ==============================
echo   Cleanup Complete! 🎉
echo ==============================
echo.
pause
