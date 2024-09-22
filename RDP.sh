#!/bin/bash

# Update sistem
sudo apt update -y

# Install xrdp
sudo apt install xrdp -y
sudo systemctl enable xrdp

# Install desktop environment (Xfce)
sudo apt install xfce4 xfce4-goodies tightvncserver -y

# Konfigurasi xrdp untuk menggunakan Xfce
echo "xfce4-session" > ~/.xsession
sudo sed -i.bak '/fi/a #xrdp workaround\nxfce4-session\n' /etc/xrdp/startwm.sh

# Restart xrdp service
sudo systemctl restart xrdp

# Allow RDP port 3389
sudo ufw allow 3389/tcp

# Display IP address
echo "RDP is set up. Use this IP address to connect:"
hostname -I
