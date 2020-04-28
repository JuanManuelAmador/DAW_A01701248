@echo off
rem START or STOP Services
rem ----------------------------------
rem Check if argument is STOP or START

if not ""%1"" == ""START"" goto stop

if exist C:\Users\Pepus Perez Flores\Documents\DAW_A01701248\A01701248_PHP\hypersonic\scripts\ctl.bat (start /MIN /B C:\Users\Pepus Perez Flores\Documents\DAW_A01701248\A01701248_PHP\server\hsql-sample-database\scripts\ctl.bat START)
if exist C:\Users\Pepus Perez Flores\Documents\DAW_A01701248\A01701248_PHP\ingres\scripts\ctl.bat (start /MIN /B C:\Users\Pepus Perez Flores\Documents\DAW_A01701248\A01701248_PHP\ingres\scripts\ctl.bat START)
if exist C:\Users\Pepus Perez Flores\Documents\DAW_A01701248\A01701248_PHP\mysql\scripts\ctl.bat (start /MIN /B C:\Users\Pepus Perez Flores\Documents\DAW_A01701248\A01701248_PHP\mysql\scripts\ctl.bat START)
if exist C:\Users\Pepus Perez Flores\Documents\DAW_A01701248\A01701248_PHP\postgresql\scripts\ctl.bat (start /MIN /B C:\Users\Pepus Perez Flores\Documents\DAW_A01701248\A01701248_PHP\postgresql\scripts\ctl.bat START)
if exist C:\Users\Pepus Perez Flores\Documents\DAW_A01701248\A01701248_PHP\apache\scripts\ctl.bat (start /MIN /B C:\Users\Pepus Perez Flores\Documents\DAW_A01701248\A01701248_PHP\apache\scripts\ctl.bat START)
if exist C:\Users\Pepus Perez Flores\Documents\DAW_A01701248\A01701248_PHP\openoffice\scripts\ctl.bat (start /MIN /B C:\Users\Pepus Perez Flores\Documents\DAW_A01701248\A01701248_PHP\openoffice\scripts\ctl.bat START)
if exist C:\Users\Pepus Perez Flores\Documents\DAW_A01701248\A01701248_PHP\apache-tomcat\scripts\ctl.bat (start /MIN /B C:\Users\Pepus Perez Flores\Documents\DAW_A01701248\A01701248_PHP\apache-tomcat\scripts\ctl.bat START)
if exist C:\Users\Pepus Perez Flores\Documents\DAW_A01701248\A01701248_PHP\resin\scripts\ctl.bat (start /MIN /B C:\Users\Pepus Perez Flores\Documents\DAW_A01701248\A01701248_PHP\resin\scripts\ctl.bat START)
if exist C:\Users\Pepus Perez Flores\Documents\DAW_A01701248\A01701248_PHP\jetty\scripts\ctl.bat (start /MIN /B C:\Users\Pepus Perez Flores\Documents\DAW_A01701248\A01701248_PHP\jetty\scripts\ctl.bat START)
if exist C:\Users\Pepus Perez Flores\Documents\DAW_A01701248\A01701248_PHP\subversion\scripts\ctl.bat (start /MIN /B C:\Users\Pepus Perez Flores\Documents\DAW_A01701248\A01701248_PHP\subversion\scripts\ctl.bat START)
rem RUBY_APPLICATION_START
if exist C:\Users\Pepus Perez Flores\Documents\DAW_A01701248\A01701248_PHP\lucene\scripts\ctl.bat (start /MIN /B C:\Users\Pepus Perez Flores\Documents\DAW_A01701248\A01701248_PHP\lucene\scripts\ctl.bat START)
if exist C:\Users\Pepus Perez Flores\Documents\DAW_A01701248\A01701248_PHP\third_application\scripts\ctl.bat (start /MIN /B C:\Users\Pepus Perez Flores\Documents\DAW_A01701248\A01701248_PHP\third_application\scripts\ctl.bat START)
goto end

