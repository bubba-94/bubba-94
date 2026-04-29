#!/bin/bash

# command to make file executable: chmod +x packages.sh

# Script for setting up my VS Code environment using WSL Remote
# and for creating basic C/C++ or Python applications.

# Requires: 
    # VS Code 
    # Ubuntu
    # Git

echo "Starting bubba-94 package installer...."

echo "C/C++ compiler and debugger + build tool"

sudo apt update
sudo apt install -y build-essential gdb cmake make

echo "Python package manager and dev packages" 

sudo apt install -y python3-pip
sudo apt install -y python3-venv python3-dev