Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled True
Set-MpPreference -DisableRealtimeMonitoring $false
Update-MpSignature
$interfaceIndex = (Get-NetAdapter).ifIndex
Set-DnsClientServerAddress -InterfaceIndex $interfaceIndex -ServerAddresses "8.8.8.8"
Set-SmbServerConfiguration -EnableSMB1Protocol $false -Force
Set-ItemProperty -Path "HKLM:\System\CurrentControlSet\Control\Terminal Server" -Name "fDenyTSConnections" -Value 0
Enable-NetFirewallRule -DisplayGroup "Remote Desktop"
powercfg.exe /setactive 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c
Set-NetFirewallRule -DisplayGroup "File And Printer Sharing" -Enabled True
netsh advfirewall firewall add rule name="Allow incoming ping requests IPV4" dir=in action=allow protocol=icmpv4:8,any
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f