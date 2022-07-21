Write-Host "`nRequired files will now get installed.`n"

Write-Host "Downloading Java 8 from winget."

[string]$current_dir = Get-Location 



try
{
    winget install "Java 8"
}
catch
{
    Write-Host "Couldn't download Java 8 from winget."
    Write-Host "`nDownloading Java 8 from the official website."
    Invoke-WebRequest -Uri "https://javadl.oracle.com/webapps/download/AutoDL?BundleId=246808_424b9da4b48848379167015dcc250d8d" -OutFile  "$current_dir\jre-8u333-windows-x64.exe"
}

Write-Host "Java 8 is done.`n"

Write-Host "Downloading Fabric Loader 0.14.18."
Invoke-WebRequest -Uri "https://maven.fabricmc.net/net/fabricmc/fabric-installer/0.11.0/fabric-installer-0.11.0.exe" -OutFile "$current_dir\fabric-loader-0.14.8-1.19.exe"
Write-Host "Fabric Loader 0.14.18 is done.`n"

Write-Host "Downloading Launcher-2.86-Installer-1.0.1."
Invoke-WebRequest -Uri "https://tlauncher.org/installer" -OutFile "$current_dir\Launcher-2.86-Installer-1.0.1.exe"
Write-Host "Launcher-2.86-Installer-1.0.1 is done.`n"
Write-Host "Everything done, exiting.`n"
