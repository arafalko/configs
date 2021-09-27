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
endfunction

function! myspacevim#after() abort
  set wrap
endfunction

