#!/bin/bash

source ../colors.sh

# Installer Brave
echo -e "${GREEN}Installing Brave...${NC}"
yay -S brave-bin --noconfirm --needed --quiet

# Install Blender
echo -e "${GREEN}Installing Blender...${NC}"
sudo pacman -Sy blender --noconfirm --needed

# Install Spotify
echo -e "${GREEN}Installing Spotify...${NC}"
sudo pacman -Sy spotify-launcher --noconfirm --needed

# Install Obsidian
echo -e "${GREEN}Installing Obsidian...${NC}"
sudo pacman -Sy obsidian --noconfirm --needed
