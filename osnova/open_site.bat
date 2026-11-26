@echo off
cd /d "%~dp0"
start "" /min cmd.exe /c "python -m http.server 8000 --bind 127.0.0.1 >nul 2>&1"
timeout /t 2 /nobreak >nul
start "" "http://127.0.0.1:8000/4vld.html"
