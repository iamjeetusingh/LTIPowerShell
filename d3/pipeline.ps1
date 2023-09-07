Get-Service | ConvertTo-Html | Out-File services.html
.\services.html

Get-Service | Select-Object name,status,StartType | ConvertTo-Html | Out-File services.html

Get-Service | Select-Object name,status,StartType | Where-Object status -eq "running"  | ConvertTo-Html | Out-File services.html

Get-Service | `
Select-Object name,status,StartType | `
Where-Object status -eq "running" | `
Select-Object Name, starttype | `
ConvertTo-Html | `
Out-File services.html

cls
$ip = (Get-NetIPAddress | where-Object {($_.PrefixOrigin -eq "dhcp")}).IPAddress
Write-Host "You IP address is " -NoNewline
Write-Host $ip -ForegroundColor Cyan


