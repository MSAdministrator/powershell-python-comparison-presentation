$response = Invoke-RestMethod -Uri 'https://api.myip.com'

Write-Host $response
