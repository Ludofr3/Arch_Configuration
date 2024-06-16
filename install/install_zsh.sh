#!/bin/bash

source ../colors.sh

# Install Zsh
echo -e "${GREEN}Installing Zsh...${NC}"
sudo pacman -Sy zsh --noconfirm --needed

# Change the default shell to Zsh
echo -e "${BLUE}Changing the default shell to Zsh...${NC}"
chsh -s /bin/zsh

# Install Oh My Zsh
echo -e "${BLUE}Installing Oh My Zsh...${NC}"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# Appliquer les changements
echo -e "${BLUE}Application des changements...${NC}"
source ~/.zshrc

echo -e "${GREEN}L'installation et la configuration de Zsh sont terminées avec succès.${NC}"