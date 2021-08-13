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
echo 请将下载的文件放入"P2P Files Temp"中
cd C:\Users\%username%\Desktop\P2PFilesTemp
dir /b *.exe*>filename.txt
set /p File=<filename.txt
ren %File% P2PFileTesting.exe
echo 请运行文件，运行后按任意键
explorer.exe C:\Users\%username%\Desktop\P2PFilesTemp
pause
echo 如果下载好文件请按任意键继续
pause
tasklist |findstr P2PFileTesting.exe
taskkill /IM P2PFileTesting.exe /F
echo 请设置浏览器主页面
echo 请输入，无https://www.
SET /P  mainPage=
echo 输入的主页面为https://www.%mainPage%
"C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"  https://www.%mainPage%
reg add "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main" /v "Start Page" /t REG_SZ /d " https://www.%mainPage%" /f