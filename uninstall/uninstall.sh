#!/bin/bash

source ../colors.sh

sudo pacman -Rsn git

# Uninstall Zsh
./uninstall_zsh.sh

# Uninstall Yay
./uninstall_yay.sh

# Uninstall Visual Studio Code
./uninstall_vsCode.sh
