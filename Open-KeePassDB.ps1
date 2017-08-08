Set-Location "C:\Program Files (x86)\KeePass Password Safe 2\"
$db =  'C:\Work\pstopinski.kdbx'



$DBPassword = (Get-ItemProperty -Path HKCU:\Software\KeePass\Credentials\DB\ -Name Pass).Pass

$Password = $DBPassword | ConvertTo-SecureString

$BSTR = [System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($Password)
$PlainPassword = [System.Runtime.InteropServices.Marshal]::PtrToStringAuto($BSTR)



$KeepassAppPath = "C:\Program Files (x86)\KeePass Password Safe 2\"


    $PathKPScript = $KeepassAppPath+"keepass.exe"   
    $arguments = ' -pw:"{0}" "{1}"' -f $PlainPassword, $DB

 Start-Process -FilePath $PathKPScript $arguments -WindowStyle Minimized
