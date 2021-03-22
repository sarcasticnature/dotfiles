#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
NC='\033[0m'

echo -e "\nComparing dotfiles in ${GREEN}$PWD${NC} and ${GREEN}$HOME ${NC}"
echo -e "${RED}Note: ${NC}only differing files will be listed\n"

echo -e "${YELLOW}Bash:${NC}"
diff -q --color=always $PWD/.bashrc $HOME

echo -e "${YELLOW}Zsh:${NC}"
diff -q $PWD/.zshrc $HOME

echo -e "${YELLOW}Tmux:${NC}"
diff -q $PWD/.tmux.conf $HOME
#diff -qr --exclude='*.txt' --exclude='.git' $PWD/.tmux $HOME/.tmux
diff -qr --exclude={'*.txt','.git',"last"} $PWD/.tmux $HOME/.tmux

echo -e "${YELLOW}Vim:${NC}"
diff -q $PWD/.vimrc $HOME
diff -qr --exclude='.git' $PWD/.vim $HOME/.vim 

