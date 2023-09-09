function Get-MyDiskInfo{

    gwmi -Class win32_logicaldisk | Select-Object `
    DeviceID, `
    @{l="Free Space(inGBs)"; e={[math]::Round(($_.FreeSpace / 1GB),2)}}, `
    @{l="Total Space(inGBs)"; e={[math]::Round(($_.size / 1GB),2)}}

}
