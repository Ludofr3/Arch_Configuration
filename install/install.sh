#!/bin/bash

source ../colors.sh

# Update the system
echo -e "${GREEN}Updating the system...${NC}"
sudo pacman -Syu --noconfirm

# Install Git
echo -e "${GREEN}Installing Git ...${NC}"
sudo pacman -S --needed base-devel git --noconfirm

# Install Yay
./install_yay.sh

# Install Zsh
./install_zsh.sh

# Install Visual Studio Code of Microsoft
./install_vsCode.sh

# Install differente apps
./install_app.sh

# Install Steam
./install_steam.sh
