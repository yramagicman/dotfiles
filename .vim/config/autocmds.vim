" Automatic commands
if has("autocmd")
    " Enable file type detection
    filetype on
    augroup general
        autocmd!
        "{{{ fold method marker for vimrc and zshrc
        autocmd FileType vim setlocal foldmethod=marker
        autocmd FileType zsh setlocal foldmethod=marker
        autocmd FileType lua setlocal foldmethod=marker
        "}}}
        "{{{ use absolute line numbering in insert mode and relative numbers elsewhere
        autocmd InsertLeave * :set nonumber
        autocmd InsertLeave * :set relativenumber
        autocmd InsertEnter * :set number
        autocmd InsertEnter * :set norelativenumber
        "}}}
    augroup end
    augroup js
        "{{{ Treat .json files as .js
        autocmd!
        autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
        "}}}
        "{{{ fix my fat fingers, change 90 to () in js
        autocmd Bufenter *.js iabbr 90 ()
        autocmd Bufleave *.js iabbr 90 90
        "}}}
    augroup end
    augroup css
        "{{{ filetype stuff
        autocmd!
        autocmd BufRead,BufNewFile *.scss set filetype=css
        autocmd BufRead,BufNewFile *.css set filetype=css
        "}}}
        "{{{ use 2 spaces  for css and related files
        autocmd FileType css setlocal tabstop=2
        autocmd FileType css setlocal shiftwidth=2
        "}}}
        "{{{ automattically add semicolons in css
        autocmd FileType css inoremap <buffer> : :;<ESC>i
        "}}}
    augroup end
    augroup coding
        autocmd!
        "{{{ drupal coding standards
        autocmd Bufenter,BufRead */drupal*/* set tabstop=2
        autocmd Bufenter,BufRead */drupal*/* set smartindent
        autocmd Bufenter,BufRead */drupal*/* set shiftwidth=2
        autocmd Bufenter,BufRead */drupal*/* set expandtab
        autocmd Bufenter,BufRead *.module set filetype=php
        autocmd Bufenter,BufRead *.inc set filetype=php
        autocmd Bufenter,BufRead *.install set filetype=php
        "autocmd BufRead */drupal*/* call IndentGuides()
        "}}}
        "{{{ ratiochristi coding standards
        autocmd Bufenter,BufRead */ratiochristi/* set tabstop=4
        autocmd Bufenter,BufRead */ratiochristi/* set smartindent
        autocmd Bufenter,BufRead */ratiochristi/* set shiftwidth=4
        autocmd Bufenter,BufRead */ratiochristi/* set expandtab
        "}}}
    augroup end
    augroup extra
        "{{{ Misc. individual commands that don't merrit their own fold group
        autocmd FileType mail set spell
        autocmd FileType make set noexpandtab
        autocmd FileType snippets set noexpandtab
        autocmd BufRead /usr/local/MERGE_MSG !ring
        autocmd BufNewFile,BufRead *.md set filetype=markdown
        " make vim edit cron again
        autocmd BufEnter /private/tmp/crontab.* setl backupcopy=yes
        " always reload files when changed outside vim
        autocmd CursorHold,CursorMovedI,CursorMoved,Bufenter * :checktime
        " save on focus lost
        autocmd FocusLost,BufLeave * :silent! wall
        " leave insert mode on focus lost
        autocmd FocusLost,BufLeave * call feedkeys("\<ESC>")
        " }}}
    augroup end
endif
