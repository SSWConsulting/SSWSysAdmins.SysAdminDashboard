Set-ExecutionPolicy Unrestricted -force
$Theme = Get-UDTheme -Name 'Default'

$Pages = @()
$Pages += . (Join-Path $PSScriptRoot "pages\home.ps1")
$Pages += . (Join-Path $PSScriptRoot "pages\about.ps1")
$Pages += . (Join-Path $PSScriptRoot "pages\links.ps1")
$Pages += . (Join-Path $PSScriptRoot "pages\azurebilling.ps1")
$Pages += . (Join-Path $PSScriptRoot "pages\microsofthealth.ps1")
$Pages += . (Join-Path $PSScriptRoot "pages\uptimerobot.ps1")
$Pages += . (Join-Path $PSScriptRoot "pages\temperature.ps1")
$Pages += . (Join-Path $PSScriptRoot "pages\accountlockouts.ps1")
$Pages += . (Join-Path $PSScriptRoot "pages\WUG.ps1")
$Pages += New-UDComponentPage -Command 'Invoke-UDRedirect'

	
$Dashboard = New-UDDashboard -Theme $Theme -Pages $Pages -Title "SSW SysAdmins Universal Dashboard" -Navigation $Navigation
Start-UDDashboard -Port 5060 -Wait -Dashboard $Dashboard 