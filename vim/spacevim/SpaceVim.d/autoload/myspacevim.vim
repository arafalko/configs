function! myspacevim#before() abort
  let g:spacevim_enable_vimfiler_welcome = 0
  set ignorecase
  set smartcase
  inoremap <A-j> <C-N>
  inoremap <A-k> <C-P>
  cnoremap <A-j> <C-N>
  cnoremap <A-k> <C-P>
  set splitright
  set splitbelow
  nnoremap <c-j> <c-w>j
  nnoremap <c-k> <c-w>k
  nnoremap <c-h> <c-w>h
  nnoremap <c-l> <c-w>l
  inoremap ii <ESC>
  set expandtab
  set tabstop=4
  set shiftwidth=4
  set autoindent
  set wildmenu
  set wildmode=list:longest,full
  set wildignorecase
  set hlsearch
  set incsearch
  set showcmd
  set showmatch
  set autowrite
  set hidden
  set autoread
  set cursorline
endfunction

function! myspacevim#after() abort
  set wrap
endfunction

