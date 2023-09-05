cls
[int]$num1 = Read-Host "Enter 1st number"
[int]$num2 = Read-Host "Enter 2nd number"

#$num1.GetType()
#$num2.GetType()

$num3 = $num1 + $num2
#$num3.GetType()

Write-Host "Total of $num1 & $num2 is $num3"