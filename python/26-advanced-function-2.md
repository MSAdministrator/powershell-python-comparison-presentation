# Python Advanced Methods

```python
import requests

__URL__ = 'https://raw.githubusercontent.com/mitre/cti/master/enterprise-attack/enterprise-attack.json'

def get_attck_object(url=__URL__):
    response = requests.get(url)
    return response.json()['objects']

def _get_technique_properties(obj, tactic: str):
    phases = []
    for phase in obj['kill_chain_phases']:
        if tactic in phase['phase_name']:
            phases.append(phase['phase_name'])
            requirements = []
            platforms = []
            if 'x_mitre_system_requirements' in obj:
                for requirement in obj['x_mitre_system_requirements']:
                    requirements.append(requirement)
            for platform in obj['x_mitre_platforms']:
                platforms.append(platform)
            return {
                'Technique': obj['name'],
                'Tactic': phases,
                'Requirements': requirements,
                'Detection': None if 'x_mitre_detection' not in obj else obj['x_mitre_detection'],
                'Platforms': platforms
            }

def get_techniques(tactic):
    return_list = []
    for item in get_attck_object():
        if 'attack-pattern' in item['type']:
            return_list.append(_get_technique_properties(item, tactic))
    return return_list

print(get_techniques('privilege-escalation'))
```
## Calling our Function

```python
get_techniques('privilege-escalation')
```