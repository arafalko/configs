#!/bin/bash
set -e

source ./configure-base.sh

mkdir -p ~/.config/rofi

if [[ $- == *i* ]]
then
  rofi-theme-selector
fi

