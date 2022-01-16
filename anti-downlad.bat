title P2P Defender
cd C:\Users\%username%\AppData\Local\Temp
rd C:\Users\%username%\AppData\Local\Temp\gsxz
rd C:\Users\%username%\AppData\Local\Temp\gzss
rd C:\Users\%username%\AppData\Local\Temp\dtico
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