cls

$comp = gc .\comp.txt

$details = Invoke-Command -ComputerName $comp -ScriptBlock{
    $data = gwmi -Class win32_logicaldisk | Select-Object `
    PSComputerName, DeviceID, `
    @{l="Free Space(inGBs)"; e={[math]::Round(($_.FreeSpace / 1GB),2)}}, `
    @{l="Total Space(inGBs)"; e={[math]::Round(($_.size / 1GB),2)}} | ft
    return $data
}

$details | Out-File c:\diskinfo.txt