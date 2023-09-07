function add-nums3{
[cmdletbinding()]
param(
[Parameter(Mandatory=$true)][int]$v1,
[Parameter(Mandatory=$true)][int]$v2
)
Write-Host "Total of $v1 & $v2 is $($v1+$v2)"

}
cls
add-nums3 -v1 10