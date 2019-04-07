@echo off

mkdir %~dp0ScanFiles

set APPNAME=LinkUnitySS

set APPDIR=%~dp0
set APPEXE=%~dp0%APPNAME%.exe
set APPCONFIG=%~dp0%APPNAME%.ini

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\PFU\ScanSnap Extension\%APPNAME%" /t REG_SZ /d %APPEXE%
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\PFU\ScanSnap Extension\%APPNAME%" /v Config /t REG_SZ /d %APPCONFIG%
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\PFU\ScanSnap Extension\%APPNAME%" /v Path /t REG_SZ /d %APPDIR%

pause