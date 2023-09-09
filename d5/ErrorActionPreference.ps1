#ErrorActionPreference
<#
    values:
        1. Continue
            - when an error occurs, it will display the error 
                and finishes the script execution

        2. SilentlyContinue
            - when an error occurs, it will HIDE the errors
                and finishes the script execution

        3. Stop
            - when an error occurs, it will SHOW the error
                and BUT stops the script execution

        4. Inquire
            - when an error occurs, it will ask/inquire from the user, what to do next
                

        5. Suspend
        6. Ignore

#>

cls
$ErrorActionPreference
pwd
hostname
jeetu
pwd
get-date


cls
$ErrorActionPreference = "SilentlyContinue"
$ErrorActionPreference
pwd
hostname
jeetu
pwd
get-date

$Error[0]


cls
$ErrorActionPreference = "stop"
$ErrorActionPreference
hostname
jeetu
get-date

cls
$ErrorActionPreference = "Inquire"
$ErrorActionPreference
hostname
jeetu
get-date




$ErrorActionPreference = "Continue"


gwmi -Class win32_hahahaha -EA SilentlyContinue