@ECHO OFF
set "CheckStylePath=#Insert file location#\checkstyle.jar"
set "CodeCheckLoc=#Insert file location#\cs310code.xml"
set "CommentCheckLoc=#Insert file location#\cs310comments.xml"

set CodeLoc = %1
ECHO ------------Code Check---------------
java -jar %CheckStylePath% -c %CodeCheckLoc% %1
ECHO ------------Comment Check------------
java -jar %CheckStylePath% -c %CommentCheckLoc% %1
