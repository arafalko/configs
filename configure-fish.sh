#!/bin/bash
set -e

source ./configure-base.sh

ln -s "$HERE"/fish ~/.config/

curl -L https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install > installer.fish
fish installer.fish --yes --noninteractive
rm installer.fish
fish -c "omf install fzf robbyrussell z"
