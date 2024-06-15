#!/bin/bash

# Update the system
echo "Updating the system..."
sudo pacman -Syu --noconfirm

#Install Git
echo "Installing Git ..."
sudo pacman -Sy git --noconfirm

# Install Zsh
echo "Installing Zsh..."
./install_zsh.sh

# Install Visual Studio Code of Microsoft
echo "Installing Visual Studio Code of Microsoft..."
./install_vsCode.sh
