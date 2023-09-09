# Non -per connection

#$comp  = @("member1", "member2")

#notepad comp.txt
CLS


$comp = Get-Content .\comp.txt

Invoke-Command -ComputerName $comp -ScriptBlock{
    
    #create new reg folder under HKCU
    New-Item -Path hkcu:\ -Name JARVIS -Force

    #creating reg key in this folder
    New-ItemProperty -Path HKCU:\JARVIS -Name "batch" -Value "29.2" -Force

    #edit the existing reg key
    Set-ItemProperty  -Path  HKCU:\JARVIS -Name "batch" -value "ALL ARE SLEEPINGGGG!!!" -force

}