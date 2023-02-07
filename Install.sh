#!/bin/bash

# Install Packages
sudo pacman -Syyu
sudo pacman -S alacritty bluez bluez-utils bridge-utils brightnessctl dnsmasq feh firefox flatpak gimp git jdk-openjdk jre-openjdk libguestfs libreoffice-fresh lsd maim neofetch neovim nodejs npm polybar python python-pip qemu-base ranger ripgrep rofi spotify-launcher telegram-desktop tree ttf-firacode-nerd unzip vde2 virt-manager virt-viewer xsel zip

# Bluetooth
sudo systemctl enable bluetooth
sudo systemctl start bluetooth

# Virt-manager
sudo systemctl enable libvirtd
sudo systemctl start libvirtd
sudo usermod -aG libvirt $USER

# Neovim
pip install pynvim
sudo npm i -g Neovim

# My Repos
git clone https://github.com/IamHARSHDABAS/C
git clone https://github.com/IamHARSHDABAS/DotFiles
git clone https://github.com/IamHARSHDABAS/IamHARSHDABAS
git clone https://github.com/IamHARSHDABAS/Java
git clone https://github.com/IamHARSHDABAS/NeoVim
git clone https://github.com/IamHARSHDABAS/Sweetify
git clone https://github.com/IamHARSHDABAS/SweetifyNeoVim

# make directory
mkdir -p $HOME/Screenshot/
mkdir -p $HOME/Telegram/
mkdir -p $HOME/Temporary/
mkdir -p $HOME/Wallpaper/
mkdir -p $HOME/Whatsapp/
mkdir -p $HOME/.config/alacritty/
mkdir -p $HOME/.config/nvim/
mkdir -p $HOME/.config/polybar/
mkdir -p $HOME/.config/rofi/
mkdir -p $HOME/.config/tealdeer/

# Configs
cp -r $HOME/DotFiles/Alacritty/* $HOME/.config/alacritty/
cp -r $HOME/DotFiles/Bash/* $HOME/.bashrc
cp -r $HOME/DotFiles/I3/* $HOME/.config/i3/
cp -r $HOME/DotFiles/Polybar/* $HOME/.config/polybar/
cp -r $HOME/DotFiles/Rofi/* $HOME/.config/rofi/
cp -r $HOME/DotFiles/Tealdeer/* $HOME/.config/tealdeer/
cp -r $HOME/NeoVim/* $HOME/.config/nvim/
cp -r I3PostInstall/Wallpaper/* $HOME/Wallpaper/
sudo cp -r $HOME/DotFiles/Libvirt/libvirtd.conf /etc/libvirt/

# Flatpak
flatpak install flathub com.jetbrains.IntelliJ-IDEA-Community
