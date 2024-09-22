#!/bin/bash

# Update and upgrade
sudo apt update && sudo apt upgrade -y

# Install necessary packages
sudo apt install -y xrdp xfce4 xfce4-goodies

# Set XFCE as the default desktop for xrdp
echo "xfce4-session" > ~/.xsession

# Start xrdp service
sudo systemctl enable xrdp
sudo systemctl start xrdp

# Install Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install -y ./google-chrome-stable_current_amd64.deb

# Allow RDP through the firewall (if UFW is enabled)
sudo ufw allow 3389

# Inform user
echo "Installation complete. You can connect via RDP."
