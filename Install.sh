#!/bin/bash

cd ~

# Install Packages
sudo pacman -S bluez bluez-utils brightnessctl firefox gimp jdk-openjdk kitty libreoffice-fresh lsd neofetch neovim npm ripgrep scrot spotify-launcher telegram-desktop tree ttf-firacode-nerd unzip zip

# NeoVim
sudo npm install neovim

# Bluetooth
sudo systemctl enable bluetooth
sudo systemctl start bluetooth

# Dirs
mkdir ~/.config/nvim/
mkdir ~/Repos

# Git
cd Repos
#git config --global user.email ""
#git config --global user.name ""
git clone https://github.com/IamHARSHDABAS/DotFiles
git clone https://github.com/IamHARSHDABAS/Java
git clone https://github.com/IamHARSHDABAS/NeoVim

# config
cp -r DotFiles/Bash/bashrc ~/.bashrc
cp -r DotFiles/I3/config ~/.config/i3/
cp -r DotFiles/Kitty/kitty.conf ~/.config/kitty/
cp -r NeoVim/* ~/.config/nvim/

# Paru
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd ..
rm -rf paru

# Aur
paru visual-studio-code-bin
paru tealdeer-git
