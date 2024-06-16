#!/bin/bash

source "$PWD/../colors.sh"

# Install Zsh
echo "${GREEN}Installing Zsh...${NC}"
sudo pacman -Sy zsh --noconfirm

# Change the default shell to Zsh
echo "${BLUE}Changing the default shell to Zsh...${NC}"
chsh -s /bin/zsh

# Install Oh My Zsh
echo "${BLUE}Installing Oh My Zsh...${NC}"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# Appliquer les changements
echo "${BLUE}Application des changements...${NC}"
source ~/.zshrc

echo "${GREEN}L'installation et la configuration de Zsh sont terminées avec succès.${NC}"