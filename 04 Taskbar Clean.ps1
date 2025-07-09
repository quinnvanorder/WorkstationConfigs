# Below command lists all possible entries. 
#(New-Object -Com Shell.Application).NameSpace("shell:::{4234d49b-0245-4df3-b780-3893943456e1}").Items() | Select Name | Sort Name

$remove = "Microsoft Store", "Microsoft 365 Copilot", "Copilot"

foreach ($program in $remove) {
	((New-Object -Com Shell.Application).NameSpace('shell:::{4234d49b-0245-4df3-b780-3893943456e1}').Items() | ?{$_.Name -eq $program}).Verbs() | ?{$_.Name.replace('&','') -match 'Unpin from taskbar'} | %{$_.DoIt()}
}



