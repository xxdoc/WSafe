@echo off
cls
echo 本項目使用 ClamAV 內核 
set /p a=拖動資料夾至此（拖動完成后按Enter鍵）:
echo 掃描中...(點擊 Ctrl+C 停止掃描)
"Tools/clamav/clamscan.exe" --recursive --log="./Log/log.txt" --move="Virus quarantine area" %a%
pause