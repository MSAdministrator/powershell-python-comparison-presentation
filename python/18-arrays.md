# Python Lists
```python
my_list = [] # Empty list

my_list = ['Josh','Rickard','@MSAdministrator']
my_list
```
```output
Josh
Rickard
@MSAdministrator
```
> ### Indexes of Lists start at **0**

```python
"Find %s on Twitter %s" % (my_list[0], my_list[2])
```
```output
Find Josh on Twitter @MSAdministrator
```
## Accessing Array Elements
```powershell
array = [22,5,10,8,12,9,80]
array[0] # 22
array[-1] # 80
```
## Appending
```python
my_list = []
for item in ('Josh', 'Rickard', 'MSAdministrator'):
    my_list.append(item)
```