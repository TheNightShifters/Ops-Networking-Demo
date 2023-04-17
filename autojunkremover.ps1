#Author:Sam Allan
#Date of last revision:04/07/2023
#Purpose:Remove temporary files older than seven days nightly for improved security and storage

#MAIN

$limit = (Get-Date).AddDays(-7)
Get-ChildItem -Path "C:\Windows\Temp\*" -Recurse -Force | Where-Object { !$_.PSIsContainer -and $_.CreationTime -lt $limit } | Remove-Item -Force

#END
