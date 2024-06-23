#!/bin/bash

source ../colors.sh

echo -e "${B_RED}==> Uninstalling Yay...${NC}"
sudo rm -rf $(which yay)
echo -e "${B_GREEN}Yay uninstallation has been successfully completed.${NC}"
