@echo off
rem �w�q�`�����j�ɶ��M�ʴ����A�ȡG
set secs=90
set srvname="Tools\clamav\clamd.exe"
set minlin=--recursive --log="../Log/log.txt" --move="../Virus" C:\


echo.
echo =======================================
echo ==    �d�߭p����A�Ȫ����A�A         ==
echo ==    �C���j%secs%�����i��@���d�ߡA ==
echo ==    �p�o�{�䰱��A�h�ߧY�ҰʡC     ==
echo =======================================
echo.
echo ���}���ʴ����A�ȬO�G%srvname%
echo.


if %srvname%. == . goto end


:chkit
set svrst=0
for /F "tokens=1* delims= " %%a in ('net start %srvname% %minlin%') do if /I "%%a %%b" == %srvname% set svrst=1
if %svrst% == 0 net start %srvname% %minlin%
set svrst=
rem �U�����R�O�Ω󩵮ɡA�_�h�i��|�ɭPcpu��Ӯ֤ߺ����C
ping -n %secs% 127.0.0.1 > nul
goto chkit


:end