#!/bin/bash

# Update the system
echo "Updating the system..."
sudo pacman -Syu

sudo pacman -S git

# Install Zsh
echo "Installing Zsh..."
./install_zsh.sh