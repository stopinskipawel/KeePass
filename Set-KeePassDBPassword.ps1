function Set-KeePassDBPassword {
    Param
    (
         [Parameter(Mandatory=$true, Position=0)]
         [string] $Password 
    )


    If (!(Test-Path "HKCU:\Software\KeePass\Credentials\DB"))
    {
    New-Item -Path HKCU:\Software\KeePass\Credentials\DB
    }
        $SecurePassword = $Password | ConvertTo-SecureString -AsPlainText -Force 
        $SecurePasswordString = ConvertFrom-SecureString $SecurePassword 

       
        $SecurePasswordString = ConvertFrom-SecureString $SecurePassword 
        New-ItemProperty -Path HKCU:\Software\KeePass\Credentials\DB\ -PropertyType String -Name Pass -Value $SecurePasswordString -Force
        $SecurePasswordString


    
}


