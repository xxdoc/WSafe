@echo off
cls
echo �����بϥ� ClamAV ����  
set /p a=�п�J�L�š]�ҦpC:\ D:\...�^:
echo ���y��...(�I�� Ctrl+C ����y)
"Tools\clamav\clamscan.exe" --recursive --log="Tools\Log\log.txt" --move=".\Tools\Virus" %a%
pause