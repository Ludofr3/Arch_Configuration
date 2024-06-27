#!/bin/bash

source ../colors.sh

# Désinstaller Zsh
echo -e "${B_GREEN}==>${BOLD} Uninstalling Zsh...${NC}"
sudo pacman -Rsn zsh

# Désinstaller Oh My Zsh
echo -e "\t${B_BLUE}->${BOLD} Delete folder Oh My Zsh...${NC}"
rm -rf ~/.oh-my-zsh

# Changer le shell par défaut à Bash
echo -e "\t${B_BLUE}->${BOLD} Change default shell to Bash...${NC}"
sudo chsh -s $(which bash)

# Appliquer les changements
echo -e "\t${B_BLUE}->${BOLD} Application of changes...${NC}"
source ~/.bashrc

echo -e "${B_GREEN}==>${BOLD} Zsh has been successfully removed.${NC}\n"
