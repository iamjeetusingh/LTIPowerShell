# Loops

<#
    - for loop
    - while loop
    - do while loop
    - foreach loop
#>

# for loop
cls
$arr1 = @(1..10)
for ($i = 1; $i -le $arr1.Count; $i++){
    Write-Host $i
}

# while loop
cls
$arr2 = @("one","two","three")
$c = 0
while ( $c -lt $arr2.Length ){
    $arr2[$c]
    $c++
}

# do-while loop
cls
$arr3 = @("one","two","three","four")
$c1 = 0
do{
    $arr3[$c1]
    $c1++
}while ( $c1 -lt $arr3.Length )

# foreach loop
cls
$arr4 = @(1..5)
foreach ( $a in $arr4 ){
    Write-Host $a
}

cls
$websites = @("google.com","flipkart.com","lti.com","amazon.com","facebook.com")
foreach($w in $websites){
    Test-Connection $w -Count 1 -ErrorAction SilentlyContinue
}