#!/bin/bash
set -e

source ./configure-base.sh

ln -s "$HERE"/fish ~/.config/fish

# oh my fish
curl -L https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install > installer.fish
fish installer.fish --yes --noninteractive
rm installer.fish
fish -c "omf install fzf robbyrussell z"

# fisher
curl -sL https://git.io/fisher > fisher.fish
fish -c "curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher"
rm fisher.fish
fish -c "fisher update"
