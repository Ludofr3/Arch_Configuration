#!/bin/bash

source ../colors.sh

# Uninstall Brave
echo -e "${B_RED}==> Uninstalling Brave...${NC}"
sudo pacman -Rns brave-bin

# Uninstall Blender
echo -e "${B_RED}==> Uninstalling Blender...${NC}"
sudo pacman -Rns blender

# Uninstall Spotify
echo -e "${B_RED}==> Uninstalling Spotify...${NC}"
sudo pacman -Rns spotify-launcher