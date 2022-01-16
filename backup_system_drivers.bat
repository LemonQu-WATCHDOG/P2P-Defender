title P2P Defender
md DriversBackup
copy C:\Windows\System32\drivers\*.* DriversBackup
7z a -t7z DriversBackup.7z DriversBackup\*.* -m0=BCJ -m1=LZMA:d=21 -ms -mmt
del DriversBackup\*.* /f /q
move DriversBackup.7z DriversBackup\DriversBackup.7z
pause