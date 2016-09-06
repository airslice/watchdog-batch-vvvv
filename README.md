# WatchDog Batch for vvvv

A set of useful batch commands for vvvv. windows system only.

# vvvv commandline parameters

The full parameters of vvvv commandline can be found at:

    https://vvvv.org/documentation/commandline-parameters

# start delay

We usually place a batch in windows startup folder to auto start a vvvv program when the system start. 

But if you use hardware like camera or multiple output graphy card it may be important to start vvvv program after the system services and hardware drivers all ready. With this batch you can set a delay seconds to delay the auto start.

* Set the delay time:

    ping 1 -n 10 -w 1000 2>nul 1>nul

The number after -n actually is the seconds. Now it's 10 seconds delay and you can change it to any number you like.

# watch dog

This batch can help watching vvvv.exe running. It will search the process for vvvv.exe and when it found nothing it will restart the vvvv program. This one may be more useful than watchdog written in vvvv because when vvvv crash the watchdog in vvvv will die at the same time.

* Set the scan time:

    ping 1 -n 30 -w 1000 2>nul 1>nul
    tasklist | find /C "vvvv.exe" > ofsid.txt

Also the number after -n in line 11. Now it scans every 30 seconds.

# watch dog multiple

This batch allows you to watch more than one vvvv programs. Notice that the vvvv should run with /allowmultiple. 

* Set the program numbers:

    if "%num%" == "2"

It's the number in line 20.

# touch screen

This is a soluation for windows touchscreen projects.

First you need to run TouchScreenINIT.bat as administrator ( only once ). 
And at the begining of your batch you need to kill the explorer just like

    taskkill /f /im explorer.exe

Now the windows hand gestures will not effect any more.

If you want your explorer back you can press Ctrl+Alt+Delet > run new task > explorer


Thanks.
