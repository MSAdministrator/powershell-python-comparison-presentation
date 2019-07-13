# PowerShell Hashtable's
>  Hashtable's are a compact data structure that stores one or more key/value pairs
## Associative Array's

```
@{ <name> = <value>; [<name> = <value> ] ...}
```

```powershell
$myHash = @{}  # Empty Hashtable

# They don't have to be empty
$myHash = @{
    Number = 1; 
    Shape = "Square"; 
    Color = "Blue"
}

$myHash
```
```output
Name                           Value
----                           -----
Shape                          Square
Color                          Blue
Number                         1
```
## Accessing Hashtable Values
```powershell
$myHash.Color
```
```output
Blue
```