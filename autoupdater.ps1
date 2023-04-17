#Author:Sam Allan
#Date of last revision:04/07/2023
#Purpose:Automatically update windows weekly

#MAIN

Install-Module PSWindowsUpdate -Force
Import-Module PSWindowsUpdate
Get-WindowsUpdate -Install -AcceptAll -IgnoreReboot

#END
