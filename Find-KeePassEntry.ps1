
$KeepassAppPath = "C:\Program Files (x86)\KeePass Password Safe 2\"


    $PathKPScript = $KeepassAppPath+"keepass.exe"   
    $arguments = ' -entry-url-open -uuid:59CD70364B17B046925A03B8C2910719'

 Start-Process -FilePath $PathKPScript $arguments 