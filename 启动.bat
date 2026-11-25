@echo off
chcp 65001 >nul
cd /d "%~dp0"

echo.
echo   ============================================
echo     Recalia - AI Memory Sea
echo   ============================================
echo.

where node >nul 2>nul
if errorlevel 1 (
  echo   Node.js not found. Please install Node.js 18+ first:
  echo     https://nodejs.org/
  echo.
  pause
  exit /b 1
)

echo   memory folder: %~dp0memory
echo   page: http://127.0.0.1:8900
echo.
echo   Keep this window open. Closing it stops Recalia.
echo.

start "" powershell -WindowStyle Hidden -Command "Start-Sleep -Seconds 2; Start-Process 'http://127.0.0.1:8900'"
node server.mjs

echo.
echo   Recalia stopped. Press any key to close.
pause >nul
