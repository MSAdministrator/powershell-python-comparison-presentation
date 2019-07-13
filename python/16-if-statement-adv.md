# Python If statement

## IF ELIF ELSE
```python
value = 'MSAdministrator'

if value == 'Josh':
    print("The value == %s" % value)
elif 'Admin' in value:
    print("The value contains Admin")
else:
    print("The value is %s" % value)
```
```output
The value contains Admin
```

## Other

```python
value = 'Josh'

if value not 'MSAdministrator':
    print('The value is NOT MSAdministrator')
elif 'Admin' in value:
    print('The value contains Admin')
else:
    print("The value is %s" % value)
```
```output
The value is NOT MSAdministrator
```