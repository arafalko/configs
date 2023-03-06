#!/bin/bash
set -e

source ./configure-base.sh

rm -rf ~/.config/picom

ln -s "$HERE"/picom ~/.config/picom
