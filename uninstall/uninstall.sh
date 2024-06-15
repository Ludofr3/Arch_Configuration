#!/bin/bash

source ../colors.sh

sudo pacman -Rsn git

# Uninstall Zsh
echo "Uninstalling Zsh..."
./uninstall_zsh.sh