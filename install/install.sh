#!/bin/bash

# Update the system
echo "Updating the system..."
sudo pacman -Syu --noconfirm

# Install Git
echo "Installing Git ..."
sudo pacman -S --needed base-devel git --noconfirm

# Install Yay
echo "Installing Yay..."
./install/install_yay.sh

# Install Zsh
echo "Installing Zsh..."
./install/install_zsh.sh

# Install Visual Studio Code of Microsoft
echo "Installing Visual Studio Code of Microsoft..."
./install/install_vsCode.sh
