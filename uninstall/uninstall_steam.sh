#!/bin/bash

# Uninstall Steam
echo -e "${B_GREEN}==>${BOLD} Uninstalling Steam...${NC}."
sudo pacman -Rns steam

echo -e "${B_GREEN}==>${BOLD} Uninstalling Protonup...${NC}."
yay -R protonup-qt

echo -e "${B_GREEN}==>${BOLD} Steam and Proton GE have been successfully removed.${NC}\n"
