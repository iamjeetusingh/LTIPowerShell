<#
    list top 10 high CPU utlization unique processes

    hint:
        1. Sort-object
        2. select-object
#>
cls

Get-Process | `
Sort-Object ProcessName -Unique | `
Sort-Object CPU -Descending | `
Select-Object ProcessName, CPU -First 10