"{{{window navigation & and splits
noremap <C-l> <C-w>l
noremap <C-j> <C-w>j
noremap <C-h> <C-w>h
noremap <C-k> <C-w>k
inoremap <C-l> <ESC><C-w>li
inoremap <C-j> <ESC><C-w>ji
inoremap <C-h> <ESC><C-w>hi
inoremap <C-k> <ESC><C-w>ki
"splitting
noremap <leader>sn <ESC>:new<CR>
noremap <leader>sv <ESC>:vnew<CR>
"window stuff
set equalalways
noremap <localleader>= <C-w>=
"}}}
"{{{ put splits in a logical place
set splitbelow
set splitright
" }}}
"{{{ tab mappings
nnoremap <C-t> :tabnew<CR>
nnoremap <C-p> :tabp<CR>
nnoremap <C-d> <C-w>>
nnoremap <C-w> <C-w>+
nnoremap <C-a> <C-w><
nnoremap <C-s> <C-w>-
"}}}
