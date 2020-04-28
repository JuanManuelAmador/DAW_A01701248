@echo off
cd /D %~dp0
cmd.exe /C start "" /MIN call "C:\Users\Pepus Perez Flores\Documents\DAW_A01701248\A01701248_PHP\killprocess.bat" "httpd.exe"
if not exist apache\logs\httpd.pid GOTO exit
del apache\logs\httpd.pid

:exit
