@echo off
REM Start TheIsleServer with the specified parameters
set SERVER_EXECUTABLE=TheIsleServer.exe
set LOG_FLAG=-log
set INI_PARAMETERS=-ini:Engine:[EpicOnlineServices]:DedicatedServerClientId=xyza7891gk5PRo3J7G9puCJGFJjmEguW -ini:Engine:[EpicOnlineServices]:DedicatedServerClientSecret=pKWl6t5i9NJK8gTpVlAxzENZ65P8hYzodV8Dqe5Rlc8 -Port=7777

%SERVER_EXECUTABLE% %LOG_FLAG% %INI_PARAMETERS%

pause
