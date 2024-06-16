#!/bin/bash

source ../colors.sh

echo -e "${RED}Uninstalling Yay...${NC}"
sudo rm -rf $(which yay)
