#!/bin/bash

#doy permisos para crear dcmdigitalsignage.service 
sudo chmod ugo+rwx /etc/systemd/system/

#creo dcmdigitalsignage.service 
echo -e "[Unit]
Description=dcmdigitalsignage 
[Service]
 WorkingDirectory=/home/pi/DCMDigitalSignagev2
 ExecStart=/opt/dotnet/dotnet /home/pi/DCMDigitalSignagev2
 Restart=always   
 SyslogIdentifier=dotnet-dcmdigitalsignage    
 User=root
 Environment=ASPNETCORE_ENVIRONMENT=Production 
[Install]
 WantedBy=multi-user.target

" >> /etc/systemd/system/dcmdigitalsignage.service
