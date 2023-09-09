# get-help new*ad*organ*unit

# help New-ADOrganizationalUnit -Examples
cls
<#
$ou = Get-Content .\OUlist.txt
Write-Host "Creating OUs" -ForegroundColor Cyan
foreach ($o in $ou){
    New-ADOrganizationalUnit -Name $o -Path "DC=ALPHA,DC=CORP" -ProtectedFromAccidentalDeletion $false
}#>

$Users = Import-csv .\user-details.csv

foreach ($User in $Users)
{
	$Username = $User.username
	$Password = $User.Password
    $Firstname = $User.firstname
	$Lastname = $User.lastname
    $email = $User.email
	$OU = $User.ou 
	$upn= "$Username@alpha.corp"
	$name = "$Firstname $Lastname"

	if (Get-ADUser -F {SamAccountName -eq $Username})
	{
		Write-Warning "A user account with username $Username already exist."
	}
	else
	{
		New-ADUser `
	-SamAccountName $Username `
	-UserPrincipalName $upn `
	-Name $name `
	-GivenName $Firstname `
	-Surname $Lastname `
	-Enabled $True `
	-Path $OU `
	-EmailAddress $email `
	-AccountPassword (convertto-securestring $Password -AsPlainText -Force) -ChangePasswordAtLogon $True
            
	}
}
