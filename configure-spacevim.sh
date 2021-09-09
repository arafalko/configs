#!/bin/bash
set -e

source ./configure-base.sh

mkdir -p ~/.config/nvim

curl -sLf https://spacevim.org/install.sh | bash

cd ~/

ln -s "$HERE"/vim/spacevim/SpaceVim.d ~/.SpaceVim.d
