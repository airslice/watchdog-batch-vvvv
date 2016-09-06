@mode con cols=40 lines=3&color C0
@echo off
echo ======== WatchDog Demo ================
echo Waiting for System Ready...
ping 1 -n 10 -w 1000 2>nul 1>nul
@mode con cols=40 lines=5&color E0
echo ======== WatchDog Demo ================
echo Starting Program...
start D:/vvvv_45beta33.7_x86/vvvv.exe /shutup /o "E:\git\airslice\watchdog-batch-vvvv\_demoworks\demoWork1.v4p" 
:RESTART
ping 1 -n 30 -w 1000 2>nul 1>nul
tasklist | find /C "vvvv.exe" > ofsid.txt
set /p num= < ofsid.txt
del /F ofsid.txt
echo ======== WatchDog Demo ================
echo Last Checking Time: %time%
echo Running vvvv : %num%
echo ====== PLZ KEEP THIS ALIVE ============
if "%num%" == "0"  start D:/vvvv_45beta33.7_x86/vvvv.exe /shutup /o "E:\git\airslice\watchdog-batch-vvvv\_demoworks\demoWork1.v4p"
goto RESTART
exit