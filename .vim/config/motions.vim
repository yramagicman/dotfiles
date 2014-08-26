"{{{ kill arrow keys
nnoremap <down> <C-d>zz
nnoremap <left> <Nop>
nnoremap <up> <C-u>zz
nnoremap <right> <Nop>
inoremap <right> <Nop>
inoremap <down> <Nop>
inoremap <left> <Nop>
inoremap <up> <Nop>
vnoremap <left> <Nop>
vnoremap <down> <C-d>zz
vnoremap <right> <Nop>
vnoremap <up> <C-u>zz
"}}}
"{{{always center when navigating
noremap j gjzz
noremap k gkzz
noremap G Gzz
noremap { {zz
noremap ( (zz
noremap } }zz
noremap ) )zz
noremap n nzz
noremap N Nzz
vnoremap j jzz
vnoremap k kzz
"}}}
"{{{ jump to ...
noremap <S-l> $
noremap <S-j> Gzz
noremap <S-h> ^
noremap <S-k> ggzz
nnoremap <tab> %
vnoremap <tab> %
"}}}
"{{{ command line movement mappings
cnoremap <C-a>  <Home>
cnoremap <C-b>  <Left>
cnoremap <C-f>  <Right>
cnoremap <C-d>  <Delete>
cnoremap <Esc>b <S-Left>
cnoremap <Esc>f <S-Right>
cnoremap <Esc>d <S-right><Delete>
cnoremap <C-e>  <End>
"}}}
"{{{ Substitute word under cursor globally
nnoremap --r :%s/\<<C-r><C-w>\>//g<Left><Left>
" ask for confirmation
nnoremap -r :%s/\<<C-r><C-w>\>//gc<Left><Left><Left>
"}}}
"{{{ Substitute selection globally
vnoremap --r y<Esc>:%s/<C-r>"//g<Left><Left>
" ask for confirmation
vnoremap -r y<Esc>:%s/<C-r>"//gc<Left><Left><Left>
"}}}
"{{{ find and replace with control f
noremap <C-F> :%s/find/replace/I
inoremap <C-F> <ESC>:%s/find/replace/I
vnoremap <C-F> :s/find/replace/g
"}}}
"{{{ visual block mode is better that visual mode
nnoremap v <c-v>
nnoremap <c-v> v
"}}}
