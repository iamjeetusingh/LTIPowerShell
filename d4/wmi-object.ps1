Get-WmiObject

# OR
# gwmi

gwmi -List
gwmi -List | Measure-Object
gwmi -List | Where-Object {$_.name -match "^Win32_"} 
gwmi -List | Where-Object {$_.name -match "^Win32_"} | measure

gwmi -Class win32_bios
gwmi -Class win32_operatingsystem
gwmi -Class win32_computersystem
gwmi -Class win32_logicaldisk
gwmi -Class win32_physicalMemory
gwmi -Class win32_networkadapter | Format-Table
gwmi -Class win32_product | select name, version