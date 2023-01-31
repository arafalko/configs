set encoding=utf-8
set number relativenumber
set mouse=a
set timeoutlen=1000
if has('linux')
    set timeout
    set ttimeout
else
    set notimeout
    set nottimeout
endif
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
set splitbelow
set cursorline

"Autocomplete
set omnifunc=syntaxcomplete#Complete
set completeopt=longest,menuone
"inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

let mapleader = " "

nnoremap <leader>c :set cursorcolumn!<CR>
nnoremap <leader>f :CtrlP<CR>
nnoremap <leader>m :MRU<CR>
nnoremap <leader>vc :VimuxPromptCommand<cr>
nnoremap <leader>vp :VimuxRunLastCommand<cr>

nnoremap <leader>t :NERDTreeToggle<CR>   
nnoremap <leader><C-t> :NERDTreeFind<CR>

"Nawigacja po oknach ctrl = hjkl
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

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

inoremap jk <ESC>
inoremap kj <ESC>
inoremap jj <ESC>
inoremap ii <ESC>

noremap <Up> <NOP>
noremap <Right> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>

"set <M-A>=<press Ctrl-V><press Meta-A> 
"imap <press ctrl-v><press Esc>a <M-A>
inoremap <M-j> <C-N>
set <M-j>=j 
inoremap j <M-j>
inoremap <M-k> <C-P>
set <M-k>=k 
inoremap k <M-k>

" Szukaj rekurencyjnie findem
set path+=**

