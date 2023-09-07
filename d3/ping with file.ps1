cls
#$websites = @("google.com","flipkart.com","lti.com","amazon.com","facebook.com")
# create a file
# notepad.exe sites.txt


$websites = Get-Content .\sites.txt

foreach($w in $websites){
    if(Test-Connection $w -Count 1 -ErrorAction SilentlyContinue){
        Write-Host $w -ForegroundColor Green
    }
    else{
        Write-Host $w -ForegroundColor Red
    }
}