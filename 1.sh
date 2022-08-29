#!/bin/bash

sudo mkdir /home/pi/share/
echo "[sambashare] comment = Samba on Ubuntu 
path = /var/www/ 
read only = no 
browsable = yes
" >> sudo nano /home/pi/share/a
