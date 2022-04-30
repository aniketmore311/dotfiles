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
sudo snap install code --classic -y
sudo snap install chromium
