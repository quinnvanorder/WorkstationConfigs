function Install-App {
    param (
        [Parameter(Mandatory)]
        [string]$Name,

        [Parameter(Mandatory)]
        [string]$Id,

        [string]$Source
    )

    Write-Host "`nInstalling $Name" -ForegroundColor Cyan

    $wingetArgs = @("install", "--id=$Id", "-e", "--accept-source-agreements", "--accept-package-agreements")

    if ($Source) {
        $wingetArgs += "--source", $Source
    }

    winget @wingetArgs
}

# Update winget
Write-Host "Updating WinGet" -ForegroundColor Cyan
winget upgrade winget

Install-App -Name "7Zip" -Id "7zip.7zip"
Install-App -Name "Audacity" -id "Audacity.Audacity"
Install-App -Name "Calibre" -Id "calibre.calibre"
Install-App -Name "Claude Code" -Id "Anthropic.ClaudeCode"
Install-App -Name "Claude Desktop" -Id "Anthropic.Claude"
Install-App -Name "Discord" -ID "Discord.Discord"
Install-App -Name "EarTrumpet" -Id "File-New-Project.EarTrumpet"
Install-App -Name "Firefox" -Id "Mozilla.Firefox"
Install-App -Name "Git" -Id "Git.Git"
Install-App -Name "GitHub Desktop" -Id "GitHub.GitHubDesktop"
Install-App -Name "Google Chrome" -Id "Google.Chrome"
#Install-App -Name "Logitech GHUB" -Id "Logitech.GHUB"
Install-App -Name "Microsoft OneDrive" -Id "Microsoft.OneDrive"
Install-App -Name "Microsoft ToDo" -Id "9NBLGGH5R558" -Source "msstore"
Install-App -Name "Notepad++" -Id "Notepad++.Notepad++"
Install-App -Name "PDFsam" -Id "PDFsam.PDFsam"
Install-App -Name "PowerShell 7" -Id "Microsoft.PowerShell"
Install-App -Name "Putty" -Id "PuTTY.PuTTY"
Install-App -Name "Signal" -Id "OpenWhisperSystems.Signal"
Install-App -Name "Steam" -Id "Valve.Steam"
Install-App -Name "TailScale" -Id "tailscale.tailscale"
Install-App -Name "Visual Studio Code" -Id "Microsoft.VisualStudioCode"
Install-App -Name "Webex" -Id "Cisco.CiscoWebexMeetings"
Install-App -Name "Windows Terminal" -Id "Microsoft.WindowsTerminal"
Install-App -Name "Zoom" -Id "Zoom.Zoom.EXE"
