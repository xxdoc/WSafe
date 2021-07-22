@ECHO OFF
TITLE 文件粉碎
set /p a=請拖入文件（文件夾），拖入完成后按Enter鍵:
DEL /S /Q /F %a%
RD /S /Q %a%
ECHO 文件或文件夾已被刪除
PAUSE