# Python Methods

```python
import requests

__URL__ = 'https://raw.githubusercontent.com/mitre/cti/master/enterprise-attack/enterprise-attack.json'

def get_techniques(tactic):
    return_list = []
    resp = requests.get(__URL__)
    attck = resp.json()

    for item in attck['objects']:
        if 'attack-pattern' in item['type']:
            phases = []
            for phase in item['kill_chain_phases']:
                if tactic in phase['phase_name']:
                    phases.append(phase['phase_name'])
                
                    requirements = []
                    platforms = []
                    if 'x_mitre_system_requirements' in item:
                        for requirement in item['x_mitre_system_requirements']:
                            requirements.append(requirement)
                    for platform in item['x_mitre_platforms']:
                        platforms.append(platform)

                    return_list.append({
                        'Technique': item['name'],
                        'Tactic': phases,
                        'Requirements': requirements,
                        'Detection': None if 'x_mitre_detection' not in item else item['x_mitre_detection'],
                        'Platforms': platforms
                    })

    return return_list

print(get_techniques('privilege-escalation'))
```
## Calling our Function

```python
get_techniques('privilege-escalation')
```