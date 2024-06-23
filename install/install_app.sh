#!/bin/bash

source ../colors.sh

# Installer Brave
echo -e "${B_GREEN}==>${BOLD} Installing Brave...${NC}"
yay -S brave-bin --noconfirm --needed --quiet

# Install Blender
echo -e "${B_GREEN}==>${BOLD} Installing Blender...${NC}"
sudo pacman -Sy blender --noconfirm --needed

# Install Spotify
echo -e "${B_GREEN}==>${BOLD} Installing Spotify...${NC}"
sudo pacman -Sy spotify-launcher --noconfirm --needed

# Install Obsidian
echo -e "${B_GREEN}==>${BOLD} Installing Obsidian...${NC}"
sudo pacman -Sy obsidian --noconfirm --needed
