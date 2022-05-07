#!/bin/bash -ex
#
# post install script to install development tools
#
sudo apt update

# vscode
sudo snap install code --classic

# aws cli
wget -O awscliv2.zip "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip"
unzip awscliv2.zip
sudo ./aws/install
