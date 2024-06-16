#!/bin/bash

source ../colors.sh

# Désinstaller Zsh
echo -e "${RED}Uninstalling Zsh...${NC}"
sudo pacman -Rsn zsh

# Désinstaller Oh My Zsh
echo -e "${BLUE}Delete folder Oh My Zsh...${NC}"
rm -rf ~/.oh-my-zsh

# Changer le shell par défaut à Bash
echo -e "${BLUE}Changement du shell par défaut à Bash...${NC}"
chsh -s /bin/bash

# Appliquer les changements
echo -e "${BLUE}Application des changements...${NC}"
source ~/.bashrc

echo -e "${GREEN}La désinstallation de Zsh est terminée avec succès.${NC}"