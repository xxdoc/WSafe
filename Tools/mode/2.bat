@echo off
cls
echo �����بϥ� ClamAV ����
set /p a=����ɮצܦ��]��ʧ����Z��Enter��^:
echo ���y��...(�I�� Ctrl+C ����y)
"Tools\clamav\clamscan.exe" --log="Tools\Log\log.txt" --move="Tools\Virus" %a%
pause