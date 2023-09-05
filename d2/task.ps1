# Task
#######
#  List all the Running services with display names only.
#######

# Get-Command -Noun object

# "jeetu" -ceq "JEETU"

Get-Service | Where-Object Status -eq "Running" | Select-Object DisplayName

#status = "Running"
#starttype = "manual"

Get-Service | `
Where-Object { ($_.Status -eq "Running") -and ($_.StartType -eq "manual") } `
| Select-Object DisplayName

Get-Service -DisplayName "Geolocation Service" | `
Select-Object name, StartType, Status