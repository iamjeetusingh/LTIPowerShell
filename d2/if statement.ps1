# conditional statements
cls
# if-else statement
$ws = "lti.com"
if ( Test-Connection $ws -Count 1 -ErrorAction SilentlyContinue ){
    Write-Host "Internet is working" -ForegroundColor Green
}
else{
    Write-Host "Internet not working" -ForegroundColor Red
}
