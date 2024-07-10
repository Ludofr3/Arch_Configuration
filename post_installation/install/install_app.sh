#!/bin/bash

source ../colors.sh

# Installer Brave
echo -e "${B_GREEN}==>${BOLD} Installing Brave...${NC}"
yay -S brave-bin --noconfirm --needed --quiet
echo -e "${B_GREEN}==>${BOLD} Brave have been successfully installed.${NC}\n"

# Install Blender
echo -e "${B_GREEN}==>${BOLD} Installing Blender...${NC}"
sudo pacman -Sy blender --noconfirm --needed
echo -e "${B_GREEN}==>${BOLD} Blender have been successfully installed.${NC}\n"

# Install Spotify
echo -e "${B_GREEN}==>${BOLD} Installing Spotify...${NC}"
sudo pacman -Sy spotify-launcher --noconfirm --needed
echo -e "${B_GREEN}==>${BOLD} Spotify have been successfully installed.${NC}\n"

# Install Obsidian
echo -e "${B_GREEN}==>${BOLD} Installing Obsidian...${NC}"
sudo pacman -Sy obsidian --noconfirm --needed
echo -e "${B_GREEN}==>${BOLD} Obsidian have been successfully installed.${NC}\n"

# Install Calibre
echo -e "${B_GREEN}==>${BOLD} Installing Calibre...${NC}"
sudo -v && wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sudo sh /dev/stdin
echo -e "${B_GREEN}==>${BOLD} Calibre have been successfully installed.${NC}\n"