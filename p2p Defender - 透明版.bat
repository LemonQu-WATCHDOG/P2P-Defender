cd C:\Users\%username%\AppData\Local\Temp
rd C:\Users\%username%\AppData\Local\Temp\gsxz
rd C:\Users\%username%\AppData\Local\Temp\gzss
type nul>gsxz
type nul>gzss
cacls gsxz /d %username%
cacls gsxz /d System
cacls gzss /d %username%
cacls gzss /d System
pause
md C:\Users\%username%\Desktop\P2PFilesTemp
echo �뽫���ص��ļ�����"P2P Files Temp"��
cd C:\Users\%username%\Desktop\P2PFilesTemp
dir /b *.exe*>filename.txt
set /p File=<filename.txt
ren %File% P2PFileTesting.exe
echo �������ļ������к������
explorer.exe C:\Users\%username%\Desktop\P2PFilesTemp
pause
echo ������غ��ļ��밴���������
pause
tasklist |findstr P2PFileTesting.exe
taskkill /IM P2PFileTesting.exe /F
echo �������������ҳ��
echo �����룬��https://www.
SET /P  mainPage=
echo �������ҳ��Ϊhttps://www.%mainPage%
"C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"  https://www.%mainPage%
reg add "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main" /v "Start Page" /t REG_SZ /d " https://www.%mainPage%" /f