$limit = (Get-Date).AddDays(-7)
Get-ChildItem -Path "C:\Windows\Temp\*" -Recurse -Force | Where-Object { !$_.PSIsContainer -and $_.CreationTime -lt $limit } | Remove-Item -Force
