#!/bin/bash

# Install Packages
sudo pacman -Syyu
sudo pacman -S alacritty bluez bluez-utils bridge-utils brightnessctl dnsmasq feh firefox gimp git jdk-openjdk jre-openjdk libguestfs libreoffice-fresh maim neofetch neovim polybar openbsd-netcat qemu ranger rofi spotify-launcher telegram-desktop unzip vde2 virt-manager virt-viewer zip

# Bluetooth
sudo systemctl enable bluetooth
sudo systemctl start bluetooth

# Virt-manager
sudo systemctl enable libvirtd
sudo systemctl start libvirtd
sudo usermod -aG libvirt $USER

# make directory
mkdir ~/.config/alacritty
mkdir ~/.config/polybar
mkdir ~/.config/rofi
mkdir ~/.config/nvim
mkdir ~/Archive
mkdir ~/Java
mkdir ~/Gimp
mkdir ~/Linux
mkdir ~/Office
mkdir ~/Screenshot
mkdir ~/Telegram
mkdir ~/Temp
mkdir ~/Wallpaper
mkdir ~/Whatsapp

# Configs
cp DotFiles/Alacritty/alacritty.yml ~/.config/alacritty
cp DotFiles/I3/config ~/.config/i3
cp DotFiles/Polybar/config.ini ~/.config/polybar
cp DotFiles/Polybar/launch.sh ~/.config/polybar
cp DotFiles/Rofi/arthur.rasi ~/.config/rofi
cp DotFiles/Rofi/config.rasi ~/.config/rofi
cp Wallpaper/wallhaven-2evx9g.jpg ~/Wallpaper
cp -r DotFiles/Nvim/* ~/.config/nvim
sudo cp DotFiles/Libvirt/libvirtd.conf /etc/libvirt

# Nvim
git clone --depth 1 https://github.com/wbthomason/packer.nvim\ ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# Aur Helper
cd ~
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ~

# Build Packages
yay whatsapp-for-linux
yay tldr
yay ttyper
