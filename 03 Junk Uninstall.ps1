$ToRemove = "Microsoft.GamingApp", "Microsoft.WindowsMaps", "Microsoft.549981C3F5F10", "Microsoft.BingNews", "Microsoft.BingWeather", "Microsoft.MicrosoftSolitaireCollection", "Microsoft.OutlookForWindows", "Microsoft.People", "microsoft.windowscommunicationsapps", "Microsoft.ZuneVideo", "Microsoft.XboxGamingOverlay"

foreach ($entry in $ToRemove){
	Get-AppxPackage -Name $entry | Remove-AppxPackage
}




