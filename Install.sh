#!/bin/bash

# Install Packages
sudo pacman -Syyu
sudo pacman -S alacritty bluez bluez-utils bridge-utils brightnessctl dnsmasq feh firefox gimp git go jdk-openjdk jre-openjdk libguestfs libreoffice-fresh maim neofetch neovim polybar qemu ranger rofi rust spotify-launcher telegram-desktop unzip vde2 virt-manager virt-viewer zip

# Bluetooth
sudo systemctl enable bluetooth
sudo systemctl start bluetooth

# Virt-manager
sudo systemctl enable libvirtd
sudo systemctl start libvirtd
sudo usermod -aG libvirt $USER

# make directory
mkdir $HOME/Archive/
mkdir $HOME/Java/
mkdir $HOME/Gimp/
mkdir $HOME/Linux/
mkdir $HOME/Office/
mkdir $HOME/Screenshot/
mkdir $HOME/Telegram/
mkdir $HOME/Temp/
mkdir $HOME/Wallpaper/
mkdir $HOME/Whatsapp/
mkdir -p $HOME/.config/alacritty/
mkdir -p $HOME/.config/nvim/
mkdir -p $HOME/.config/polybar/
mkdir -p $HOME/.config/rofi/

# Configs
cp -r DotFiles/Alacritty/* $HOME/.config/alacritty/
cp -r DotFiles/I3/* $HOME/.config/i3/
cp -r DotFiles/Nvim/* $HOME/.config/nvim/
cp -r DotFiles/Polybar/* $HOME/.config/polybar/
cp -r DotFiles/Rofi/* $HOME/.config/rofi/
cp -r Wallpaper/* $HOME/Wallpaper/
sudo cp DotFiles/Libvirt/libvirtd.conf /etc/libvirt/

# Nvim
mkdir -p $HOME/.local/share/nvim/site/pack/packer/start/
cd $HOME/.local/share/nvim/site/pack/packer/start/
git clone https://github.com/wbthomason/packer.nvim
cd $HOME/

# Aur Helper
cd $HOME/
git clone https://aur.archlinux.org/yay.git
cd yay/
makepkg -si
cd $HOME/

# Build Packages
yay whatsapp-for-linux
yay tldr
yay ttyper

# Reboot
reboot
