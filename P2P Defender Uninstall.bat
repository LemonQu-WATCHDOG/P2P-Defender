echo off
echo ����ж��
echo on
cd C:\Users\%username%\AppData\Local\Temp
cacls gsxz /G System:f 
del gsxz
cacls gzss /G System:f
del gzss
cd C:\Users\%username%\Desktop\P2PFilesTemp
del /f /s /q C:\Users\%username%\Desktop\P2PFilesTemp
rd /s /q C:\Users\%username%\Desktop\P2PFilesTemp
echo off
echo ж�����
pause