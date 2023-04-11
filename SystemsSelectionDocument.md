# Tools
---
- Ubuntu server
- Windows 10 vms with both C: and L: drives, RDP, Windows Admin Center, Sambashare
- Thunderbird
- Gmail
- Windows server ec2 instance
- SOP
- PowerShell and Bash scripts
- pfSense router 
- Duplicati
---
# Uses
---
- Ubuntu will serve as fileshare server for Windows 10 VMs. Brings exclusive access to executive team and MSP, high accessibility.
- Thunderbird is free and accessible by both windows and linux.
- Gmail is a free reliable secure email provider.
- Windows servers hosted in the cloud do not require any local hardware, most people are familiar with windows and powershell scripts will be easy to implement, can be accessed from anywhere, pay as you go keeps costs low.
- SOP provides order and structure, can be referred back to in case an unfamiliar situation occurs.
- PowerShell and Bash provide easy automation for both linux and windows, rendering the team more efficient and effective. PowerShell also has an intuitive GUI in the form of the ISE.
- pfSense is free, light, and effective.
- Duplicati is an intuitive, easy to learn, easy to use backup solution that allows you to schedule backups to any local or networked drive easily and for free.
----
# MVP
---
- Create 2 functional Windows 10 VMs, which are both connected to a Windows Server ec2 instance and a local Linux server. The Windows 10 machines must back up both the OS and the user profiles, both weekly and nightly respectively. Both the windows 10 machines and the Ubuntu server must be connected to a shared LAN, which will be done using pfsense.
---
