@echo off
echo input the full path of default folder ico, press Enter
set /p a=
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons" /f
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons" /f /v 3 /t REG_SZ /d "%a%"

@echo off
del C:\Users\%username%\AppData\Local\IconCache.db /F /S /Q /A 1>nul 2>nul

echo effective after restart!

pause