#!/bin/bash
set -e

source ./configure-base.sh

rm -rf ~/.config/xfce4/xfconf
mkdir -p ~/.config/xfce4/xfconf 

ln -s "$HERE"/xfce4/xfconf ~/.config/xfce4/xfconf
