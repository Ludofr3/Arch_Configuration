#!/bin/bash

source ../colors.sh

# Désinstaller Zsh
echo -e "${B_RED}==> Uninstalling Zsh...${NC}"
sudo pacman -Rsn zsh

# Désinstaller Oh My Zsh
echo -e "${BLUE}-->${BLOD} Delete folder Oh My Zsh...${NC}"
rm -rf ~/.oh-my-zsh

# Changer le shell par défaut à Bash
echo -e "${BLUE}-->${BLOD} Change default shell to Bash...${NC}"
sudo chsh -s $(which bash)

# Appliquer les changements
echo -e "${BLUE}-->${BLOD} Application of changes...${NC}"
source ~/.bashrc

echo -e "${B_GREEN}Zsh uninstallation has been successfully completed.${NC}"
