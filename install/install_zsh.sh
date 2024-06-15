#!/bin/bash

# Install Zsh
sudo pacman -S zsh

# Change the default shell to Zsh
echo "Changing the default shell to Zsh..."
chsh -s /bin/zsh

# Install Oh My Zsh
echo "Installing Oh My Zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
