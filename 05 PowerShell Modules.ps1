Set-PSRepository -Name PSGallery -InstallationPolicy Trusted

Write-Host "Installing PowerShellGet Module" -ForegroundColor Cyan
Install-Module PowershellGet -Force -AllowClobber

Write-Host "Installing AZ PowerShell Module" -ForegroundColor Cyan
Install-Module -Name Az -AllowClobber

Write-Host "Installing VMware PowerCLI Module" -ForegroundColor Cyan
Install-Module -Name VMware.PowerCLI -AllowClobber

Write-Host "Installing Exchange Online PowerShell Module" -ForegroundColor Cyan
Install-Module -Name ExchangeOnlineManagement -AllowClobber
