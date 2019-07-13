# Python For(each) Loops
```
for <item> in <collection>:
    <statement list>
```
## Example

```python
import requests

url = 'https://raw.githubusercontent.com/mitre/cti/master/enterprise-attack/enterprise-attack.json'

resp = requests.get(url)
attck = resp.json()

for item in attck['objects']:
    if 'attack-pattern' in item['type']:
        for key,val in item.items():
            print('%s == %s' % (key,val))        
```
```output
id == attack-pattern--c3bce4f4-9795-46c6-976e-8676300bbc39
type == attack-pattern
object_marking_refs == [u'marking-definition--fa42a846-8d90-4e51-bc29-71d5b4802168']
x_mitre_remote_support == True
x_mitre_version == 1.0
x_mitre_data_sources == [u'File monitoring', u'Authentication logs', u'Netflow/Enclave netflow', u'Process monitoring', u'Process command-line parameters']
x_mitre_detection == Monitor use of WinRM within an environment by tracking service execution. If it is not normally used or is disabled, then this may be an indicator of suspicious behavior. Monitor processes created and actions taken by the WinRM process or a WinRM invoked script to correlate it with other related events.
name == Windows Remote Management
created_by_ref == identity--c78cb6e5-0c4b-4611-8297-d1b8b55e40b5
x_mitre_contributors == [u'Praetorian']
name == Winlogon Helper DLL
created == 2017-05-31T21:30:20.148Z
x_mitre_platforms == [u'Windows']
type == attack-pattern
description == Winlogon.exe is a Windows component responsible for actions at logon/logoff as well as the secure attention sequence (SAS) triggered by Ctrl-Alt-Delete. Registry entries in <code>HKLM\Software\[Wow6432Node\]Microsoft\Windows NT\CurrentVersion\Winlogon\</code> and <code>HKCU\Software\Microsoft\Windows NT\CurrentVersion\Winlogon\</code> are used to manage additional helper programs and functionalities that support Winlogon. (Citation: Cylance Reg Persistence Sept 2013) 
```