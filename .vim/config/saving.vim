"{{{Saving and closing
"control whitespace and tabs on save
"nno <leader>ss :%retab<CR>:call StripWhitespace()<CR>:w<CR>
"ino <leader>ss <ESC>:%retab<CR>:call StripWhitespace()<CR>:w<CR>
"vno <leader>ss <ESC>:%retab<CR>:call StripWhitespace()<CR>:w<CR>
"don't retab. usefull for some filetypes
nno <silent><leader>ss :call StripWhitespace()<CR>:w<CR>
ino <silent><leader>ss <ESC>:call StripWhitespace()<CR>:w<CR>
vno <silent><leader>ss <ESC>:call StripWhitespace()<CR>:w<CR>
"save and close
nno <silent><leader>ww :<CR>:call StripWhitespace()<CR>:w<CR>:close<CR>
ino <silent><leader>ww <ESC>:<CR>:call StripWhitespace()<CR>:w<CR>:close<CR>
vno <silent><leader>ww <ESC>:<CR>:call StripWhitespace()<CR>:w<CR>:close<CR>
"close but don't save
nno <leader>cl <ESC>:close!
ino <leader>cl <ESC>:close!
vno <leader>cl <ESC>:close!
"save and quit
nno <silent><leader>wq :call StripWhitespace()<cr>:wall<cr>:qall<CR>
ino <silent><leader>wq <ESC>:call StripWhitespace()<cr>:wall<cr>:qall<CR>
vno <silent><leader>wq <ESC>:call StripWhitespace()<cr>:wall<cr>:qall<CR>

"ruthelessly kill vim without a care in the world for what breaks
" quit without saving
nno <leader>\ :q!
ino <leader>\ <ESC>:q!
vno <leader>\ <ESC>:q!
"stay in or enter insert mode after current character on save
ino <C-s> <ESC>:call StripWhitespace()<CR>:w<CR>a
vno <C-s> <ESC>:call StripWhitespace()<CR>:w<CR>a
nno <C-s> <ESC>:call StripWhitespace()<CR>:w<CR>a

"nno <C-w> :close<CR>
nno <C-q> :q<CR>
nno <silent><leader>q :q<CR>
ino <silent><leader>q :q<CR>
vno <silent><leader>q :q<CR>
" }}}
