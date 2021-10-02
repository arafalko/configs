#!/bin/bash
set -e

source ./configure-base.sh

mkdir -p ~/.config/rofi

ln -s "$HERE"/rofi/config.rasi ~/.config/rafi/config.rasi

if [[ $- == *i* ]]
then
  rofi-theme-selector
  # najładniejszy glue_pro_blue
fi

