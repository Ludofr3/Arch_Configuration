#!/bin/bash

source ../colors.sh

# Uninstall Visual Studio Code
echo -e "${B_RED}==> Uninstalling Visual Studio Code of Microsoft...${NC}"
sudo pacman -Rns visual-studio-code-bin

# Delete extensions folder
sudo rm -rf ~/.vscode

echo -e "${B_GREEN}==> La Désinstallation Visual Studio Code est terminée avec succès...${NC}\n"