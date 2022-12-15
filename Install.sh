#!/bin/bash

# Install Packages
sudo pacman -Syyu
sudo pacman -S alacritty bluez bluez-utils bridge-utils brightnessctl dnsmasq feh firefox gimp git jdk-openjdk jre-openjdk libguestfs libreoffice-fresh maim neofetch neovim openbsd-netcat qemu ranger spotify-launcher telegram-desktop unzip vde2 virt-manager virt-viewer zip

# Bluetooth
sudo systemctl enable bluetooth
sudo systemctl start bluetooth

# Virt-manager
sudo systemctl enable libvirtd
sudo systemctl start libvirtd
sudo usermod -aG libvirt $USER

# make directory
mkdir ~/.config/alacritty
mkdir ~/.config/i3
mkdir ~/.config/i3status
mkdir ~/Gimp
mkdir ~/Linux
mkdir ~/Office
mkdir ~/Screenshot
mkdir ~/Telegram
mkdir ~/Wallpaper
mkdir ~/Wallpaper
sudo mkdir /etc/libvirt

# Configs
cp DotFiles/Alacritty/alacritty.yml ~/.config/alacritty/
cp DotFiles/I3/config ~/.config/i3/
cp DotFiles/I3Status/config ~/.config/i3status/
sudo cp DotFiles/Libvirt/libvirtd.conf /etc/libvirt/
cp Wallpaper/596610.jpg ~/Wallpaper/

# Install AurHelper
cd ~
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ~

# Build Packages
yay whatsapp-for-linux 
yay tldr
yay ttyper
