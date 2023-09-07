function add-nums{

[int]$v1 = Read-Host "Enter 1st integer"
[int]$v2 = Read-Host "Enter 2nd integer"

Write-Host "Total of $v1 & $v2 is $($v1+$v2)"

}
cls
add-nums