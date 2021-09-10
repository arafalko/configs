function! myspacevim#before() abort
  let g:spacevim_enable_vimfiler_welcome = 0
  set ignorecase
  set smartcase
  inoremap <A-j> <C-N>
  inoremap <A-k> <C-P>
endfunction

function! myspacevim#after() abort
  set wrap 
endfunction
