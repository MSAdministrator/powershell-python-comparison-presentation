# PowerShell ForEach Loops
```
foreach ($<item> in $<collection>){<statement list>}
```

## Example

```powershell
$myArray = @()

foreach($item in (Get-Process)){

    if ($item.Name -match 'Chrome'){

        $myHash = @{
            Name      = $item.Name
            ProcessId = $item.Id
            StartTime = $item.StartTime
        }
        $myArray += $myHash
    }
}

Write-Output $myArray
```
```output
Name                           Value
----                           -----
ProcessId                      359
StartTime                      7/1/19 8:32:32 PM
Name                           chrome_crashpad
ProcessId                      284
StartTime                      7/1/19 8:32:31 PM
Name                           Google Chrome
ProcessId                      377
StartTime                      7/1/19 8:32:32 PM
Name                           Google Chrome H
ProcessId                      381
StartTime                      7/1/19 8:32:32 PM
Name                           Google Chrome H
ProcessId                      545
StartTime                      7/1/19 8:32:35 PM
Name                           Google Chrome H
```