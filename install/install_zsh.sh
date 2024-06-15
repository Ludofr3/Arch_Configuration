#!/bin/bash

# Install Zsh
sudo pacman -Sy zsh --noconfirm

# Change the default shell to Zsh
echo "Changing the default shell to Zsh..."
chsh -s /bin/zsh

# Install Oh My Zsh
echo "Installing Oh My Zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# Installer le thème Powerlevel10k
echo "Installation du thème Powerlevel10k..."
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Définir Powerlevel10k comme thème par défaut
echo "Définition de Powerlevel10k comme thème par défaut..."
sed -i 's/ZSH_THEME=".*"/ZSH_THEME="powerlevel10k\/powerlevel10k"/g' ~/.zshrc

# Installer les polices nécessaires pour Powerlevel10k
echo "Installation des polices nécessaires pour Powerlevel10k..."
sudo pacman -S ttf-meslo-nerd-font-powerlevel10k --noconfirm

# Appliquer les changements
echo "Application des changements..."
source ~/.zshrc

echo "L'installation et la configuration de Zsh sont terminées avec succès."