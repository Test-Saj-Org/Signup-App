
Write-Output 'Starting w3svc'
Start-Process C:\ServiceMonitor.exe -ArgumentList w3svc -NoNewWindow

Write-Output 'Wait for 10 seconds.'
Start-Sleep -s 10
    
Write-Output 'Making HTTP GET call'
Invoke-WebRequest http://localhost/app -UseBasicParsing | Out-Null

Write-Output 'Tailing log file'
Get-Content -Path C:\logs\SignUp.log
Get-Content -Path C:\logs\SignUp.log -Tail 1 -Wait
