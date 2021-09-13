#!/bin/bash
set -e

source ./configure-base.sh

mkdir ~/.config/awesome 

git clone https://github.com/lcpz/awesome-freedesktop ~/.config/awesome/freedesktop
git clone https://github.com/lcpz/lain ~/.config/awesome/lain
git clone https://github.com/streetturtle/awesome-wm-widgets.git ~/.config/awesome/awesome-wm-widgets

ln -s "$HERE"/awesome/rc.lua ~/.config/awesome/rc.lua
ln -s "$HERE"/awesome/themes ~/.config/awesome/themes
