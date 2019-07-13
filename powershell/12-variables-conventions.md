# PowerShell Variables

> Variables are assigned to the left of an operator

    $exampleVar = 'My Example Value'

### Conventions

> _**NOTE**_: These styles are recommendations based on community best practices

## **PascalCase**
> Use PascalCase for all public facing code

 - Modules
 - Functions & CmdLet's
 - Parameters
 - Global Variables
 - Constants

```
# Correct
Get-MyIp -Computer 'localhost'

# In-Correct
Get-MyIp -computer 'localhost'
```
## **camelCase**
> It's a preference, but using camelCase identifies a variable as a private/internal variable

- Variables that are internal to scripts/functions

