#!/bin/bash

source "$PWD/../colors.sh"

# Uninstall Visual Studio Code
echo "${GREEN}Uninstalling Visual Studio Code of Microsoft...${NC}"
sudo pacman -Rns visual-studio-code-bin

# Delete extensions folder
sudo rm -rf ~/.vscode

echo "${GREEN}La Désinstallation Visual Studio Code est terminée avec succès...${NC}"