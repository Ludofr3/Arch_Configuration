# !/bin/bash

source ../colors.sh
source ../tools.sh


#Installing Visual Studio Code
echo -e "${B_GREEN}==>${BOLD} Installing Visual Studio Code of Microsoft...${NC}"
yay -S visual-studio-code-bin --noconfirm --needed --quiet

declare -a extensions
mapfile -t extensions < ../config/vscode_config_extensions.txt

echo $extensions[@]

#Installing extensions

while IFS= read -r ext;
do
   echo -e "\t${B_BLUE}->${BOLD} Vérification de l'existence de l'extension ${B_PURPLE}$ext${BOLD}...${NC}"
   if code --list-extensions | grep -q "^$ext$"; then
      echo -e "\t\t${RED}->${BOLD} L'extension ${B_CYAN}$ext${BOLD} est déjà installée.${NC}"
   else
      code --install-extension $ext --force &&
      echo -e "\t\t${GREEN}-->${BOLD}L'extension ${B_CYAN}$ext${BOLD} a été installée avec succès.${NC}\n"
   fi
done < <(sed -e 's/[[:space:]]*#.*// ; /^[[:space:]]*$/d' ../config/vscode_config_extensions.txt)

echo -e "${BOLD}Copy user settings${NC}"
cp "../config/vscode_user_settings.json" "$HOME/.config/Code/User/settings.json"

echo -e "${B_GREEN}==>${BOLD} Visual Studio Code installation and configuration have been successfully completed.${NC}\n"
