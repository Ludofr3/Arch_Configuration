#!/bin/bash

# Install Yay
cd &&
git clone https://aur.archlinux.org/yay.git &&
sudo chown ludo:ludo /home/ludo/yay &&
cd yay &&
makepkg -si &&
cd &&
rm -rf -rf /home/ludo/yay &&
cd ./Arch_Configuration

