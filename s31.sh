#!/bin/bash

sudo touch /etc/xdg/autostart/display.desktop
echo net.ipv4.ip_forward = 1 | sudo tee -a /etc/xdg/autostart/display.desktop
