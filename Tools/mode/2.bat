@echo off
cls
echo 本項目使用 ClamAV 內核
set /p a=拖動檔案至此（拖動完成后按Enter鍵）:
echo 掃描中...(點擊 Ctrl+C 停止掃描)
"Tools\clamav\clamscan.exe" --log="Tools\Log\log.txt" --move="Tools\Virus" %a%
pause