#!/bin/bash

source ../colors.sh

# Enable Arch's Multilib Repository
echo "Enabling Arch's Multilib Repository..."
sudo sed -i '/\[multilib\]/,/Include/ s/^#//' /etc/pacman.conf

# Refresh the package base
echo "Refreshing the package base..."
sudo pacman -Sy

# Install Steam
echo "Installing Steam..."
sudo pacman -S steam

# Install ProtonUp-Qt
echo "Installing ProtonUp-Qt..."
yay -S protonup-qt

# Install Proton GE via ProtonUp-Qt
echo "Installing Proton GE via ProtonUp-Qt..."
protonup-qt

# Enable Steam Play
echo "Enabling Steam Play..."
# You can enable Steam Play manually by navigating to the "Steam" menu in the top-left corner, clicking "Settings," selecting "Compatibility," enabling "Enable Steam Play for supported titles" and "Enable Steam Play for all other titles," and selecting the installed Proton GE version from the "Run other titles with" option.

echo "Steam and Proton GE installation completed successfully."
