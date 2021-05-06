#/bin/bash
set -e

HERE=$(pwd)

#Vim
#install vundle
bash -c "cd ${HERE}/vim; ./build-vimrc.sh"
cd ~
ln -s "$HERE"/vim/vimrc .vimrc 
mkdir -p .vim
cd ~/.vim
ln -s "$HERE"/vim/colors colors
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

#Tmux
cd ~
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
ln -s "$HERE"/tmux/tmux.conf .tmux.conf

#Fish
mkdir -p ~/.config
cd ~/.config
ln -s "$HERE"/fish fish 
curl -L https://get.oh-my.fish | fish
