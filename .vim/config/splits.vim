"{{{window navigation & and splits
no <C-l> <C-w>l
no <C-j> <C-w>j
no <C-h> <C-w>h
no <C-k> <C-w>k
ino <C-l> <ESC><C-w>li
ino <C-j> <ESC><C-w>ji
ino <C-h> <ESC><C-w>hi
ino <C-k> <ESC><C-w>ki
"splitting
no <leader>sn <ESC>:new<CR>
no <leader>sv <ESC>:vnew<CR>
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
