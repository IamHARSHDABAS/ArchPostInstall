#!/bin/bash

# Install Packages
sudo pacman -S alacritty bluez bluez-utils brightnessctl feh firefox gimp git jdk-openjdk libreoffice-fresh lsd neofetch neovim npm python-pip ranger ripgrep spotify-launcher telegram-desktop tree ttf-firacode-nerd unzip zip

# Bluetooth
sudo systemctl enable bluetooth
sudo systemctl start bluetooth

# Neovim
git clone https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
pip install pynvim
# sudo npm i -g Neovim  # ERROR 404

# Git
# git config --global user.email "[USER_EMAIL]"
# git config --global user.name "[USER_NAME]"
git clone https://github.com/IamHARSHDABAS/C
git clone https://github.com/IamHARSHDABAS/DotFiles
git clone https://github.com/IamHARSHDABAS/Java
git clone https://github.com/IamHARSHDABAS/NeoVim
git clone https://github.com/IamHARSHDABAS/Sweetify
git clone https://github.com/IamHARSHDABAS/ClickCounter

# Aur helper
git clone https://aur.archlinux.org/yay.git
cd yay && makepkg -si
