#!/bin/bash

source "$PWD/../colors.sh"

# Installer Visual Studio Code
echo "${GREEN}Installing Visual Studio Code of Microsoft...${NC}"
yay -S visual-studio-code-bin --quiet

# Liste des extensions à installer
declare -a comments=("aa
ron-bond.better-comments" "kevinkyang.auto-comment-blocks" "exodiusstudios.comment-anchors")
declare -a cleanCode=("shardulm94.trailing-spaces" "rubymaniac.vscode-paste-and-indent")
declare -a themes=("unthrottled.doki-theme")
declare -a git=("mhutchie.git-graph")
declare -a devops=("ms-kubernetes-tools.vscode-kubernetes-tools" "ms-azuretools.vscode-docker" "ms-vscode-remote.remote-containers")
declare -a ai=("smallcloud.codify" "kurusugawa-computer.markdown-copilot" "tabnine.tabnine-vscode")
declare -a securityCode=("sonarsource.sonarlint-vscode")
declare -a liveShare=("ms-vsliveshare.vsliveshare")

declare -a UML=("theumletteam.umlet")
declare -a bnf=("vallentin.vscode-bnf" "igochkov.vscode-ebnf")
declare -a markdown=("yzhang.markdown-all-in-one" "shd101wyy.markdown-preview-enhanced")

declare -a cpp=("ms-vscode.cpptools-themes" "ms-vscode.cpptools-extension-pack" "llvm-vs-code-extensions.vscode-clangd" "ms-vscode.cpptools")
declare -a react=("msjsdiag.vscode-react-native")
declare -a golang=("golang.go" "golang.go-nightly")
declare -a rust=("statiolake.vscode-rustfmt" "rust-lang.rust-analyzer")
declare -a python=("ms-python.python" "ms-python.vscode-pylance")

extensions=("${comments[@]}" "${cleanCode[@]}" "${themes[@]}" "${git[@]}" "${devops[@]}" "${ai[@]}" "${securityCode[@]}" "${liveShare[@]}" "${UML[@]}" "${bnf[@]}" "${markdown[@]}" "${cpp[@]}" "${react[@]}" "${golang[@]}" "${rust[@]}" "${python[@]}")

# Installer les extensions
for ext in "${extensions[@]}"
do
   echo "${BLUE}Vérification de l'existence de l'extension ${PURPLE} $ext...${NC}"
   if code --list-extensions | grep -q "^$ext$"; then
      echo "${GREEN}L'extension ${PURPLE}$ext${GREEN} est déjà installée.${NC}"
   else
      echo "${BLUE}Installation de l'extension ${PURPLE}$ext${GREEN}...${NC}"
      code --install-extension $ext --force &&
      echo "${GREEN}L'extension ${PURPLE}$ext${GREEN} a été installée avec succès.${NC}"
   fi
done

echo "${GREEN}L'installation et la configuration de Visual Studio Code sont terminées avec succès.${NC}"