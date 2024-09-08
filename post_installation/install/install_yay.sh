#!/bin/bash

source ../colors.sh

# Installing Yay
echo -e "${B_GREEN}==>${BOLD} Installing Yay...${NC}"
cd $HOME &&
git clone https://aur.archlinux.org/yay-git.git &&
cd yay-git &&
chown $USER:$USER . &&
makepkg -sri --noconfirm --needed &&
cd $HOME &&
rm -rf $HOME/yay-git &&
cd ./Arch_Configuration
echo -e "${B_GREEN}==>${BOLD} Yay have been successfully completed.${NC}\n"
