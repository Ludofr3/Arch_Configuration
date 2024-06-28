#!/bin/bash

source ../colors.sh

echo -e "${B_RED}==>${BOLD} Uninstalling Yay...${NC}"
sudo rm -rf $(which yay)
echo -e "${B_GREEN}==>${BOLD} Yay has been successfully removed.${NC}\n"
