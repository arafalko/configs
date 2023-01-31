#!/bin/bash
set -e

source ./configure-base.sh

rmdir --force --recursive ~/.config/xfce4/xfconf
mkdir -p ~/.config/xfce4/xfconf 

ln -s "$HERE"/xfce4/xfconf ~/.config/xfce4/xfconf
