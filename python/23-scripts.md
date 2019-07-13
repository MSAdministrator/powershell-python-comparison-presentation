# Python Script
> All scripts run from top to bottom

## Mitre ATT&CK Example

```python
import requests

return_list = []

url = 'https://raw.githubusercontent.com/mitre/cti/master/enterprise-attack/enterprise-attack.json'

resp = requests.get(url)
attck = resp.json()

for item in attck['objects']:
    if 'attack-pattern' in item['type']:
        phases = []
        requirements = []
        platforms = []
        for phase in item['kill_chain_phases']:
            phases.append(phase['phase_name'])
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

print(return_list)
```
```output
[{'Detection': u'While users may customize their <code>~/.bashrc</code> and <code>~/.bash_profile</code> files , there are only certain types of commands that typically appear in these files. Monitor for abnormal commands such as execution of unknown programs, opening network sockets, or reaching out across the network when user profiles are loaded during the login process.',
  'Platforms': [u'Linux', u'macOS'],
  'Requirements': [],
  'Tactic': [u'persistence'],
  'Technique': u'.bash_profile and .bashrc'},
 {'Detection': u'If an adversary is using a standard command-line shell, analysts can detect token manipulation by auditing command-line activity. Specifically, analysts should look for use of the <code>runas</code> command. Detailed command-line logging is not enabled by default in Windows. (Citation: Microsoft Command-line Logging)\n\nIf an adversary is using a payload that calls the Windows token APIs directly, analysts can detect token manipulation only through careful analysis of user network activity, examination of running processes, and correlation with other endpoint and network behavior. \n\nThere are many Windows API calls a payload can take advantage of to manipulate access tokens (e.g., <code>LogonUser</code> (Citation: Microsoft LogonUser), <code>DuplicateTokenEx</code> (Citation: Microsoft DuplicateTokenEx), and <code>ImpersonateLoggedOnUser</code> (Citation: Microsoft ImpersonateLoggedOnUser)). Please see the referenced Windows API pages for more information.\n\nQuery systems for process and thread token information and look for inconsistencies such as user owns processes impersonating the local SYSTEM account. (Citation: BlackHat Atkinson Winchester Token Manipulation)',
  'Platforms': [u'Windows'],
  'Requirements': [],
  'Tactic': [u'defense-evasion', u'privilege-escalation'],
  'Technique': u'Access Token Manipulation'},
 {'Detection': u'Changes to accessibility utility binaries or binary paths that do not correlate with known software, patch cycles, etc., are suspicious. Command line invocation of tools capable of modifying the Registry for associated keys are also suspicious. Utility arguments and the binaries themselves should be monitored for changes. Monitor Registry keys within <code>HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Image File Execution Options</code>.',
  'Platforms': [u'Windows'],
  'Requirements': [],
  'Tactic': [u'persistence', u'privilege-escalation'],
  'Technique': u'Accessibility Features'},
```