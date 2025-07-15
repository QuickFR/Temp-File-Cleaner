@echo off
title 🧹 Temp File Cleaner MultiTool
color 0A

:menu
cls
echo ================================
echo     Temp File Cleaner Tool     
echo ================================
echo 1. Clean User Temp Folder
echo 2. Clean Windows Temp Folder
echo 3. Clean Prefetch Folder
echo 4. Clean Recycle Bin
echo 5. Clean All Above
echo 6. Exit
echo ================================
set /p choice=Select an option (1-6): 

if "%choice%"=="1" goto cleanUserTemp
if "%choice%"=="2" goto cleanWinTemp
if "%choice%"=="3" goto cleanPrefetch
if "%choice%"=="4" goto cleanRecycleBin
if "%choice%"=="5" goto cleanAll
if "%choice%"=="6" exit
goto menu

:cleanUserTemp
echo Cleaning %TEMP% ...
del /s /q /f "%TEMP%\*.*"
echo Done!
pause
goto menu

:cleanWinTemp
echo Cleaning C:\Windows\Temp ...
del /s /q /f "C:\Windows\Temp\*.*"
echo Done!
pause
goto menu

:cleanPrefetch
echo Cleaning C:\Windows\Prefetch ...
del /s /q /f "C:\Windows\Prefetch\*.*"
echo Done!
pause
goto menu

:cleanRecycleBin
echo Cleaning Recycle Bin ...
PowerShell.exe -Command "Clear-RecycleBin -Force"
echo Done!
pause
goto menu

:cleanAll
call :cleanUserTemp
call :cleanWinTemp
call :cleanPrefetch
call :cleanRecycleBin
goto menu
