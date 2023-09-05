# conversion

# cmdlet
Get-Command -Verb convertto

Get-Service | Measure-Object

Get-Service -Name s* #| Measure-Object

# convert to HTML
Get-Service -Name s* | Select-Object Name, Status | ConvertTo-Html | Out-File S-services.html
.\S-services.html

# convert to CSV
Get-Service -Name s* | Select-Object Name, Status | ConvertTo-Csv | Out-File service.csv
.\service.csv

# convert to JSON
Get-Service -Name s* | Select-Object Name, Status | ConvertTo-Json | Out-File service.json
.\service.json

# convert to TEXT
Get-Service -Name s* | Select-Object Name, Status | Out-File service.text
.\service.text