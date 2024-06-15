#!/bin/bash

source ../colors.sh

# Install Yay
echo "${GREEN}Installing Yay...${NC}"
cd .. &&
git clone https://aur.archlinux.org/yay-git.git &&
cd yay-git &&
chown ludo:ludo . &&
makepkg -sri &&
cd .. &&
rm -rf /home/ludo/yay-git &&
cd ./Arch_Configuration

