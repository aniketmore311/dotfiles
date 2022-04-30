#!/bin/bash -ex

sudo apt install git -y
sudo apt install python3 -y
sudo apt install python3-pip -y
sudo apt install default-jdk -y
sudo apt install default-jre -y

# snap packages
sudo snap install code --classic -y
sudo snap install chromium
