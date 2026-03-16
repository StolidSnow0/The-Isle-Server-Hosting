@echo off
cls
echo Protecting isle server from crashes...
title The Isle Server - Your Server Name
:TheIsle
echo (%time%) Checking for updates...
start /wait C:\steamcmd\steamcmd.exe +force_install_dir C:\theisleserver +login anonymous +app_update 412680 -beta evrima validate +quit
echo (%time%) isle server started.
start /wait C:\theisleserver\TheIsleServer.exe ?Port=7777 -ini:Engine:[EpicOnlineServices]:DedicatedServerClientId=xyza7891gk5PRo3J7G9puCJGFJjmEguW -ini:Engine:[EpicOnlineServices]:DedicatedServerClientSecret=pKWl6t5i9NJK8gTpVlAxzENZ65P8hYzodV8Dqe5Rlc8 | set /P "="
echo (%time%) WARNING: isle server closed or crashed, restarting in 1 minute.
timeout /t 60
goto TheIsle
