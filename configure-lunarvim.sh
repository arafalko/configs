#!/bin/bash
set -e

source ./configure-base.sh

LV_BRANCH='release-1.2/neovim-0.8' bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/fc6873809934917b470bff1b072171879899a36b/utils/installer/install.sh)
cd ~/

ln ~/configs/vim/lunarvim/config.lua 
ln ~/configs/vim/lunarvim/ginit.vim 
