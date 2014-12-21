" autocmds.vim
" Automatic commands
if has("autocmd")
    " Enable file type detection
    augroup general
        autocmd!
        "{{{ show cursorline on current buffer only
        autocmd BufEnter * set cursorline
        autocmd BufLeave * set nocursorline
        "}}}
        "{{{ auto-reload vim files, auto resize splits on window resize
        autocmd BufWritePost $HOME/.vim/config/* :source %
        autocmd BufWritePost $HOME/.vim/config/* :set foldmethod=marker
        au VimResized * exe "normal! \<c-w>="
        autocmd VimEnter * set vb t_vb=
        "}}}
        "{{{ fold method marker for specific files
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
        autocmd Bufenter,BufRead */drupal*/* set foldmethod=marker
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
        "{{{ Misc. individual commands that don't merit their own fold group
        autocmd!
        autocmd FileType mail set spell
        autocmd FileType make set noexpandtab
        autocmd FileType snippets set noexpandtab
        autocmd BufRead /usr/local/* !ring
        autocmd BufNewFile,BufRead *.md set filetype=markdown
        autocmd BufEnter *.md source ~/.vim/colors/muttclone.vim
        " make Vim edit cron again
        autocmd BufEnter /private/tmp/crontab.* setl backupcopy=yes
        " always reload files when changed outside Vim
        autocmd CursorHold,CursorMovedI,CursorMoved,Bufenter * :checktime
        " save on focus lost
        autocmd FocusLost,BufLeave * :silent! wall
        " leave insert mode on focus lost
        autocmd FocusLost,BufLeave * call feedkeys("\<ESC>")
        " }}}
    augroup end
endif
