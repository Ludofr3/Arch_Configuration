#!/bin/bash

source ../colors.sh

# Désinstaller Zsh
echo -e "Uninstalling Zsh..."
sudo pacman -Rsn zsh

# Désinstaller Oh My Zsh
echo -e "Delete folder Oh My Zsh..."
rm -rf ~/.oh-my-zsh

# Changer le shell par défaut à Bash
echo -e "Changement du shell par défaut à Bash..."
chsh -s /bin/bash

# Appliquer les changements
echo -e "Application des changements..."
source ~/.bashrc

echo -e "La désinstallation de Zsh est terminée avec succès."