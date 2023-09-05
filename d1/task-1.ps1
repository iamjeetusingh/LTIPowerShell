<#
    ask user to enter a service name (winrm, bits)

    & display if the service is running or stopped

    hint: get-service
#>

cls
$name = Read-Host "Enter the service: "
$svc = Get-Service -Name $name
#Write-Host "$name is" $svc.Status
Write-Host "$($svc.Name) is $($svc.Status)"
