#!/bin/bash

source ../colors.sh

# Uninstall Brave
echo -e "${B_GREEN}==> Uninstalling Brave...${NC}"
sudo pacman -Rns brave-bin
echo -e "${B_GREEN}==>${BOLD} Brave have been successfully removed.${NC}\n"

# Uninstall Blender
echo -e "${B_GREEN}==> Uninstalling Blender...${NC}"
sudo pacman -Rns blender
echo -e "${B_GREEN}==>${BOLD} Blender have been successfully removed.${NC}\n"

# Uninstall Spotify
echo -e "${B_GREEN}==> Uninstalling Spotify...${NC}"
sudo pacman -Rns spotify-launcher
echo -e "${B_GREEN}==>${BOLD} Spotify have been successfully removed.${NC}\n"

# Uninstall Obsidian
echo -e "${B_GREEN}==> Uninstalling Obsidian...${NC}"
sudo pacman -Rns obsidian
echo -e "${B_GREEN}==>${BOLD} Obsidian have been successfully removed.${NC}\n"
