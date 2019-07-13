# PowerShell Strings, Quotes, & Encapsulation

## Single Quotes Usage

> Use single quotes when a string is literal

```powershell
$someVar = 'This is a literal string'
    
Write-Error -Message 'An error occurred'
```
## Double Quotes Usage
> Use double quotes when using a variable in string replacement or encapsulation
### String Replacement

```powershell
$messageText = 'Josh Rickard'
$myMessage = "My name is $messageText!"
```
```output
My name is Josh Rickard!
```
### Encapsulation

```powershell
$dockerProcess = Get-Process -Name Docker
$myMessage = "Docker is running and has a process ID of $($dockerProcess.Id)"
```
```output
Docker is running and has a process ID of 827
```