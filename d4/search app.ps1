<#
    Task
        - ask user for a file name(with extension)
        - search for this file in entire file system & returns the path of each file.
        - for each & every device C:\, d:\...
        - hints:
            - foreach loop, array for drives
            - get-chilitem -filter, -recurse

#>
cls
$file = Read-Host "Enter the file name to search: "
$drives = @("c:\","d:\")

foreach($d in $drives){
    if ( Get-ChildItem -Path $d -Filter $file -Recurse ){
        Write-Host "file found in $d drive"

        $path = (Get-ChildItem -Path $d -Filter $file -Recurse | select -Property *).fullname

        foreach ($p in $path){
            Write-Host "Location: " -NoNewline
            Split-Path $p 
        }
        Write-Host " "

    }else{
        break;
    }    


}

