#!/bin/bash

source ../colors.sh

echo -e "${B_GREEN}==>${BOLD} Installation and configuration of steam...${NC}"

# Enable Arch's Multilib Repository
echo "${BLUE}-->${BOLD} Enabling Arch's Multilib Repository...${NC}"
sudo sed -i '/\[multilib\]/,/Include/ s/^#//' /etc/pacman.conf

# Install Steam
echo "${BLUE}-->${BOLD} Installing Steam...${NC}"
sudo pacman -Sy steam --noconfirm --needed

# Install ProtonUp-Qt
echo "${BLUE}-->${BOLD} Installing ProtonUp-Qt...${NC}"
yay -S protonup-qt --noconfirm --needed --quiet

echo -e "${B_GREEN}==>${BOLD} Configuration instructions for Steam Play...${NC}"
echo -e "${BLUE}-->${BOLD} To enable Steam Play, follow these steps:${NC}"
echo -e "1. Open the Steam client."
echo -e "2. Navigate to the 'Steam' menu in the top-left corner and click 'Settings'."
echo -e "3. Select 'Compatibility' from the menu on the left."
echo -e "4. Enable 'Enable Steam Play for supported titles' and 'Enable Steam Play for all other titles'."
echo -e "5. Select the installed Proton GE version from the 'Run other titles with' option."
echo -e "6. Restart the Steam client if prompted."

echo -e "${B_GREEN}==>${BOLD} Steam and Proton GE installation completed successfully.${NC}"

# based on https://linuxiac.com/how-to-play-games-on-arch-linux-using-steam/
