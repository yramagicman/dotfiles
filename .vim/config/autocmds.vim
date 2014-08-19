" Automatic commands
if has("autocmd")
    " Enable file type detection
    filetype on
    "{{{ Treat .json files as .js
    au BufRead,BufNewFile *.scss set filetype=css
    au BufNewFile,BufRead *.json setfiletype json syntax=javascript
    "}}}
    "{{{ use 2 spaces  for css and related files
    au Bufenter *.scss set tabstop=2
    au Bufenter *.css set tabstop=2
    au Bufenter *.scss set shiftwidth=2
    au Bufenter *.css set shiftwidth=2
    "}}}
    "{{{ fix my fat fingers, change 90 to () in js
    au Bufenter *.js iabbr 90 ()
    au Bufleave *.js iabbr 90 90
    "}}}
    "{{{ automattically add semicolons in css
    au Bufenter *.scss ino : :;<ESC>i
    au Bufenter *.css ino : :;<ESC>i
    au Bufleave *.scss ino : :
    au Bufleave *.css ino : :
    "}}}
    "{{{ open nerdtree when vim opens
    "au Bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
    "au vimenter * if !argc() | NERDTree | endif
    "}}}
    "{{{ fold method marker for vimrc and zshrc
    au Bufenter,BufRead *.vim set foldmethod=marker
    au Bufenter *.zsh set foldmethod=marker
    "}}}
    "{{{ use absolute line numbering in insert mode and relative numbers elsewhere
    au InsertLeave * :set nonumber
    au InsertLeave * :set relativenumber
    au InsertEnter * :set number
    au InsertEnter * :set norelativenumber
    "}}}
    "{{{ tabs to spaces, four spaces per tab
    au Bufenter,BufRead * set tabstop=4
    au Bufenter,BufRead * set smartindent
    au Bufenter,BufRead * set shiftwidth=4
    au Bufenter,BufRead * set expandtab
    "}}}
    "{{{ drupal coding standards
    au Bufenter,BufRead */drupal*/* set tabstop=2
    au Bufenter,BufRead */drupal*/* set smartindent
    au Bufenter,BufRead */drupal*/* set shiftwidth=2
    au Bufenter,BufRead */drupal*/* set expandtab
    au Bufenter,BufRead *.module set filetype=php
    au Bufenter,BufRead *.inc set filetype=php
    au Bufenter,BufRead *.install set filetype=php
    "au BufRead */drupal*/* call IndentGuides()
    "}}}
    "{{{ ratiochristi coding standards
    au Bufenter,BufRead */ratiochristi/* set tabstop=4
    au Bufenter,BufRead */ratiochristi/* set smartindent
    au Bufenter,BufRead */ratiochristi/* set shiftwidth=4
    au Bufenter,BufRead */ratiochristi/* set expandtab
    "}}}
    "{{{ Misc. individual commands that don't merrit their own fold group
    au BufEnter,BufRead mutt* set spell
    autocmd FileType make set noexpandtab
    autocmd BufNewFile,BufRead *.md set filetype=markdown
    " make vim edit cron again
    au BufEnter /private/tmp/crontab.* setl backupcopy=yes
    " always reload files when changed outside vim
    au CursorHold,CursorMovedI,CursorMoved,Bufenter * :checktime
    " save on focus lost
    au FocusLost * :silent! wall
    " leave insert mode on focus lost
    au FocusLost * call feedkeys("\<ESC>")
    " }}}
endif
