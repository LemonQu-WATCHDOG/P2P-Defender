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
echo �뽫���ص��ļ�����"P2P Files Temp"��
@ECHO Off
cd C:\Users\%username%\Desktop\P2PFilesTemp
dir /b *.exe*>filename.txt
set /p File=<filename.txt
ren %File% P2PFileTesting.exe
echo �������ļ������к������
explorer.exe C:\Users\%username%\Desktop\P2PFilesTemp
pause
@ECHO Off
echo ������غ��ļ��밴���������
@ECHO Off
pause
tasklist |findstr P2PFileTesting.exe
taskkill /IM P2PFileTesting.exe /F
@ECHO off
echo �������������ҳ��
echo �����룬��https://www.
@ECHO Off
SET /P  mainPage=
@ECHO Off
echo �������ҳ��Ϊhttps://www.%mainPage%
@ECHO Off
"C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"  https://www.%mainPage%
reg add "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main" /v "Start Page" /t REG_SZ /d " https://www.%mainPage%" /f
pause
echo ��ϵͳ�汾Ϊ
ver
echo ��
echo ��ע�⣬�������֧��Windows 10 ��ͥ���İ棬��������ã���ʹ��Ŀ¼�µĹ���
echo ��װ�������
pause
gpedit.msc
echo ���ڿ����߲��˽�Secedit���﷨�����ֶ����ġ���ɲ���������
pause
echo ������֯����\�û�����\����ģ��\Windows���\Internet Explorer\���ø�����ҳ����
echo ˫�������������á�
pause