#!/bin/bash

source ../colors.sh

# Update the system
echo -e "${GREEN}Updating the system...${NC}"
sudo pacman -Syu --noconfirm

# Install Git
echo -e "${GREEN}Installing Git ...${NC}"
sudo pacman -S --needed base-devel git --noconfirm

# Install Yay
./install/install_yay.sh

# Install Zsh
./install/install_zsh.sh

# Install Visual Studio Code of Microsoft
./install/install_vsCode.sh
