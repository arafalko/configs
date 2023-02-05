#!/bin/bash
set -e

source ./configure-base.sh

mkdir -p ~/.config/nvim

curl -sLf https://spacevim.org/install.sh > install.sh 
chmod +x install.sh
./install.sh --no-fonts
rm install.sh

cd ~/

ln -s "$HERE"/vim/spacevim/SpaceVim.d ~/.SpaceVim.d
