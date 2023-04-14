 # Script: Ops 201 Final Project Script
 # Author: Cameron Berry
 # Date of Last Revision: 4/11/23
 # Purpose: Create a text file with simple information of user login information on a specified date

 # Main

    $date = Read-Host "Enter a Date in M/d/yyyy format, or type 'q' to quit"
        if ($date -eq 'q') {
            break
        }

$formattedDate = Get-Date $date -Format "M/d/yyyy"

$logins = Get-EventLog -LogName Security -InstanceId 4624, 4647 | Where-Object { $_.TimeGenerated.Date -eq $formattedDate }

$logins > $env:HOMEPATH\Documents\logevents.txt

 # End
