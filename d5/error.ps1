jeetu          # produces error
pwd          
batman         # produces error
hahahah        # produces error
joker          # produces error


$Error | Out-File errorlog.txt    #save error
notepad.exe .\errorlog.txt        #open file

$Error.Count         # Counts error
$Error[0]            # lists index 1 error
$Error[3]            # lists index 3 error            