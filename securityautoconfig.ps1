#Enables Windows Firewall for all network profiles
Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled True
#Enables Microsoft Defender Antivirus realtime monitoring, providing continuous protection
Set-MpPreference -DisableRealtimeMonitoring $false
#Updates Windows Defender signature to provide up to date protection
Update-MpSignature
#Disables SMBV1, an insecure protocol
Set-SmbServerConfiguration -EnableSMB1Protocol $false -Force
# Enables RDP by setting value of FDenyTSConnections to 0 in Windows Registry
Set-ItemProperty -Path "HKLM:\System\CurrentControlSet\Control\Terminal Server" -Name "fDenyTSConnections" -Value 0
# Allows incoming remote desktop connections through the firewall, for remote access by execs
Enable-NetFirewallRule -DisplayGroup "Remote Desktop"
#Sets power scheme to high performance
powercfg.exe /setactive 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c
