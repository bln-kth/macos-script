# VMware
Write-Host
Write-Host 'Updates VMware.powerCLI and removes old versions'
Write-Host 'Press any key to continue...'
$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown')

Update-Module VMware.powerCLI

Get-InstalledModule -Name VMware.PowerCLI | ForEach-Object {
$CurrentVersion = $PSItem.Version
Get-InstalledModule -Name $PSItem.Name -AllVersions | Where-Object -Property Version -LT $CurrentVersion
} | Uninstall-Module -Verbose
 
Import-Module VMware.powerCLI
Get-Module -Name VMware.PowerCLI

# NetApp
Write-Host
Write-Host 'Updates NetApp.ONTAP and removes old versions'
Write-Host 'Press any key to continue...'
$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown')

Update-Module NetApp.ONTAP
 
Get-InstalledModule -Name NetApp.ONTAP | ForEach-Object {
$CurrentVersion = $PSItem.Version
Get-InstalledModule -Name $PSItem.Name -AllVersions | Where-Object -Property Version -LT $CurrentVersion
} | Uninstall-Module -Verbose
 
Import-Module NetApp.ONTAP
Get-Module -Name NetApp.ONTAP

# Zoom
Write-Host
Write-Host 'Updates PSZoom and removes old versions'
Write-Host 'Press any key to continue...'
$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown')

Update-Module PSZoom
 
Get-InstalledModule -Name PSZoom | ForEach-Object {
$CurrentVersion = $PSItem.Version
Get-InstalledModule -Name $PSItem.Name -AllVersions | Where-Object -Property Version -LT $CurrentVersion
} | Uninstall-Module -Verbose
 
Import-Module PSZoom
Get-Module -Name PSZoom
