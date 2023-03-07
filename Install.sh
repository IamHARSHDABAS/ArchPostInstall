#!/bin/bash

cd $HOME

# Install Packages
sudo pacman -S android-tools bluez bluez-utils clang cmake firefox kdeconnect lsd neofetch neovim ninja npm ripgrep scrcpy spectacle spotify-launcher telegram-desktop tree ttf-firacode-nerd unzip zip

# NeoVim
git clone https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
sudo npm install neovim

# Bluetooth
sudo systemctl enable bluetooth
sudo systemctl start bluetooth

# Dirs
mkdir ~/.config/nvim/
mkdir Repos

# Git
cd Repos
git config --global user.email ""
git config --global user.name ""
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
paru google-chrome

# Flutter
cd ~
git clone https://github.com/flutter/flutter.git -b stable ~/Flutter
flutter doctor --android-licenses
sudo cp /usr/bin/google-chrome-stable /usr/bin/google-chrome
flutter doctor
