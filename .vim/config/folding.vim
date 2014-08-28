"folding.vim"
"{{{Open folds on enter
nnoremap <CR> za
nnoremap <leader><CR> zO
nnoremap <Leader>z zMzvzz
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
"{{{ folding options
set foldmethod=indent
set foldcolumn=2
"Close folds locally
nnoremap <localleader><CR> zC
"}}}
