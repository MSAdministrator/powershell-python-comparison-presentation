# PowerShell Array's & Hashtable's

## Array's or Collections

```powershell
$myArray = @('Josh','Rickard','@MSAdministrator')
$myArray
```
```output
Josh
Rickard
@MSAdministrator
```
> ### Indexes of Arrays start at **0**

```powershell
"Find $($myArray[0]) on Twitter $($myArray[2])"
```
```output
Find Josh on Twitter @MSAdministrator
```
## Accessing Array Elements
```powershell
$array = @(22,5,10,8,12,9,80)
$array[0] # 22
$array[-1] # 80
$array[2..5] # 10, 8, 12, 9
```

## Array's & Objects
> Typically you will use arrays with objects

> Remember everything in PowerShell is an object

```powershell
# A collection of Notepad processes
$notepads = @(Get-Process -Name Notepad)
```