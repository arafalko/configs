#!/bin/bash
set -e

source ./configure-base.sh

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

ln -s "$HERE"/tmux/tmux.conf ~/.tmux.conf
