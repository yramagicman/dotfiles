"{{{ Automatic commands
if has("autocmd")
    " Enable file type detection
    filetype on
    " Treat .json files as .js
    au BufRead,BufNewFile *.scss set filetype=css
    au BufNewFile,BufRead *.json setfiletype json syntax=javascript
    " use 2 spaces  for css and related files
    au Bufenter *.scss set tabstop=2
    au Bufenter *.css set tabstop=2
    au Bufenter *.scss set shiftwidth=2
    au Bufenter *.css set shiftwidth=2
    au Bufenter *.js iabbr 90 ()
    au Bufleave *.js iabbr 90 90
    " automattically add semicolons in css
    au Bufenter *.scss ino : :;<esc>i
    au Bufenter *.css ino : :;<esc>i
    " save on focus lost
    au FocusLost * :silent! wall
    " leave insert mode on focus lost
    au FocusLost * call feedkeys("\<ESC>")
    " open nerdtree when vim opens
    au Bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
    au vimenter * if !argc() | NERDTree | endif
    " fold method marker for vimrc and zshrc
    au Bufenter .vimrc set foldmethod=marker
    au Bufenter *.zsh set foldmethod=marker
    " always reload files when changed outside vim
    au CursorHold,CursorMovedI,CursorMoved,Bufenter * :checktime
    " use absolute line numbering in insert mode and relative numbers elsewhere
    au InsertEnter * :set nu
    au InsertLeave * :set rnu

endif
"}}}