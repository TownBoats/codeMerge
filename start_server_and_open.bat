@echo off
title CodeMerge Local Server
cd /d "%~dp0"

echo ==================================================
echo  Starting local server at http://localhost:8000
echo ==================================================
echo.
echo  - This window will show server logs.
echo  - Press Ctrl+C in this window to stop the server.
echo.

:: Add a small delay to allow the server to start before the browser opens.
echo Opening your browser...
timeout /t 2 /nobreak > nul
start "" "http://localhost:8000"

:: Try Python 3 command, if it fails, try Python 2 command.
(python -m http.server 8000) || (python -m SimpleHTTPServer 8000)

:: The script will only reach here if both commands above fail.
if errorlevel 1 (
    echo.
    echo [ERROR] Failed to start server.
    echo Please make sure Python (version 2 or 3) is installed
    echo and accessible via your system's PATH.
    echo.
    pause
)
