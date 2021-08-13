@ECHO Off
cd C:\Users\%username%\AppData\Local\Temp
rd C:\Users\%username%\AppData\Local\Temp\gsxz
rd C:\Users\%username%\AppData\Local\Temp\gzss
type nul>gsxz
type nul>gzss
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
pause
md C:\Users\%username%\Desktop\P2PFilesTemp
@ECHO off
echo 请将下载的文件放入"P2P Files Temp"中
@ECHO Off
cd C:\Users\%username%\Desktop\P2PFilesTemp
dir /b *.exe*>filename.txt
set /p File=<filename.txt
ren %File% P2PFileTesting.exe
echo 请运行文件，运行后按任意键
explorer.exe C:\Users\%username%\Desktop\P2PFilesTemp
pause
@ECHO Off
echo 如果下载好文件请按任意键继续
@ECHO Off
pause
tasklist |findstr P2PFileTesting.exe
taskkill /IM P2PFileTesting.exe /F
@ECHO off
echo 请设置浏览器主页面
echo 请输入，无https://www.
@ECHO Off
SET /P  mainPage=
@ECHO Off
echo 输入的主页面为https://www.%mainPage%
@ECHO Off
"C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"  https://www.%mainPage%
reg add "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main" /v "Start Page" /t REG_SZ /d " https://www.%mainPage%" /f
pause
echo 此系统版本为
ver
echo 。
echo 请注意，此组件不支持Windows 10 家庭中文版，如果不适用，请使用目录下的工具
echo 安装完请继续
pause
gpedit.msc
echo 由于开发者不了解Secedit的语法，请手动更改。完成步骤后按任意键
pause
echo 本地组织策略\用户配置\管理模板\Windows组件\Internet Explorer\禁用更改主页设置
echo 双击，设置已启用。
pause