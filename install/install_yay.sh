#!/bin/bash

# Install Yay
cd .. &&
git clone https://aur.archlinux.org/yay-git.git &&
cd yay-git &&
chown ludo:ludo . &&
makepkg -si &&
cd .. &&
rm -rf /home/ludo/yay-git &&
cd ./Arch_Configuration

