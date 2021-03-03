set encoding=utf-8
set number relativenumber
set mouse=a
set timeoutlen=1000
set expandtab
set tabstop=4
set shiftwidth=4
set autoindent
set laststatus=2
set wildmenu
set wildmode=list:longest,full
set wildignorecase
set hlsearch
set incsearch
set showcmd
set showmatch
set ignorecase
set smartcase
set autowrite
set hidden
set autoread
set splitright

"Autocomplete
set omnifunc=syntaxcomplete#Complete
set completeopt=longest,menuone
noremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

nmap <leader>c :set cursorline!<Bar>set cursorcolumn!<CR>
nmap <leader>f :CtrlP<CR>
nmap <leader>m :MRU<CR>
nmap <leader>vc :VimuxPromptCommand<cr>
nmap <leader>vp :VimuxRunLastCommand<cr>

nnoremap <leader>t :NERDTreeToggle<CR>   
nnoremap <leader><C-t> :NERDTreeFind<CR>

let g:solarized_termcolors=256
set t_Co=256
syntax enable
if has('gui_running')
    set background=light
else
    set background=dark
endif
"colorscheme solarized
colorscheme cobalt
"colorscheme desert

" Zapisywanie do plików jako root
cmap w!! w !sudo tee > /dev/null %

" Python you complete me
"let g:ycm_autoclose_preview_window_after_completion=1
"map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"nmap <F2> :w<CR>

" Matchit
"packadd! matchit
runtime! macros/matchit.vim

"Swap file w oddzielnym katalogu
silent !mkdir -p $HOME/.vim/swapfiles
set directory=$HOME/.vim/swapfiles

set cmdheight=1

let g:lightline = {
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ], ['readonly', 'absolutepath', 'modified' ] ],
    \   }
    \}

imap jk <ESC>
imap kj <ESC>

" Szukaj rekurencyjnie findem
set path+=**

