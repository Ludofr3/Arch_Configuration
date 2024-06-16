#!/bin/bash

source ../colors.sh

# Install Yay
echo -e "${GREEN}Installing Yay...${NC}"
cd /home/ludo &&
git clone https://aur.archlinux.org/yay-git.git &&
cd yay-git &&
chown ludo:ludo . &&
makepkg -sri &&
cd /home/ludo &&
rm -rf /home/ludo/yay-git &&
cd ./Arch_Configuration

