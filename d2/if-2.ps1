$file = "C:\LTI training\PS\d2\array.ps1"
cls
if ( Test-Path $file ){
   Write-Host "File is present" -ForegroundColor Green
}
else{
   Write-Host "File is NOT present" -ForegroundColor Red
}