#!/bin/bash -ex

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
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

# snap packages
sudo snap install code --classic
sudo snap install chromium

# extra tools
sudo apt install tldr -y
sudo apt install tree -y
sudo apt install synaptic -y
sudo apt install gnome-tweaks -y
sudo apt install chrome-gnome-shell -y

# download nordic and papirus themes
wget -O nordic.tar.xz https://github.com/EliverLara/Nordic/releases/download/v2.1.0/Nordic-bluish-accent-standard-buttons-v40.tar.xz
tar -xf nordic.tar.xz
wget -O papirus.tar.gz https://github.com/PapirusDevelopmentTeam/papirus-icon-theme/archive/refs/tags/20220302.tar.gz
tar -xf papirus.tar.gz
# move them to correct directories
mkdir -p ~/.icons ~/.themes
cp papirus-icon-theme-20220302/Papirus ~/.icons/
cp -r Nordic-bluish-accent-standard-buttons-v40/ ~/.themes/
