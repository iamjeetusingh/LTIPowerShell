# XML

Get-Command -Verb convertto

Get-Command *cli*

Get-Service -Name s* | Select-Object name, status, StartType | Export-Clixml services.xml

Get-Service -Name s* | Select-Object name, status, StartType | ConvertTo-Json | Out-File services.json

