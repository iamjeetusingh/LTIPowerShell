function get-ping{
param(
    [string]$comp
)

 if(Test-Connection $comp -Count 1 -ErrorAction SilentlyContinue){
        Write-Host $comp -ForegroundColor Green
    }
    else{
        Write-Host $comp -ForegroundColor Red
    }
}

cls
$websites = Get-Content .\sites.txt
$websites | foreach{ 
    get-ping $_

}
