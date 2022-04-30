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
# create symlink from python3 to python
sudo ln -s /usr/bin/python3 /usr/local/bin/python
sudo apt install python3-pip -y
sudo apt install default-jdk -y
sudo apt install default-jre -y
# nvm
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

# snap packages
sudo snap install chromium

# extra tools
sudo apt install tldr -y
sudo apt install tree -y
sudo apt install synaptic -y
sudo apt install gnome-tweaks -y
sudo apt install chrome-gnome-shell -y
sudo apt install vim -y
sudo apt install timeshift -y

# media codecs
sudo apt install ubuntu-restricted-extras -y

