@ECHO OFF
set "CheckStylePath=C:\Users\tboch\Desktop\Java_Workspace\checkstyle.jar"
set "CodeCheckLoc=C:\Users\tboch\Desktop\Java_Workspace\cs310code.xml"
set "CommentCheckLoc=C:\Users\tboch\Desktop\Java_Workspace\cs310comments.xml"

set CodeLoc = %1
ECHO ------------Code Check---------------
java -jar %CheckStylePath% -c %CodeCheckLoc% %1
ECHO ------------Comment Check------------
java -jar %CheckStylePath% -c %CommentCheckLoc% %1
