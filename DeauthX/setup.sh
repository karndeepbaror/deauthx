#!/bin/bash

echo "🚀 Starting DEAUTH-NET Professional Setup..."

# Updating system repositories
sudo apt update -y

# Installing system-level dependencies
sudo apt install python3 python3-pip aircrack-ng network-manager -y

# Installing Python libraries
pip3 install -r requirements.txt

# Granting execution permission to the main script
chmod +x deauthnet.py

echo "✅ Setup Complete. Run the tool using: sudo python3 deauthnet.py"
