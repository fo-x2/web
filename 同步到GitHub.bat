@echo off
chcp 65001 >nul
cd /d "%~dp0"
where git >nul 2>nul
if errorlevel 1 set "PATH=I:\Git\cmd;%PATH%"
git add -A
git commit -m "Auto sync %date% %time%"
git pull --rebase --autostash
git push
echo.
echo ============================================
echo  Sync finished. Press any key to close.
echo ============================================
pause >nul
