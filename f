#!/bin/bash

sudo mkdir /home/pi/share/
-e "[sambashare] comment = Samba on Ubuntu 
path = /var/www/ 
read only = no 
browsable = yes
" >> sudo nano /etc/samba/smb.conf
