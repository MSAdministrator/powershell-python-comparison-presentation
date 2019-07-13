# PowerShell Classes
> Classes are not ideal within PowerShell

```powershell
class AttckTechnique {

    hidden [String] $Url = 'https://raw.githubusercontent.com/mitre/cti/master/enterprise-attack/enterprise-attack.json'
    [String] $Tactic
    [String] $Technique
    [String] $Platform
    [String] $Requirements
    [String] $Detection

    [System.Object] GetAttckTechniques([String]$Tactic) {
        $returnObject = @()

        foreach ($item in $this.AttckObject()){
            if ($item.type -eq 'attack-pattern'){
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

    [System.Object] AttckObject(){
        return (Invoke-RestMethod -Uri $this.Url).objects
    }
}
```
```powershell
$attck = [AttckTechnique]::new() 
$attck.GetAttckTechniques('privilege-escalation')
```