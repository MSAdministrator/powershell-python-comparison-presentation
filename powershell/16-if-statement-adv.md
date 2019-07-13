# PowerShell If statement

## IF ELSEIF ELSE
```powershell
$value = 'MSAdministrator'

if ($value -eq 'Josh'){
    Write-Host -Message 'The value contains Josh'
}
elseif ($value -match 'Admin'){
    Write-Host -Message 'The value contains Admin'
}
else{
    Write-Host -Message "The value is $value"
}
```
```output
The value matches Admin
```

## Other

```powershell
$value = 'Josh'

if (-not($value -eq 'MSAdministrator')){
    Write-Host -Message 'The value is NOT MSAdministrator'
}
elseif ($value -match 'Admin'){
    Write-Host -Message 'The value contains Admin'
}
else{
    Write-Host -Message "The value is $value"
}
```

```output
The value is NOT MSAdministrator
```