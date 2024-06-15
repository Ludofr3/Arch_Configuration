#!/bin/bash

source ../colors.sh

# Installer Visual Studio Code
echo "${GREEN}Installing Visual Studio Code of Microsoft...${NC}"
yay -S visual-studio-code-bin --quiet

# Liste des extensions à installer
comments=("aaron-bond.better-comments", "kevinkyang.auto-comment-blocks", "exodiusstudios.comment-anchors",)
cleanCode=("shardulm94.trailing-spaces", "rubymaniac.vscode-paste-and-indent",)
themes=("unthrottled.doki-theme",)
git=("mhutchie.git-graph")
devops=("ms-kubernetes-tools.vscode-kubernetes-tools", "ms-azuretools.vscode-docker", "ms-vscode-remote.remote-containers")
ai=("smallcloud.codify", "kurusugawa-computer.markdown-copilot", "tabnine.tabnine-vscode",)
securityCode=("sonarsource.sonarlint-vscode",)
liveShare=("ms-vsliveshare.vsliveshare")

UML=("theumletteam.umlet")
bnf=("vallentin.vscode-bnf", "igochkov.vscode-ebnf",)
markdown=("yzhang.markdown-all-in-one", "shd101wyy.markdown-preview-enhanced")

cpp=("ms-vscode.cpptools-themes", "ms-vscode.cpptools-extension-pack", "llvm-vs-code-extensions.vscode-clangd", "ms-vscode.cpptools")
react=("msjsdiag.vscode-react-native",)
golang=("golang.go", "golang.go-nightly",)
rust=("statiolake.vscode-rustfmt", "rust-lang.rust-analyzer",)
python=("ms-python.vscode-pylance", "ms-python.python",)

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