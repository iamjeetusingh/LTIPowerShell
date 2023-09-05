# Hashtables
# key-value pair
#################

$ht1 = @{}
$ht1.GetType()

# Unordered HT
$ht2 = @{Name="LTI"; Tech="PowerShell"; Location="Coimbatore"}
$ht2

# Ordered HT
$ht3 = [ordered]@{Name="LTI"; Tech="PowerShell"; Location="Coimbatore"}
$ht3

$ht3.Keys
$ht3.Values
$ht3.Count

# add new value
$ht3.Add("Room","Jarvis")
$ht3

# modify
$ht3["Tech"] = "PowerShell"
$ht3

# remove the value
$ht3.Remove("Location")
$ht3

# real time HT example - 1
Get-Process | `
Select-Object -First 4 | `
Select-Object ProcessName, `
@{l="Process ID"; e={$_.id}}


# real time HT example - 2
Get-Process | `
Select-Object -First 4 | `
Select-Object `
@{l="Names of the processes"; e={$_.ProcessName}}, `
@{l="Process ID"; e={$_.id}}