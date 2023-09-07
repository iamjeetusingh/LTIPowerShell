<#
    
    create 1 folder, inside this folder create
        10 text files
        10 folders
            - random names

    seprate the file and folder names using powershell command and store them in 2 text files.
        1. file.txt
        2. folder.txt

#>

# creating a folder
# mkdir "C:\LTI training\PS\d4\task"

foreach($n in @(1..10)){
    $name = "file" + $n + ".txt"
    New-Item -Name $name -ItemType File -Force

    $folder = "folder" + $n
    New-Item -Name $folder -ItemType Directory -Force
}

New-Item -Name ..\file.txt -ItemType File -Force
New-Item -Name ..\Directory.txt -ItemType File -Force

$d = (Get-ChildItem "C:\LTI training\PS\d4\task" | Select-Object -Property *)

foreach( $f in $d ){
    if ($f.PSIsContainer){
        # its a folder file
        #Write-Host $f.Name -ForegroundColor Green
        $f.Name | Out-File ..\Directory.txt -Append
    }
    else{
        # its text
        # Write-Host $f.Name -ForegroundColor Red
        $f.Name | Out-File ..\file.txt -Append
    }
}



