"{{{ control whitespace and tabs on save
nnoremap <leader>ss :call Save()<CR>
inoremap <leader>ss <ESC>:call Save()<CR>
vnoremap <leader>ss <ESC>:call Save()<CR>
"}}}
"{{{ save but don't retab
nnoremap <leader><leader>ss :call SaveNoRt()<CR>
inoremap <leader><leader>ss <ESC>:call SaveNoRt()<CR>
vnoremap <leader><leader>ss <ESC>:call SaveNoRt()<CR>
"}}}
"{{{ save and close
nnoremap <silent><leader>ww :call Save()<CR>:close<CR>
inoremap <silent><leader>ww <ESC>:call Save()<CR>:close<CR>
vnoremap <silent><leader>ww <ESC>:call Save()<CR>:close<CR>
"}}}
"{{{ close but don't save
nnoremap <leader>cl <ESC>:close!
inoremap <leader>cl <ESC>:close!
vnoremap <leader>cl <ESC>:close!
"}}}
"{{{ save and quit
nnoremap <silent><leader>wq :call Save()<CR>:qall<CR>
inoremap <silent><leader>wq <ESC>:call Save()<CR>:qall<CR>
vnoremap <silent><leader>wq <ESC>:call Save()<CR>:qall<CR>
"}}}
"{{{ quit without saving
nnoremap <leader>Q :q!
inoremap <leader>Q <ESC>:q!
vnoremap <leader>Q <ESC>:q!
"}}}
"{{{ nice quit
nnoremap <silent><leader>q :q<CR>
inoremap <silent><leader>q :q<CR>
vnoremap <silent><leader>q :q<CR>
"}}}
"{{{ sanity mappings
nnoremap qq :wq
nnoremap qw :wq
nnoremap cl :close<CR>
inoremap q q
inoremap qq qq
"}}}
