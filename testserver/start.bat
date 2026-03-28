@echo off
set JAVA="C:\Program Files\Eclipse Adoptium\jdk-21.0.10.7-hotspot\bin\java.exe"
%JAVA% -Xms512M -Xmx2G -jar server.jar nogui
pause
