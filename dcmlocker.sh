#!/bin/bash

#install samba
sudo apt update
sudo apt-install samba
sudo mkdir /home/pi/share/
echo -e "[/var/www/]  comment = Samba on Ubuntu 
path = /var/www/ 
read only = no 
browsable = yes" >> /etc/samba/smb.conf
sudo service smbd restart

#install .Net v5.0
wget -O - https://raw.githubusercontent.com/pjgpetecodes/dotnet5pi/master/install.sh | sudo bash

#create dcmlocker.service
echo -e "[Unit]
Description=dcmlocker 
[Service]
 WorkingDirectory=/var/www/DCMLocker
 ExecStart=/usr/local/lib/dotnet/dotnet /var/www/DCMLocker/DCMLocker.Server.dll
 Restart=always   
 SyslogIdentifier=dotnet-dcmlocker    
 User=root
 Environment=ASPNETCORE_ENVIRONMENT=Production 
[Install]
 WantedBy=multi-user.target

" >> /etc/systemd/system/dcmlocker.service
