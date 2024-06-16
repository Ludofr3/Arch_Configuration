#!/bin/bash

source ../colors.sh

# Uninstall Visual Studio Code
echo -e "${RED}Uninstalling Visual Studio Code of Microsoft...${NC}"
sudo pacman -Rns visual-studio-code-bin

# Delete extensions folder
sudo rm -rf ~/.vscode

echo -e "${GREEN}La Désinstallation Visual Studio Code est terminée avec succès...${NC}\n"