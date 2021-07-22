@echo off
rem 定義循環間隔時間和監測的服務：
set secs=90
set srvname="Tools\clamav\clamd.exe"
set minlin=--recursive --log="../Log/log.txt" --move="../Virus" C:\


echo.
echo =======================================
echo ==    查詢計算機服務的狀態，         ==
echo ==    每間隔%secs%秒种進行一次查詢， ==
echo ==    如發現其停止，則立即啟動。     ==
echo =======================================
echo.
echo 此腳本監測的服務是：%srvname%
echo.


if %srvname%. == . goto end


:chkit
set svrst=0
for /F "tokens=1* delims= " %%a in ('net start %srvname% %minlin%') do if /I "%%a %%b" == %srvname% set svrst=1
if %svrst% == 0 net start %srvname% %minlin%
set svrst=
rem 下面的命令用於延時，否則可能會導致cpu單個核心滿載。
ping -n %secs% 127.0.0.1 > nul
goto chkit


:end