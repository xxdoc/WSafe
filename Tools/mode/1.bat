@echo off
cls
echo 本項目使用 ClamAV 內核  
set /p a=請輸入盤符（例如C:\ D:\...）:
echo 掃描中...(點擊 Ctrl+C 停止掃描)
"Tools\clamav\clamscan.exe" --recursive --log="Tools\Log\log.txt" --move=".\Tools\Virus" %a%
pause