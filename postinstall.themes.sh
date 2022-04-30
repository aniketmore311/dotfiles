#!/bin/bash -ex
#
# post install script to install and setup themes
#
sudo apt update

# download nordic and papirus themes
wget -O nordic.tar.xz https://github.com/EliverLara/Nordic/releases/download/v2.1.0/Nordic-bluish-accent-standard-buttons-v40.tar.xz
tar -xf nordic.tar.xz
wget -O papirus.tar.gz https://github.com/PapirusDevelopmentTeam/papirus-icon-theme/archive/refs/tags/20220302.tar.gz
tar -xf papirus.tar.gz

# move them to correct directories
mkdir -p ~/.icons ~/.themes
cp -r papirus-icon-theme-20220302/Papirus ~/.icons/Papirus
cp -r Nordic-bluish-accent-standard-buttons-v40/ ~/.themes/Nordic

# set themes
gsettings set org.gnome.desktop.interface gtk-theme "Nordic"
gsettings set org.gnome.desktop.wm.preferences theme "Nordic"
gsettings set org.gnome.desktop.interface icon-theme 'Papirus'

# set wallpaper
wget -O wallpaper.png https://github.com/linuxdotexe/nordic-wallpapers/raw/master/wallpapers/BirdNord.png
sudo cp wallpaper.png /usr/share/backgrounds/nord_bird.png
#gsettings set org.gnome.desktop.background picture-uri $PWD/wallpaper.png

# nord theme for gnome terminal
wget -O nord.sh https://raw.githubusercontent.com/arcticicestudio/nord-gnome-terminal/develop/src/nord.sh
chmod +x ./nord.sh
./nord.sh

# nord dir_colors
wget -O .dir_colors https://raw.githubusercontent.com/arcticicestudio/nord-dircolors/develop/src/dir_colors
cp ./.dir_colors ~/.dir_colors
echo "test -r ~/.dir_colors && eval \$(dircolors ~/.dir_colors)" >> ~/.bashrc
source ~/.bashrc

# nord theme for gedit
wget -O nord.xml https://raw.githubusercontent.com/arcticicestudio/nord-gedit/develop/src/xml/nord.xml
mkdir -p ~/.local/share/gedit/styles
cp nord.xml ~/.local/share/gedit/styles/nord.xml

echo ""
echo "----------------------------------------------------------------------------------------------------------"
echo ""
echo "further instructions: "
echo "to change gedit's theme to nord -> got to gedit's preferences and change the theme"
echo "to change wallpaper -> go to gnome tweaks' appearance settings and select nord_bird.png wallpaper"
echo "to change gnome terminal theme -> go to terminal's preferences and set the 'Nord' profile as default profile"
echo ""
echo "-----------------------------------------------------------------------------------------------------------"
echo ""