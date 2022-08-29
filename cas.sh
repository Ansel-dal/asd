echo -e "[Unit]
Description=dcmlocker 
[Service]
 WorkingDirectory=/var/www/DCMLocker
 ExecStart=/opt/dotnet/dotnet /var/www/DCMLocker/DCMLocker.Server.dll
 Restart=always   
 SyslogIdentifier=dotnet-dcmlocker    
 User=root
 Environment=ASPNETCORE_ENVIRONMENT=Production 
[Install]
 WantedBy=multi-user.target
" >> /etc/systemd/system/dcmlocker.service
