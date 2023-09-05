cls
$ans = Read-Host "
Select one value from the given options
    1. Check internet connection
    2. Display computername
    3. Display IP address
    4. Break
"

switch( $ans ){
    1{
        if ( Test-Connection google.com -Count 1 -ErrorAction SilentlyContinue ){
            Write-Host "Internet is working" -ForegroundColor Green
        }
        else{
            Write-Host "Internet not working" -ForegroundColor Red
        }

    }
    2{ HOSTNAME.EXE }
    3{ ipconfig }
    4{  Write-Host "Exiting console..." -ForegroundColor Cyan
        sleep 2
        break;}
    default{ Write-Warning "Invalid selection!!!!!" }
}