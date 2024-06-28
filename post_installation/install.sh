#!/bin/bash

source ./colors.sh

# Update the system
echo -e "${B_GREEN}==>${BOLD} Updating the system...${NC}"
sudo pacman -Syu --noconfirm

# Install Git
echo -e "${B_GREEN}==>${BOLD} Installing Git ...${NC}"
sudo pacman -S --needed base-devel git --noconfirm

# Install Yay
./install/install_yay.sh

# Install Zsh
./install/install_zsh.sh

# Install Visual Studio Code of Microsoft
./install/install_vsCode.sh

# Install differente apps
./install/install_app.sh

# Install Steam
./install/install_steam.sh
