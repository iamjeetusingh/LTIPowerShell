# Data structure
# Array
###################
# $arr1 = 1,2,3,4,5
# $arr1.GetType()


$arr2 = @(1,2,3,4,5)
$arr2.GetType()
$arr2.Count
$arr2[0]
$arr2[-2]
$arr2[0..2]
$arr2[-4..-3]

# listing members
$arr2       | Get-Member
Get-Date    | Get-Member
Get-Process | Get-Member

# multi-dim array
cls
$arr3 = @(
    @(1,2),
    @('a','b'),
    @(Get-Process)
)
$arr3
$arr3[0][0]
$arr3[1][0]
$arr3[2][10]

