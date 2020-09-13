@ECHO OFF
:main
set "CheckStylePath=..\checkstyle.jar"
set "CodeCheckLoc=..\cs310code.xml"
set "CommentCheckLoc=..\cs310comments.xml"

set CodeLoc = %~1
ECHO =====================================
ECHO %~n1.java
ECHO.
ECHO ------------Code Check---------------
java -jar %CheckStylePath% -c %CodeCheckLoc% "%~1"
ECHO.
ECHO ------------Comment Check------------
java -jar %CheckStylePath% -c %CommentCheckLoc% "%~1"
ECHO =====================================
ECHO.
shift
if "%~1" == "" goto:end
goto:main

:end
pause
