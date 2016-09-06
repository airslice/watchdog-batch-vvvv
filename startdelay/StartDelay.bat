@mode con cols=40 lines=3&color C0
@echo off
echo ====== WatchDog Start Delay Demo ======
echo Waiting for System Ready...
ping 1 -n 10 -w 1000 2>nul 1>nul
start D:/vvvv_45beta33.7_x86/vvvv.exe /shutup /o "E:\git\airslice\watchdog-batch-vvvv\_demoworks\demoWork1.v4p"