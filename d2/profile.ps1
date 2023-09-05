cls
if (Test-Path $profile){
    Write-Host "Profile present" -ForegroundColor Green
}
else{
    Write-Host "Profile NOT present" -ForegroundColor red

    #dramatic pause (optional)
    Write-Host "creating the profile...."
    sleep 2

    # creating profile
    New-Item -Path $profile -Force

}