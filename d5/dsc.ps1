# push mode DSC config
#########################

$comp = gc .\comp.txt

# create a config
configuration  myconfig{
    
    Node $comp{
        
        Service winrm{
            Name = "WinRM"
            State =  "Running"
        }
        WindowsFeature IIS{
            Name = "web-server"
            Ensure = "absent"
        }

    }

}

# create MOF file
myconfig

# start the deployment
Start-DscConfiguration -Path .\myconfig -wait -Verbose

# test the config
Test-DscConfiguration -CimSession member1