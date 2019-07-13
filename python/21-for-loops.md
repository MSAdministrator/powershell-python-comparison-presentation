# Python For(each) Loops
```
for <item> in <collection>:
    <statement list>
```
## Example

```python
import psutil

for proc in psutil.process_iter(attrs=['pid', 'name', 'username', 'memory_percent', 'status']):
    print(proc.info)
    input('')
```
```output
{'pid': 0, 'status': 'running', 'name': 'kernel_task', 'username': 'root', 'memory_percent': None}

{'pid': 1, 'status': 'running', 'name': 'launchd', 'username': 'root', 'memory_percent': None}

{'pid': 40, 'status': 'running', 'name': 'syslogd', 'username': 'root', 'memory_percent': None}

{'pid': 41, 'status': 'running', 'name': 'UserEventAgent', 'username': 'root', 'memory_percent': None}

{'pid': 44, 'status': 'running', 'name': 'uninstalld', 'username': 'root', 'memory_percent': None}

{'pid': 45, 'status': 'running', 'name': 'kextd', 'username': 'root', 'memory_percent': None}
```
