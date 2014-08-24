"{{{Open folds on enter
nnoremap <CR> za
nnoremap <leader><CR> zO
"}}}
"{{{close all folds
nnoremap <localleader><localleader><CR> <ESC>gg0vG$zC<ESC>
inoremap <localleader><localleader><CR> <ESC>gg0vG$zC<ESC>
vnoremap <localleader><localleader><CR> <ESC>gg0vG$zC<ESC>
"}}}
"{{{open all folds
nnoremap <leader><leader><CR> <ESC>zR<ESC>
inoremap <leader><leader><CR> <ESC>zR<ESC>
vnoremap <leader><leader><CR> <ESC>zR<ESC>
"}}}
"{{{folding options
set foldmethod=indent
set foldcolumn=2
"Close folds locally
nnoremap <localleader><CR> zC
"}}}
"{{{ find and replace with control f
noremap <C-F> :%s/find/replace/I
inoremap <C-F> <ESC>:%s/find/replace/I
vnoremap <C-F> :s/find/replace/g
" }}}
