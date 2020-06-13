set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/plugin/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'itchyny/lightline.vim'

Plugin 'tpope/vim-surround'

Plugin 'mru.vim'

Plugin 'scrooloose/nerdcommenter'

Plugin 'airblade/vim-gitgutter'

"Plugin 'terryma/vim-multiple-cursors'

Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'altercation/vim-colors-solarized'

"Plugin 'valloric/youcompleteme'
Plugin 'neoclide/coc.nvim'

Plugin 'dbext.vim'

Plugin 'tpope/vim-fugitive'

Plugin 'ludovicchabant/vim-gutentags'

Bundle 'omnisharp/omnisharp-vim' 

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this lineset shell=bash

