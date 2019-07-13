# PowerShell For Loop
```
for (<Init>; <Condition>; <Repeat>)
{
    <Statement list>
}
```

## Example

```powershell
$condition = 5

for ($i = 0; $i -le $condition; $i++){
    Write-Host "The current count is $i"
}
```
```output
The current count is 0
The current count is 1
The current count is 2
The current count is 3
The current count is 4
The current count is 5
```