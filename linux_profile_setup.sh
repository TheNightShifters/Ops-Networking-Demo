#!/bin/bash

# Script:                   Creating profiles on Linux file server
# Author:                   Lilian Mburu
# Date of last revision:    April 12th 2023
# Purpose:                  This script creates profiles(shares) that can access linux file server

# Variables

  DIR="/samba/"
  share_name = ""
  
# Main
  if [ -d $DIR ]; then
    read -p "Enter name of new profile: " share_name
    USR=$DIR$share_name
    
    #Add user as a system user
    sudo adduser --home $USR --no-create-home --shell /usr/sbin/nologin --ingroup sambashare $share_name
    
    #Set system user ownership and permission on samba home directory
    sudo chown $share_name:sambashare $USR
    sudo chmod 2770 $USR
    
    #Add user to samba server with a unique login password
    sudo smbpasswd -a $share_name
    sudo smbpasswd -e $share_name
  else
    sudo mkdir $DIR
    sudo chown :sambashare $DIR
  fi

# End
