@echo off
cls
echo �����بϥ� ClamAV ���� 
set /p a=��ʸ�Ƨ��ܦ��]��ʧ����Z��Enter��^:
echo ���y��...(�I�� Ctrl+C ����y)
"Tools/clamav/clamscan.exe" --recursive --log="./Log/log.txt" --move="Virus quarantine area" %a%
pause