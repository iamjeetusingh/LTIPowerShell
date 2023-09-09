# Persistent connectinon

Get-Command -Noun PSSession

# check for any connection
Get-PSSession

# create new connection
New-PSSession -ComputerName member1 

# entering into the tunnel
Enter-PSSession -Id 6

#verify the IIS server web-server
Get-WindowsFeature -Name web-server

# install the IIS role
Install-WindowsFeature -Name web-server -IncludeAllSubFeature -IncludeManagementTools
Install-WindowsFeature -Name web-server -IncludeAllSubFeature -IncludeManagementTools -Source "D:\sources\sxs"

# exit the session
Exit-PSSession

# remove the connection
Remove-PSSession -Id 6