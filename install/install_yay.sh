#!/bin/bash

# Install Yay
cd .. &&
git clone https://aur.archlinux.org/yay-git.git &&
sudo chown ludo:ludo /home/ludo/yay-git &&
cd yay-git &&
makepkg -si &&
cd .. &&
rm -rf /home/ludo/yay-git &&
cd ./Arch_Configuration

