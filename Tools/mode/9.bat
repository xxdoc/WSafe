@echo off
set /p x=请输入欲遮蔽的网址

echo.>>"C:\WINDOWS\system32\drivers\etc\hosts"
echo 0.0.0.0 %x% >>"C:\WINDOWS\system32\drivers\etc\hosts" 