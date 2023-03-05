#!/bin/bash

cd $HOME

# Install Packages
sudo pacman -S bluez bluez-utils firefox lsd neofetch neovim npm ripgrep spectacle spotify-launcher telegram-desktop tree ttf-firacode-nerd

# NeoVim
git clone https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
sudo npm install neovim

# Bluetooth
sudo systemctl enable bluetooth
sudo systemctl start bluetooth

# Flutter
git clone https://github.com/flutter/Flutter -b stable

# Dirs
mkdir ~/.config/nvim/
mkdir Repos

# Git
cd Repos
git config --global user.email "iamharshdabas@gmail.com"
git config --global user.name "IamHARSHDABAS"
git clone https://github.com/IamHARSHDABAS/C
git clone https://github.com/IamHARSHDABAS/ClickCounter
git clone https://github.com/IamHARSHDABAS/DotFiles
git clone https://github.com/IamHARSHDABAS/Java
git clone https://github.com/IamHARSHDABAS/namer
git clone https://github.com/IamHARSHDABAS/NeoVim
git clone https://github.com/IamHARSHDABAS/shoot
git clone https://github.com/IamHARSHDABAS/Sweetify

# config
cp -r DotFiles/Bash/bashrc ~/.bashrc
cp -r DotFiles/Konsole/* ~/.local/share/konsole/
cp -r NeoVim/* ~/.config/nvim/

# Paru
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd ..
rm -rf paru

# Aur
paru android-studio
paru visual-studio-code-bin
paru tealdeer-git
