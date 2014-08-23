"{{{ folding
"{{{Open folds on enter
nno <CR> za
nno <leader><CR> zO
"}}}
"{{{close all folds
nno <localleader><localleader><CR> <ESC>gg0vG$zC<ESC>
ino <localleader><localleader><CR> <ESC>gg0vG$zC<ESC>
vno <localleader><localleader><CR> <ESC>gg0vG$zC<ESC>
"}}}
"{{{open all folds
nno <leader><leader><CR> <ESC>zR<ESC>
ino <leader><leader><CR> <ESC>zR<ESC>
vno <leader><leader><CR> <ESC>zR<ESC>
"}}}
"folding options
set foldmethod=indent
set foldcolumn=1
"Close folds locally
nno <localleader><CR> zC
"}}}
"{{{ find and replace with control f
noremap <C-F> :%s/find/replace/I
inoremap <C-F> <ESC>:%s/find/replace/I
vnoremap <C-F> :s/find/replace/g
" }}}
" }}}
