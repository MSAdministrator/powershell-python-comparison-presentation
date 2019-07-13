# Running Scripts

## Get-MyIp.ps1

    $response = Invoke-RestMethod -Uri 'https://api.myip.com'

    Write-Host $response

## Running Get-MyIp.ps1

    pwsh
    
    PS > ./Get-MyIp.ps1

## Returns

    @{ip=173.26.223.222; country=United States; cc=US}