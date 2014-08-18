"{{{ Saving and closing
"control whitespace and tabs on save
nno <leader>ss :call Save()<CR>
ino <leader>ss <esc>:call Save()<CR>
vno <leader>ss <esc>:call Save()<CR>
"save but don't retab
nno <leader><leader>ss :call SaveNoRt()<CR>
ino <leader><leader>ss <esc>:call SaveNoRt()<CR>
vno <leader><leader>ss <esc>:call SaveNoRt()<CR>

"save and close
nno <silent><leader>ww :call Save()<CR>:close<CR>
ino <silent><leader>ww <esc>:call Save()<CR>:close<CR>
vno <silent><leader>ww <esc>:call Save()<CR>:close<CR>
"close but don't save
nno <leader>cl <esc>:close!
ino <leader>cl <esc>:close!
vno <leader>cl <esc>:close!
"save and quit
nno <silent><leader>wq :call Save()<CR>:qall<CR>
ino <silent><leader>wq <esc>:call Save()<CR>:qall<CR>
vno <silent><leader>wq <esc>:call Save()<CR>:qall<CR>

"ruthelessly kill vim without a care in the world for what breaks
" quit without saving
nno <leader><esc> :q!
ino <leader><esc> <ESC>:q!
vno <leader><esc> <ESC>:q!
""stay in or enter insert mode after current character on save
ino <C-s> <esc>:call Save()<CR>a
vno <C-s> <esc>:call Save()<CR>a
nno <C-s> <esc>:call Save()<CR>a

nno <C-q> :q<CR>
nno <C-w> :close<CR>
nno <silent><leader>q :q<CR>
ino <silent><leader>q :q<CR>
vno <silent><leader>q :q<CR>

nno qq :wq
nno qw :wq
nno cl :close
ino q q
ino qq qq
" }}}
