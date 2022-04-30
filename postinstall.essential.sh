#!/bin/bash -ex
#
# post install script to install packages and customize ubuntu after a fresh install
#
sudo apt update

# tools
sudo apt install git -y
sudo apt install curl -y
sudo apt install build-essential -y

# environments
sudo apt install python3 -y
sudo apt install python3-pip -y
sudo apt install default-jdk -y
sudo apt install default-jre -y
# nvm
#curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

# snap packages
sudo snap install code --classic
sudo snap install chromium

# extra tools
sudo apt install tldr -y
sudo apt install tree -y
sudo apt install synaptic -y
sudo apt install gnome-tweaks -y
sudo apt install chrome-gnome-shell -y

