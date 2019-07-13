# Python Strings, Quotes, & Formatting

## Single Quotes Usage
```python
some_var = 'This is a literal string'

AssertionError(some_var)  # Produces an error
print(some_var)           # prints
```
## Double Quotes Usage
> Use double quotes when part of the string has single quotes or just a general **preference**
### String Replacement
```python
my_name = 'Josh Rickard'
my_twitter = '@MSAdministrator'
my_message = 'My name is %s!' % my_name

my_message = 'My name is %s and you can find me at %s' % (my_name, my_twitter)
```
```output
My name is Josh Rickard!
My name is Josh Rickard and you can find me at @MSAdministrator
```
## Formatting Strings
```python
my_message = 'My name is {name}!'.format(my_name)
```
```output
My name is Josh Rickard!
```