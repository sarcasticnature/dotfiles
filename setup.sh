#!/bin/sh
#apt update && apt install -y clang-tidy
cp -r .vim* $HOME
mkdir -p $HOME/.config
cp -r .config/nvim $HOME/.config/
cp -r .config/starship.toml $HOME/.config/
mkdir -p ~/.local/share/nvim/site/pack/git-plugins/start
git clone --depth 1 https://github.com/dense-analysis/ale.git ~/.local/share/nvim/site/pack/git-plugins/start/ale

#echo "stty -ixon" >> ~/.bashrc
echo "export VISUAL=/usr/bin/vim" >> ~/.bashrc
echo 'eval "$(starship init bash)"' >> ~/.bashrc
