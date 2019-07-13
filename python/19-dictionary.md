# Python Dictionary's
>  Dictionary's are a compact data structure that stores one or more key/value pairs
## Associative Array's

```
{ <name> = <value>; [<name> = <value> ] ...}
```

```python
my_dict = {}     # Empty dictionary

# They don't have to be empty
my_dict = {
    'Number':1,
    'Shape':'Square',
    'Color':'Blue'
}

print(my_dict)
```
```output
{'Color': 'Blue', 'Shape': 'Square', 'Number': 1}
```
## Accessing Dictionary Values
```python
my_dict['Color']
```
```output
Blue
```