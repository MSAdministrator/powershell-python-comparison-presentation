$url = 'https://raw.githubusercontent.com/mitre/cti/master/enterprise-attack/enterprise-attack.json'

$attck = Invoke-RestMethod -Uri $url

$returnObject = @()


foreach($item in $attck.objects){

    if ($item.type -eq 'attack-pattern'){
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

$returnObject
