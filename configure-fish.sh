#!/bin/bash
set -e

source ./configure-base.sh

ln -s "$HERE"/fish ~/.config/

curl -L https://get.oh-my.fish > installer.fish
fish installer.fish --yes --noninteractive
rm installer.fish
fish -c "omf install fzf robbyrussell z"
