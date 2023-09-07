<#
    
    Execution Policy
        - a policy that either ALLOW or DENY the execution of a script.

    Types:
        1. Restricted
            - local or remote users CANNOT execute any script.

        2. Unrestricted
            - local or remote users CAN execute any script.

        3. RemoteSigned
            - locally users can execute any/all scripts.
            - remote users will require a digitally signed script.
            
        4. AllSigned
            - local or remote, both needs a digitally signed script.

#>

<#
    1. create a script
    2. create a digital cert
    3. export the cert
    4. install/import the cert
    5. bind the cert withe script

#>

# Creating digital cert
New-SelfSignedCertificate -CertStoreLocation cert:\currentuser\my `
-Subject "CN=joker" `
-KeyAlgorithm RSA `
-KeyLength 1024 `
-Provider "Microsoft Enhanced RSA and AES Cryptographic Provider" `
-KeyExportPolicy Exportable `
-KeyUsage DigitalSignature `
-Type CodeSigningCert


#bind the cert withe script

$cert = Get-ChildItem Cert:\CurrentUser\my\E19A5400A5197929DBC920954206E48A2F4FA6A1
$file = "C:\LTI training\PS\d3\myexecutionscript.ps1"

Set-AuthenticodeSignature -Certificate $cert -FilePath $file

Get-Help New-SelfSignedCertificate -Online