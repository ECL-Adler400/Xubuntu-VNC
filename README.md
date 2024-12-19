# Xubuntu Setup in GitHub Codespaces

This repository provides the commands and setup to run an **Xubuntu** desktop environment in GitHub Codespaces with **VNC** and **noVNC** for browser-based access.

## Instructions

### 1. Fork this repository to your GitHub account.

### 2. Open it in **GitHub Codespaces**.

Once the Codespace is initialized, follow these steps:

### 3. Run the setup script:

```bash
chmod +x setup-xubuntu.sh
./setup-xubuntu.sh

# Start VNC server again
USER=root vncserver

# Start websockify to enable noVNC in the browser
Change the number 6081 with a unique 4x number combination
websockify -D --web=/usr/share/novnc/ --cert=/home/ubuntu/novnc.pem 6081 localhost:5901
