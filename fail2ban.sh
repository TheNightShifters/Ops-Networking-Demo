#Script:                       Script - Final Assignment 
#Author:                       Jasmine Garcia
#Date of latest revision:      April 13, 2023
#Purpose:                      Configure Fail2Ban

#!/bin/bash 

#Ubuntu: Install and configure Fail2Ban for increased security.

#Installation of Fail2Ban
sudo apt install fail2ban -y

#Status of Fail2Ban 
sudo systemctl status fail2ban

#Configure Fail2Ban
sudo ls -l /etc/fail2ban/

#Configure Fail2Ban for SSH 
sudo nano /etc/fail2ban/jail.d/sshd.conf

#Add to kail.local file:
# [sshd]
# enabled = true
# port = ssh
# filter = sshd
# logpath = /var/log/auth.log
# maxretry = 3
# bantime = 120
# ignoreip = whitelist-IP

#Apply Chnages
$ sudo systemctl restart fail2ban

#Resource: https://webdock.io/en/docs/how-guides/security-guides/how-configure-fail2ban-common-services