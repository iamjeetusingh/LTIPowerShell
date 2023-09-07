<#
    List below values dynamically, whenever PS/IDE is opened.
        1. You have logged in as: <>
        2. Internet status : <active/inactive>
        3. IP Address: <>
        4. Number of processors: $env:NUMBER_OF_PROCESSORS
#>

function get-username{
    Write-Host "YOu have logged in as: "$env:USERNAME
}
function get-internetstatus{
    if ( Test-Connection google.com -Count 1 -ErrorAction SilentlyContinue ){
            Write-Host "Internet is " -NoNewline
            Write-Host "active" -ForegroundColor Green
        }
        else{
            Write-Host "Internet is " -NoNewline
            Write-Host "Inactive" -ForegroundColor red
        }
}

function get-myipaddress{
    $ip = (Get-NetIPAddress | where-Object {($_.PrefixOrigin -eq "dhcp")}).IPAddress
    Write-Host "You IP address is " -NoNewline
    Write-Host $ip -ForegroundColor Green
}

function get-processors{
    Write-Host "Number of processors: " $env:NUMBER_OF_PROCESSORS
}
cls
get-username
get-internetstatus
get-myipaddress
get-processors