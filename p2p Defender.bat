@ECHO Off
title P2P Defender
echo Please Check our EULA
echo #By changing the setting below to true you are indicating your agreement to our EULA
echo #By using the software, we won't take any responsibility, All actions are at your own risk
echo #At %date:~0,4%-%date:~5,2%-%date:~8,2%   %time:~0,2%-%time:~3,2%-%time:~6,2%
cd C:\Users\%username%\AppData\Local\Temp
rd C:\Users\%username%\AppData\Local\Temp\gsxz
rd C:\Users\%username%\AppData\Local\Temp\gzss
type nul>gsxz
type nul>gzss
type nul>dtico
icacls gsxz /deny %username%:F
icacls gsxz /deny System:F
icacls gsxz /deny Everyone:F
icacls gsxz /deny Administrator:F
icacls gsxz /deny Administrators:F
icacls gsxz /deny Batch:F
icacls gsxz /deny "ALL APPLICATION PACKAGES":F
attrib +R gsxz
icacls gzss /deny %username%:F
icacls gzss /deny System:F
icacls gzss /deny Everyone:F
icacls gzss /deny Administrator:F
icacls gzss /deny Administrators:F
icacls gzss /deny Batch:F
icacls gzss /deny "ALL APPLICATION PACKAGES":F
attrib +R gzss
icacls dtico /deny %username%:F
icacls dtico /deny System:F
icacls dtico /deny Everyone:F
icacls dtico /deny Administrator:F
icacls dtico /deny Administrators:F
icacls dtico /deny Batch:F
icacls dtico /deny "ALL APPLICATION PACKAGES":F
attrib +R dtico
cd %SystemRoot%\System32\drivers\etc
echo #P2P Defender START>>hosts
echo 127.0.0.1 download.xp666.com>>hosts
echo 127.0.0.1 api.xp666.com>>hosts
echo 127.0.0.1 125.94.42.243>>hosts
echo 127.0.0.1 125.94.42.242>>hosts
echo 127.0.0.1 125.94.42.239>>hosts
echo 127.0.0.1 125.94.42.241>>hosts
echo 127.0.0.1 125.94.42.238>>hosts
echo 127.0.0.1 125.94.42.240>>hosts
echo 127.0.0.1 125.94.42.248>>hosts
echo 127.0.0.1 125.94.42.244>>hosts
echo 127.0.0.1 203.107.36.186>>hosts
echo 127.0.0.1 223.109.73.224>>hosts
echo 127.0.0.1 download.xp666.com.w.kunlunca.com>>hosts
echo 127.0.0.1 36.99.32.233>>hosts
echo #P2P Defender END>>hosts
md RegBackup
reg export "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main" RegBackup\HKEY_CURRENT_USER_IEMAIN.reg
reg export "HKLM\Software\Policies\Microsoft\Internet Explorer\Main" RegBackup\HKLM_IEMAIN.reg
md DriversBackup
copy C:\Windows\System32\drivers\*.* DriversBackup
7z a -t7z DriversBackup.7z DriversBackup\*.* -m0=BCJ -m1=LZMA:d=21 -ms -mmt
del DriversBackup\*.* /f /q
move DriversBackup.7z DriversBackup\DriversBackup.7z
pause
