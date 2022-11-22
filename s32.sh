#!/bin/bash

sudo touch /etc/xdg/autostart/display.desktop
echo  "
[Desktop Entry]
Name=KioskMode #name
Exec=chromium --start-fullscreen --force-device-scale-factor=0.7 --disable-pinch  --kiosk --app=http://localhost:5022/
"  | sudo tee -a /etc/xdg/autostart/display.desktop
