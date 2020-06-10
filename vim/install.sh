#!/bin/bash
#Konfiguracja vima

set -e

VIMDIR="$HOME/.vim"
HERE=$(pwd)

INSTALL_YCM=0
if [ ${*^^} = 'YCM' ]; then
    INSTALL_YCM=1
fi

INSTALL_CURRENT_VIM=1
if [ ${*^^} = 'Not-PPA' ]; then
    INSTALL_CURRENT_VIM=0
fi

INSTALL_COC=0
if [ ${*^^} = 'COC' ]; then
    INSTALL_COC=1
    INSTALL_CURRENT_VIM=1
fi

#Instalacja potrzebhych pakietów
INSTALL="vim-gnome"
INSTALL=$INSTALL" git"

if [ $INSTALL_YCM = 1 ]; then
    INSTALL=$INSTALL" build-essential cmake python3-dev" # YouCompleteMe
fi

if [ $INSTALL_COC = 1 ]; then
    INSTALL=$INSTALL" curl "
fi

if [[ $(whoami) = root ]]; then
    if [ $INSTALL_CURRENT_VIM = 1 ]; then
        apt update
        apt install -y software-properties-common
        add-apt-repository -y ppa:jonathonf/vim
    fi
    apt update
    apt install -y $INSTALL
else
    if [ $INSTALL_CURRENT_VIM = 1 ]; then
        sudo apt update
        sudo apt install -y software-properties-common
        sudo add-apt-repository -y ppa:jonathonf/vim
    fi
    sudo apt update
    sudo apt install -y $INSTALL
fi

#Utwórz link symboliczny do .vimrc
mkdir -p $VIMDIR
./build-vimrc.sh
bash -c "cd $HOME; rm .vimrc; ln -s $HERE/vimrc .vimrc;"
if [ $INSTALL_COC = 1 ]; then
    bash -c "cd $HOME; rm $VIMDIR/coc-settings.json; ln -s $HERE/coc-settings.json $VIMDIR/coc-settings.json;"
    yes | curl -sL install-node.now.sh/lts | bash  # nodejs
    curl --compressed -o- -L https://yarnpkg.com/install.sh | bash # yarn
fi

#Używa vundle
#Instaluj tak:
#Miałem jakieś dziwne problemy z tym jak coś fika to zmień plugin na bundle
if [ ! -d "$VIMDIR/plugin/Vundle.vim" ]; then
    git clone https://github.com/VundleVim/Vundle.vim.git "$VIMDIR/plugin/Vundle.vim"
else
    bash -c "cd $VIMDIR/plugin/Vundle.vim; git pull"
fi

#Schemat kolorów Cobalt
#Trzeba zrobić link symboliczny do colors:
bash -c "cd $VIMDIR; rm colors ; ln -s $HERE/colors colors" 

#Pliki Swp nie w folderze z edytowanym plikiem
mkdir -p $VIMDIR/swapfiles
#w vimie :set directory=$HOME/$VIMDIR/swapfiles

#Odpal potem w vimie
#Lub po każdym nowym pluginie :PluginInstall
if [ $INSTALL_YCM = 0 ]; then
    NO_YCM=1
fi

vim -S $HOME/.vimrc -c ":PluginInstall" -c ":qall"

#YouCompleteMe wymaga dodatkowej kompilacji
#Trzeba najpierw zainstalować 'apt install build-essential cmake python3-dev'
#Kompilacja 
if [ $INSTALL_YCM = 1 ]; then
    bash -c "cd $VIMDIR/bundle/youcompleteme;python3 install.py --all"
fi

if [ $INSTALL_COC = 1 ]; then
    source $HOME/.bashrc 
    bash -c "cd $HOME/.vim/bundle/coc.nvim && yarn install --frozen-lockfile"
fi 
