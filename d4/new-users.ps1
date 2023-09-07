# get-help new*ad*organ*unit

# help New-ADOrganizationalUnit -Examples
cls
<#
$ou = Get-Content .\OUlist.txt
Write-Host "Creating OUs" -ForegroundColor Cyan
foreach ($o in $ou){
    New-ADOrganizationalUnit -Name $o -Path "DC=ALPHA,DC=CORP" -ProtectedFromAccidentalDeletion $false
}#>

# creating users in thier respective OUs.
$csvFilePath = ".\user-details.csv"

# Import user data from the CSV file
$userData = Import-Csv -Path $csvFilePath

# Define the Active Directory domain and Organizational Unit (OU)
$domain = "alpha.corp"

# Loop through each row in the CSV and create users
foreach ($user in $userData) {
    $username = $user.Username
    $firstName = $user.FirstName
    $lastName = $user.LastName
    $ou = $user.OU
    $password = $user.Password | ConvertTo-SecureString -AsPlainText -Force
#    $password = $user.Password
    
    # Construct the user's distinguished name (DN)
    $userDN = "CN=$firstName $lastName,$ou"
    #$userDN
    # Check if the user already exists in AD
    if (Get-ADUser -Filter {SamAccountName -eq $username}) {
        Write-Host "User $username already exists. Skipping..."
    }
    else {
        # Prompt for a password or generate one programmatically
        # $password = Read-Host -Prompt "Enter password for $username" -AsSecureString
        
        # Create the user account
        New-ADUser `
        -SamAccountName $username `
        -Name "$firstName $lastName" `
        -GivenName $firstName `
        -Surname $lastName `
        -UserPrincipalName "$username@$domain" `
        -AccountPassword $password `
        -Path $ou `
        -Enabled $true

       # Write-Host "User $username created successfully."
}
}