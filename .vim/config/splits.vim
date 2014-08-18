"{{{window navigation & and splits
no <C-l> <C-w>l
no <C-j> <C-w>j
no <C-h> <C-w>h
no <C-k> <C-w>k
ino <C-l> <esc><C-w>li
ino <C-j> <esc><C-w>ji
ino <C-h> <esc><C-w>hi
ino <C-k> <esc><C-w>ki
"splitting
no <leader>sn <esc>:new<CR>
no <leader>sv <esc>:vnew<CR>
"window stuff
set equalalways
no <localleader>= <C-w>=
"}}}
"{{{ put splits in a logical place
set splitbelow
set splitright
" }}}
"{{{
nno <C-t> :tabnew<CR>
nno <C-p> :tabp<CR>
no <S-right> <C-w>>
no <S-up> <C-w>+
no <S-left> <C-w><
no <S-down> <C-w>-
"}}}
