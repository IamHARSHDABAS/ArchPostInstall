#!/bin/bash

cd $HOME

# Install Packages
sudo pacman -S alacritty bluez bluez-utils brightnessctl feh firefox gimp git jdk-openjdk libreoffice-fresh lsd neofetch neovim ripgrep spotify-launcher telegram-desktop tree unzip zip

# Font
sudo rm -rf /usr/share/fonts/*
sudo pacman -S ttf-firacode-nerd

# Bluetooth
sudo systemctl enable bluetooth
sudo systemctl start bluetooth

# Git
# git config --global user.email "[USER_EMAIL]"
# git config --global user.name "[USER_NAME]"
git clone https://github.com/IamHARSHDABAS/C
git clone https://github.com/IamHARSHDABAS/DotFiles
git clone https://github.com/IamHARSHDABAS/Java
git clone https://github.com/IamHARSHDABAS/NeoVim
git clone https://github.com/IamHARSHDABAS/Sweetify
git clone https://github.com/IamHARSHDABAS/ClickCounter

# config
mkdir .config/alacritty/
mkdir .config/i3/
mkdir .config/nvim/
cp -r DotFiles/Alacritty/alacritty.yml .config/alacritty/
cp -r DotFiles/I3/config .config/i3/
cp -r DotFiles/Bash/bashrc .bashrc
cp -r NeoVim/* .config/nvim/

# Aur helper
git clone https://aur.archlinux.org/yay.git
cd yay && makepkg -si

# Aur
yay android-studio
