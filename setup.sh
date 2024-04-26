#!/bin/sh
apt update && apt install -y clang-tidy
cp -r /root/volume/Git/dotfiles/.vim* /root
cp -r /root/volume/Git/dotfiles/.config/nvim /root/.config/
mkdir -p ~/.vim/pack/git-plugins/start
git clone --depth 1 https://github.com/dense-analysis/ale.git ~/.vim/pack/git-plugins/start/ale

echo "stty -ixon" >> ~/.bashrc.d/100.bash_prompt.sh
echo "export VISUAL=/usr/bin/vim" >> ~/.bashrc.d/100.bash_prompt.sh
