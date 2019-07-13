# PowerShell Hashtable's Continued

## Get a count of key/value pairs
```powershell
$myHash.count      # 3
```
## Access a value by referencing the key name
```powershell
$myHash['Shape']    # Square
```
## Adding to a hashtable
```powershell
$myHash['Time'] = 'Now'
$myHash.Add('Name', 'Josh')
```