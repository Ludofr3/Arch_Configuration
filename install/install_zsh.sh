#!/bin/bash

# Install Zsh
sudo pacman -Sy zsh --noconfirm

# Change the default shell to Zsh
echo "Changing the default shell to Zsh..."
chsh -s /bin/zsh

# Install Oh My Zsh
echo "Installing Oh My Zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# Appliquer les changements
echo "Application des changements..."
source ~/.zshrc

echo "L'installation et la configuration de Zsh sont terminées avec succès."