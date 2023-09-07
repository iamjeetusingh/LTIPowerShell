<#

    Task
    ----------

    - ask user for a service name (winrm, bits)
    - check if the service is in running or stopped state.
        - if the service is stopped, then ask user to start/exit the service
        - if the service is running, then ask user to stop/exit the console.
    - at last, validate if the final state running/stopped.

#>
cls
$name = Read-Host "Enter the service name you want to check: "
$svc = Get-Service -Name $name

if ( $($svc.Status) -eq "Running" ){
# if running
    Write-Host "$($svc.Name) is $($svc.Status)" -ForegroundColor Green

    $ans = Read-Host "Do you want to stop the service (Y|N) "
    switch($ans){
        "y" { Stop-Service -Name $name }
        "n" { break; }
        default {Write-Warning "Invalid selection"
        break;}
    }
    
    if ($ans -eq "y"){
    Write-Host "Checking current status" -ForegroundColor Cyan
    sleep 2
    Write-Host "$((Get-Service -Name $name).Name) is $((Get-Service -Name $name).Status)"
    }

}else{
# if stopped
    Write-Host "$($svc.Name) is $($svc.Status)" -ForegroundColor Red
    
    $ans = Read-Host "Do you want to start the service (Y|N) "
    switch($ans){
        "y" { Start-Service -Name $name }
        "n" { break; }
        default {Write-Warning "Invalid selection"
        break;}
    }
    
    if ($ans -eq "y"){
    Write-Host "Checking current status" -ForegroundColor Cyan
    sleep 2
    Write-Host "$((Get-Service -Name $name).Name) is $((Get-Service -Name $name).Status)"
    }

}