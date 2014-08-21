"{{{ Saving and closing
"control whitespace and tabs on save
nno <leader>ss :call Save()<CR>
ino <leader>ss <ESC>:call Save()<CR>
vno <leader>ss <ESC>:call Save()<CR>
"save but don't retab
nno <leader><leader>ss :call SaveNoRt()<CR>
ino <leader><leader>ss <ESC>:call SaveNoRt()<CR>
vno <leader><leader>ss <ESC>:call SaveNoRt()<CR>

"save and close
nno <silent><leader>ww :call Save()<CR>:close<CR>
ino <silent><leader>ww <ESC>:call Save()<CR>:close<CR>
vno <silent><leader>ww <ESC>:call Save()<CR>:close<CR>
"close but don't save
nno <leader>cl <ESC>:close!
ino <leader>cl <ESC>:close!
vno <leader>cl <ESC>:close!
"save and quit
nno <silent><leader>wq :call Save()<CR>:qall<CR>
ino <silent><leader>wq <ESC>:call Save()<CR>:qall<CR>
vno <silent><leader>wq <ESC>:call Save()<CR>:qall<CR>

"ruthelessly kill vim without a care in the world for what breaks
" quit without saving
nno <leader><ESC> :q!
ino <leader><ESC> <ESC>:q!
vno <leader><ESC> <ESC>:q!
""stay in or enter insert mode after current character on save
""ino <C-s> <ESC>:call Save()<CR>a
""vno <C-s> <ESC>:call Save()<CR>a
""nno <C-s> <ESC>:call Save()<CR>a

nno <C-q> :q<CR>
""nno <C-w> :close<CR>
nno <silent><leader>q :q<CR>
ino <silent><leader>q :q<CR>
vno <silent><leader>q :q<CR>

nno qq :wq
nno qw :wq
nno cl :close<CR>
ino q q
ino qq qq
" }}}
