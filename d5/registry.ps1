Get-PSDrive -PSProvider Registry

cd hklm:\
Get-ChildItem
ls .\SOFTWARE\

cd hkcu:\
ls

#create new reg folder under HKCU
New-Item -Path hkcu:\ -Name JARVIS -Force

#creating reg key in this folder
New-ItemProperty -Path HKCU:\JARVIS -Name "batch" -Value "29.2" -Force

#edit the existing reg key
Set-ItemProperty  -Path  HKCU:\JARVIS -Name "batch" -value "Wednesday" -force

#removing the reg key
Remove-ItemProperty -Path HKCU:\JARVIS -Name "batch" -Force

#removing the reg folder
Remove-Item -Path HKCU:\JARVIS -Force