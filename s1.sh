#!/bin/bash

sudo sh -c"
[Desktop Entry]
Name=KioskMode #name
Exec=chromium --start-fullscreen --force-device-scale-factor=0.7 --disable-pinch  --kiosk --app=http://localhost:5022/
 >> /etc/xdg/autostart/display.desktop"
