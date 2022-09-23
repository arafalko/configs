#!/bin/bash
set -e

source ./configure-base.sh

git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.emacs.d
~/.emacs.d/bin/doom install --force

ln -s "$HERE"/emacs/doom/doom.d ~/.doom.d
