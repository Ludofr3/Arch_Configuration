#!/bin/bash

source ../colors.sh

echo -e "${RED}Uninstalling Yay...${NC}"
sudo rm -rf $(which yay)
echo -e "${GREEN}La désinstallation de Yay est terminée avec succès.${NC}"