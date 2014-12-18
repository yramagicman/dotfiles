"mappings.Vim
"{{{ Indenting
"bind \] to indent
nnoremap <localleader>] >>
vnoremap <localleader>] >gv
inoremap <localleader>] <C-O>>>
"bind \[ to outdent
nnoremap <localleader>[ <<
vnoremap <localleader>[ <gv
inoremap <localleader>[ <C-O><<
"}}}
"{{{file navigation shortcuts
nnoremap <silent> <leader>ev :e ~/.vim/config/<CR>
noremap <leader>rl <ESC>:source ~/.vimrc<CR>
"}}}
"{{{ Make Vim work logically
" Don't move on *
nnoremap * *<c-o>
"paste in insert mode
inoremap <leader>p <ESC>pa
"paste from x clipboard
nnoremap -p <ESC>"+p
inoremap -p <ESC>"+p
vnoremap -p "+p
" delete till the beginning of a line
nnoremap <leader>D d0
inoremap <leader>D <ESC>d0xi
"}}}
"{{{ Formatting, TextMate-style
nnoremap Q gqip
vnoremap Q gq
" Reformat line.
nnoremap Ql gqq
"}}}
"{{{ Convenience bindings
" Save a file as root ('W)
nnoremap <c-\> :so $VIMRUNTIME/syntax/hitest.vim<CR>
noremap <leader>W :w !sudo tee % > /dev/null<CR>
"delete blank lines
noremap <localleader>db :g/^$/d<ESC>:let @/ = ""<CR>
" delete duplicate blank lines
noremap <leader>db :%!cat -s<CR>
" toggle word wrap
noremap <silent><leader>w <ESC>:set wrap!<CR>
inoremap <silent><leader>w <ESC>:set wrap!<CR>i
"toggle file explorer
noremap <silent><leader>e <ESC>:FileBeagle<CR>
"retab
noremap <leader>r <ESC>:%retab<CR>
"kill search highlighting
noremap <silent><leader><space> <ESC>:let @/ = ""<CR>
"uppercase words
inoremap <C-u> <ESC>mzgUiwe
nnoremap <C-u> <ESC>mzgUiwe
" Toggle [i]nvisible characters
nnoremap <silent><leader>I :set list!<CR>
" reset color scheme
nnoremap U :syntax sync fromstart<CR>:redraw!<CR>
" make this_style into cammelCase
nnoremap CC 0f_x~
nnoremap <leader>c :%!column -t<CR>
nnoremap <leader>s :source %<CR>
nnoremap <leader>S :source %<CR>
"}}}
"{{{ spelling mappings
nnoremap --s :set spell!<CR>
nnoremap -s zg
nnoremap -d ]szo
nnoremap -a [szo
nnoremap -w 1z=
nnoremap --w z=
"}}}
"{{{ No... I don't want to record a macro now
"I never use replace mode anyway
nnoremap R q
vnoremap R q
" there, now q won't do dumb stuff
nnoremap q <NOP>
vnoremap q <NOP>
"}}}
"{{{ I've needed these mappings forever. Map '; to ; and ": to , also quickfix
" last search
nnoremap  qf :execute 'vimgrep /' .@/.'/g %'<CR>:copen<CR>
nnoremap '; ;
nnoremap ": ,
"}}}
"{{{ insert blank lines in normal mode
nnoremap <leader>O O<ESC>
nnoremap <leader>o o<ESC>
"}}}
"{{{ set buffer, also set foldmethod
nnoremap <silent>-b :set buftype=<CR>
nnoremap <silent>--fm :set foldmethod=marker<CR>
nnoremap <silent>--fi :set foldmethod=indent<CR>
nnoremap <silent>--fs :set foldmethod=syntax<CR>
"}}}
