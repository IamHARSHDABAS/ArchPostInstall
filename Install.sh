#!/bin/bash

# Install Packages
sudo pacman -Syyu
sudo pacman -S alacritty bluez bluez-utils bridge-utils brightnessctl dnsmasq feh firefox flatpak gimp git go jdk-openjdk jre-openjdk libguestfs libreoffice-fresh lsd maim neofetch neovim polybar qemu-base ranger rofi rust spotify-launcher telegram-desktop unzip vde2 virt-manager virt-viewer zip

# Bluetooth
sudo systemctl enable bluetooth
sudo systemctl start bluetooth

# Virt-manager
sudo systemctl enable libvirtd
sudo systemctl start libvirtd
sudo usermod -aG libvirt $USER

# make directory
mkdir -p $HOME/Archive/
mkdir -p $HOME/Gimp/
mkdir -p $HOME/Iso/
mkdir -p $HOME/Linux/
mkdir -p $HOME/Office/
mkdir -p $HOME/Screenshot/
mkdir -p $HOME/Telegram/
mkdir -p $HOME/Temp/
mkdir -p $HOME/Wallpaper/
mkdir -p $HOME/Whatsapp/
mkdir -p $HOME/.config/alacritty/
mkdir -p $HOME/.config/nvim/
mkdir -p $HOME/.config/polybar/
mkdir -p $HOME/.config/rofi/

# Configs
cp -r I3PostInstall/DotFiles/Alacritty/* $HOME/.config/alacritty/
cp -r I3PostInstall/DotFiles/Bash/* $HOME/.bashrc
cp -r I3PostInstall/DotFiles/I3/* $HOME/.config/i3/
cp -r I3PostInstall/DotFiles/Nvim/* $HOME/.config/nvim/
cp -r I3PostInstall/DotFiles/Polybar/* $HOME/.config/polybar/
cp -r I3PostInstall/DotFiles/Rofi/* $HOME/.config/rofi/
cp -r I3PostInstall/Wallpaper/* $HOME/Wallpaper/
sudo cp -r I3PostInstall/DotFiles/Libvirt/libvirtd.conf /etc/libvirt/

# Nvim
mkdir -p $HOME/.local/share/nvim/site/pack/packer/start/
cd $HOME/.local/share/nvim/site/pack/packer/start/
git clone https://github.com/wbthomason/packer.nvim
cd $HOME/

# My Repos
git clone https://github.com/IamHARSHDABAS/Java
git clone https://github.com/IamHARSHDABAS/C

# Flatpak
flatpak install flathub com.jetbrains.IntelliJ-IDEA-Community

# Aur Helper
cd $HOME/
git clone https://aur.archlinux.org/yay.git
cd yay/
makepkg -si
cd $HOME/

# Build Packages
yay tldr
yay ttyper
yay whatsapp-for-linux

# Reboot
reboot
