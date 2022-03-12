#!/bin/bash

sudo apt-get install samba samba-common-bin samba-client -y
sudo cp /etc/samba/smb.conf /etc/samba/smb.conf.backup
sudo smbpasswd -a pi
sudo /etc/init.d/samba restart
