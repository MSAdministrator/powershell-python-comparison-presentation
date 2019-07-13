# PowerShell If statement

> An IF statement assists with logic control in scripts, functions, and classes.

```powershell
$value = 'MSAdministrator'

if ($value -eq 'MSAdministrator'){
    Write-Host -Message "The value is $value"
}
```
```
The value is MSAdministrator
```
## If Else
```powershell
$value = 'MSAdministrator'

if ($value -eq 'Josh'){
    Write-Host -Message "The value is $value"
}
else{
    Write-Host -Message "The value is $value"
}
```
```output
The value is MSAdministrator
```
