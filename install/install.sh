#!/bin/bash

# Update the system
echo "Updating the system..."
sudo pacman -Syu --noconfirm

# Install Git
echo "Installing Git ..."
sudo pacman -S --needed base-devel git --noconfirm

# Install Yay
echo "Installing Yay..."
git clone https://aur.archlinux.org/yay-git.git
cd yay-git
makepkg -sri

# Install Zsh
echo "Installing Zsh..."
./install_zsh.sh

# Install Visual Studio Code of Microsoft
echo "Installing Visual Studio Code of Microsoft..."
./install_vsCode.sh
