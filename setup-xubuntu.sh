#!/bin/bash

# Update package list and install necessary packages
sudo apt update
sudo apt install xfce4 xfce4-goodies novnc python3-websockify python3-numpy tightvncserver htop nano neofetch -y

# Generate SSL certificate for noVNC
openssl req -x509 -nodes -newkey rsa:3072 -keyout novnc.pem -out novnc.pem -days 3650

# Start VNC server (root user)
USER=root vncserver

# Kill any existing VNC sessions
vncserver -kill :1

# Backup the current xstartup file and create a new one
mv ~/.vnc/xstartup ~/.vnc/xstartup.bak

# Create a new xstartup file to launch Xfce desktop environment
echo -e '#!/bin/sh\nxrdb $HOME/.Xresources\nstartxfce4 &' > ~/.vnc/xstartup


