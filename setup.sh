#!/bin/sh
apt update && apt install -y clang-tidy
cp -r .vim* /root
mkdir -p /root/.config
cp -r .config/nvim /root/.config/
cp -r .config/starship.toml /root/.config/
mkdir -p ~/.local/share/nvim/site/pack/git-plugins/start
git clone --depth 1 https://github.com/dense-analysis/ale.git ~/.local/share/nvim/site/pack/git-plugins/start/ale

echo "stty -ixon" >> ~/.bashrc
echo "export VISUAL=/usr/bin/vim" >> ~/.bashrc
echo 'eval "$(starship init bash)"' >> ~/.bashrc
