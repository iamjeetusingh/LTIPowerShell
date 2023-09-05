# Members

Get-Date    | Get-Member
Get-Process | Get-Member

Test-Connection google.com -Count 1 | Select-Object Address, IPV4Address
Test-Connection google.com | Get-Member

# Creating custom members using object
$obj1 = New-Object -TypeName psobject
$obj1.GetType()
$obj1 | Get-Member

# adding a member to this object
Add-Member -InputObject $obj1 -MemberType NoteProperty `
-Name "key1" -Value "Jarvis"
$obj1 | Get-Member

# adding a member to this object
Add-Member -InputObject $obj1 -MemberType NoteProperty `
-Name "key2" -Value "B29.2"
$obj1 | Get-Member

# adding multiple members to the object
$newmembers = @{
    user1 = "Neelesh"
    user2 = "Kartick"
    user3 = "Aaditya"
    user4 = "Dinesh"
}
#$newmembers.GetType()

$obj2 = New-Object -TypeName psobject -Property $newmembers
$obj2 | Get-Member