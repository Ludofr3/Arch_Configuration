#!/bin/bash

source ../colors.sh

echo -e "${B_GREEN}==>${BOLD} Installation and configuration of steam...${NC}"

# # Enable Arch's Multilib Repository
# echo "\t${B_BLUE}->${BOLD} Enabling Arch's Multilib Repository...${NC}"
# sudo sed -i '/\[multilib\]/,/Include/ s/^#//' /etc/pacman.conf

# Install Steam
echo "\t${B_BLUE}->${BOLD} Installing Steam...${NC}"
sudo pacman -Sy steam --noconfirm --needed

# Install ProtonUp-Qt
echo "\t${B_BLUE}->${BOLD} Installing ProtonUp-Qt...${NC}"
yay -S protonup-qt --noconfirm --needed --quiet

echo -e "${B_GREEN}==>${BOLD} Configuration instructions for Steam Play...${NC}"
echo -e "\t${B_BLUE}->${BOLD} To enable Steam Play, follow these steps:"
echo -e "\t\t1. Open the Steam client."
echo -e "\t\t2. Navigate to the 'Steam' menu in the top-left corner and click 'Settings'."
echo -e "\t\t3. Select 'Compatibility' from the menu on the left."
echo -e "\t\t4. Enable 'Enable Steam Play for supported titles' and 'Enable Steam Play for all other titles'."
echo -e "\t\t5. Select the installed Proton GE version from the 'Run other titles with' option."
echo -e "\t\t6. Restart the Steam client if prompted."

echo -e "${B_GREEN}==>${BOLD} Steam and Proton GE installation completed successfully.${NC}\n"

# based on https://linuxiac.com/how-to-play-games-on-arch-linux-using-steam/
