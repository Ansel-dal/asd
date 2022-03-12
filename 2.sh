#!/bin/bash

sudo mkdir /home/pi/share/
echo -e "[sambashare] comment = Samba on Ubuntu 
path = /var/www/ 
read only = no 
browsable = yes
" >> /etc/samba/smb.conf
