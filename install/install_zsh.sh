#!/bin/bash

source ../colors.sh

# Installing Zsh
echo -e "${B_GREEN}==>${BOLD} Installing Zsh...${NC}"
sudo pacman -Sy zsh --noconfirm --needed

# Change the default shell to Zsh
echo -e "${BLUE}-->${BOLD}Changing the default shell to Zsh...${NC}"
chsh -s $(which zsh)

# Install Oh My Zsh
echo -e "${BLUE}-->${BOLD} Installing Oh My Zsh...${NC}"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# Appliquer les changements
echo -e "${BLUE}-->${BOLD} Application of changes...${NC}"
source ~/.zshrc

echo -e "${B_GREEN}==>${BOLD} Zsh installation and configuration have been successfully completed.${NC}"