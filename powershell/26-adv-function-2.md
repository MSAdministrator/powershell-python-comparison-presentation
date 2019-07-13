# PowerShell Advanced Function

```powershell
function Get-Technique {
    [CmdletBinding(
        DefaultParameterSetName='tactic',
        SupportsShouldProcess=$true,
        PositionalBinding=$false,
        HelpUri = 'http://www.microsoft.com/',
        ConfirmImpact='Medium')
    ]
    Param (
        # The MITRE ATT&CK Tactic
        [Parameter(Mandatory=$true,
                   Position=0,
                   ValueFromPipeline=$true,
                   ParameterSetName='tactic')]
        [ValidateSet(
            "privilege-escalation", "defense-evasion", "persistence",
            "discovery",
            "credential-access",
            "execution",
            "lateral-movement",
            "collection",
            "exfiltration",
            "command-and-control",
            "impact",
            "initial-access")]
        $Tactic,
    )
    $url = 'https://raw.githubusercontent.com/mitre/cti/master/enterprise-attack/enterprise-attack.json'

    $attck = Invoke-RestMethod -Uri $url
    $returnObject = @()

    foreach($item in $attck.objects){
        if ($item.type -eq 'attack-pattern'{
            if ($item.kill_chain_phases.phase_name -eq $Tactic){
                $props = @{
                    Technique    = $item.Name
                    Tactic       = $item.kill_chain_phases.phase_name
                    Requirements = $item.x_mitre_system_requirements
                    Detection    = $item.x_mitre_detection
                    Platforms    = $item.x_mitre_platforms
                }
                $returnObject += $props
            }
        }
    }
    return $returnObject
}
```