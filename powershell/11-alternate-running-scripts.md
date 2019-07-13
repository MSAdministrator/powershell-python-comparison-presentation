# Alternate Ways of Running PowerShell

## Running Scripts with Arguments

    > .\Invoke-SomeScript.ps1 $var1 $var2 $var 3
    > .\Invoke-SomeScript.ps1 -Param1 $var1 -Param2 $var2

    
## Running Commands Directly

    > powershell.exe -Command "(Get-Process).Name"

## Invoking PowerShell Directly

    > powershell.exe -File c:\some-script.ps1

