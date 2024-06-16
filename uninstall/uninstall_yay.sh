#!/bin/bash

source "$PWD/../colors.sh"

echo "${RED}Uninstalling Yay...${NC}"
sudo rm -rf $(which yay)
