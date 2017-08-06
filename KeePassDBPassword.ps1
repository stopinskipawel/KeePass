
$PlainPassword = "xxxx"
$SecurePassword = $PlainPassword | ConvertTo-SecureString -AsPlainText -Force 
ConvertFrom-SecureString $SecurePassword | clip

$DBPassword = ConvertFrom-SecureString $SecurePassword
$DBPassword
