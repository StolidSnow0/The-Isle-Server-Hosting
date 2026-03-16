@echo off
cls
echo Protecting isle server from crashes...
title The Isle Server - My Amazing Server
:TheIsle
echo (%time%) Checking for updates...
start /wait C:\steamcmd\steamcmd.exe +force_install_dir C:\TheIsleServer +login anonymous +app_update 412680 validate +quit
echo (%time%) isle server started.
start /wait C:\TheIsleServer\TheIsleServer.exe /Game/TheIsle/Maps/Landscape3/Isle_V3?Port=7777?MaxPlayers=100?game=Survival -log | set /P "="
echo (%time%) WARNING: isle server closed or crashed, restarting in 1 minute.
timeout /t 60
goto TheIsle
