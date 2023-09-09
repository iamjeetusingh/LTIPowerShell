function get-wmi{
param([string]$classname)
    try{
        Get-WmiObject -Class $classname -ea stop
    }catch{
        Write-Warning "Error Occured!!!!"
    }

}
cls
get-wmi -classname ahahahah