:stop
echo "Stopping services ..."
if exist C:\Users\Pepus Perez Flores\Documents\DAW_A01701248\A01701248_PHP\third_application\scripts\ctl.bat (start /MIN /B C:\Users\Pepus Perez Flores\Documents\DAW_A01701248\A01701248_PHP\third_application\scripts\ctl.bat STOP)
if exist C:\Users\Pepus Perez Flores\Documents\DAW_A01701248\A01701248_PHP\lucene\scripts\ctl.bat (start /MIN /B C:\Users\Pepus Perez Flores\Documents\DAW_A01701248\A01701248_PHP\lucene\scripts\ctl.bat STOP)
rem RUBY_APPLICATION_STOP
if exist C:\Users\Pepus Perez Flores\Documents\DAW_A01701248\A01701248_PHP\subversion\scripts\ctl.bat (start /MIN /B C:\Users\Pepus Perez Flores\Documents\DAW_A01701248\A01701248_PHP\subversion\scripts\ctl.bat STOP)
if exist C:\Users\Pepus Perez Flores\Documents\DAW_A01701248\A01701248_PHP\jetty\scripts\ctl.bat (start /MIN /B C:\Users\Pepus Perez Flores\Documents\DAW_A01701248\A01701248_PHP\jetty\scripts\ctl.bat STOP)
if exist C:\Users\Pepus Perez Flores\Documents\DAW_A01701248\A01701248_PHP\hypersonic\scripts\ctl.bat (start /MIN /B C:\Users\Pepus Perez Flores\Documents\DAW_A01701248\A01701248_PHP\server\hsql-sample-database\scripts\ctl.bat STOP)
if exist C:\Users\Pepus Perez Flores\Documents\DAW_A01701248\A01701248_PHP\resin\scripts\ctl.bat (start /MIN /B C:\Users\Pepus Perez Flores\Documents\DAW_A01701248\A01701248_PHP\resin\scripts\ctl.bat STOP)
if exist C:\Users\Pepus Perez Flores\Documents\DAW_A01701248\A01701248_PHP\apache-tomcat\scripts\ctl.bat (start /MIN /B /WAIT C:\Users\Pepus Perez Flores\Documents\DAW_A01701248\A01701248_PHP\apache-tomcat\scripts\ctl.bat STOP)
if exist C:\Users\Pepus Perez Flores\Documents\DAW_A01701248\A01701248_PHP\openoffice\scripts\ctl.bat (start /MIN /B C:\Users\Pepus Perez Flores\Documents\DAW_A01701248\A01701248_PHP\openoffice\scripts\ctl.bat STOP)
if exist C:\Users\Pepus Perez Flores\Documents\DAW_A01701248\A01701248_PHP\apache\scripts\ctl.bat (start /MIN /B C:\Users\Pepus Perez Flores\Documents\DAW_A01701248\A01701248_PHP\apache\scripts\ctl.bat STOP)
if exist C:\Users\Pepus Perez Flores\Documents\DAW_A01701248\A01701248_PHP\ingres\scripts\ctl.bat (start /MIN /B C:\Users\Pepus Perez Flores\Documents\DAW_A01701248\A01701248_PHP\ingres\scripts\ctl.bat STOP)
if exist C:\Users\Pepus Perez Flores\Documents\DAW_A01701248\A01701248_PHP\mysql\scripts\ctl.bat (start /MIN /B C:\Users\Pepus Perez Flores\Documents\DAW_A01701248\A01701248_PHP\mysql\scripts\ctl.bat STOP)
if exist C:\Users\Pepus Perez Flores\Documents\DAW_A01701248\A01701248_PHP\postgresql\scripts\ctl.bat (start /MIN /B C:\Users\Pepus Perez Flores\Documents\DAW_A01701248\A01701248_PHP\postgresql\scripts\ctl.bat STOP)

:end

