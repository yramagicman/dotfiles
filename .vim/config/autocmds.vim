" Automatic commands
if has("autocmd")
    " Enable file type detection
    filetype on
    augroup general
        autocmd!
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
    augroup end
    augroup js
    "{{{ Treat .json files as .js
        autocmd!
        au BufNewFile,BufRead *.json setfiletype json syntax=javascript
    "}}}
    "{{{ fix my fat fingers, change 90 to () in js
        au Bufenter *.js iabbr 90 ()
        au Bufleave *.js iabbr 90 90
    "}}}
    augroup end
    augroup css
        autocmd!
        au BufRead,BufNewFile *.scss set filetype=css
        au BufRead,BufNewFile *.css set filetype=css
    "{{{ use 2 spaces  for css and related files
        au FileType css setlocal tabstop=2
        au FileType css setlocal shiftwidth=2
    "}}}
    "{{{ automattically add semicolons in css
        au FileType css ino <buffer> : :;<ESC>i
    "}}}
    augroup end
    augroup coding
        autocmd!
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
    augroup end
    "{{{ Misc. individual commands that don't merrit their own fold group
    au FileType mail set spell
    autocmd FileType make set noexpandtab
    autocmd BufNewFile,BufRead *.md set filetype=markdown
    " make vim edit cron again
    au BufEnter /private/tmp/crontab.* setl backupcopy=yes
    " always reload files when changed outside vim
    au CursorHold,CursorMovedI,CursorMoved,Bufenter * :checktime
    " save on focus lost
    au FocusLost,BufLeave * :silent! wall
    " leave insert mode on focus lost
    au FocusLost,BufLeave * call feedkeys("\<ESC>")
    " }}}
endif
