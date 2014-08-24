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
"{{{ buffer management <c-z>
nnoremap <c-z> <NOP>
nnoremap <c-z><c-z> :suspend<CR>
"{{{ next buffer n
nnoremap <C-z>n :bn<CR>
vnoremap <C-z>n <ESC>:bn<CR>
inoremap <C-z>n <ESC>:bn<CR>
"}}}
"{{{ previous buffer p
nnoremap <C-z>p :bp<CR>
vnoremap <C-z>p <ESC>:bp<CR>
inoremap <C-z>p <ESC>:bp<CR>
"}}}
"{{{ list buffers l
nnoremap <c-z>l :ls<CR>
vnoremap <c-z>l <ESC>:ls<CR>
inoremap <c-z>l <ESC>:ls<CR>
"}}}
"{{{ show all buffers a
nnoremap <c-z>a :ls!<CR>
vnoremap <c-z>a <ESC>:ls!<CR>
inoremap <c-z>a <ESC>:ls!<CR>
"}}}
"{{{ jump to a specific buffer b
nnoremap <c-z>b :ls<CR>:buffer<space>
vnoremap <c-z>b <ESC>:ls<CR>:buffer<space>
inoremap <c-z>b <ESC>:ls<CR>:buffer<space>
"}}}
"{{{ delete buffer d
nnoremap <c-z>d :ls!<CR>:bdelete<space>
vnoremap <c-z>d <ESC>:ls!<CR>:bdelete<space>
inoremap <c-z>d <ESC>:ls!<CR>:bdelete<space>
"}}}
"{{{ unload buffer u
nnoremap <c-z>u :ls!<CR>:bunload<space>
vnoremap <c-z>u <ESC>:ls!<CR>:bunload<space>
inoremap <c-z>u <ESC>:ls!<CR>:bunload<space>
"}}}
"{{{ wipe out buffer w
nnoremap <c-z>w :ls!<CR>:bwipeout<space>
vnoremap <c-z>w <ESC>:ls!<CR>:bwipeout<space>
inoremap <c-z>w <ESC>:ls!<CR>:bwipeout<space>
"}}}
"{{{ unload current buffer k
nnoremap <c-z>k :bunload %<CR>
vnoremap <c-z>k <ESC>:bunload %<CR>
inoremap <c-z>k <ESC>:bunload %<CR>
"}}}
"{{{ open all buffers vertically
nnoremap <c-z>v :vert sball<CR>
vnoremap <c-z>v <ESC>:vert sball<CR>
inoremap <c-z>v <ESC>:vert sball<CR>
"}}}"
"{{{ open all buffers horizontally
nnoremap <c-z>h :sball<CR>
vnoremap <c-z>h <ESC>:sball<CR>
inoremap <c-z>h <ESC>:sball<CR>
"}}}
"}}}
