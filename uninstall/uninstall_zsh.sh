#!/bin/bash

# Désinstaller Zsh
echo "Désinstallation de Zsh..."
sudo pacman -Rsn zsh

# Désinstaller Oh My Zsh
echo "Désinstallation de Oh My Zsh..."
rm -rf ~/.oh-my-zsh

# Changer le shell par défaut à Bash
echo "Changement du shell par défaut à Bash..."
chsh -s /bin/bash

# Appliquer les changements
echo "Application des changements..."
source ~/.bashrc

echo "La désinstallation de Zsh est terminée avec succès."