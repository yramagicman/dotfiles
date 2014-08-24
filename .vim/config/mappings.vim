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
nnoremap <leader><leader>p <ESC>"+p
inoremap <leader><leader>p <ESC>"+p
vnoremap <leader><leader>p <ESC>"+p
"don't enter insert mode when cutting lines
nnoremap cc cc<ESC>
vnoremap cc cc<ESC>
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
noremap <leader>W :w !sudo tee % > /dev/null<CR>
"delete blank lines
noremap <localleader>db :g/^$/d<ESC>:let @/ = ""<CR>
" delete duplicate blank lines
noremap <leader>db :%!cat -s<CR>
" toggle word wrap
noremap <silent><leader>w <ESC>:set wrap!<CR>
inoremap <silent><leader>w <ESC>:set wrap!<CR>i
"toggle file explorer
noremap <silent><leader>e <ESC>:Explore<CR>
"retab
noremap <leader>r <ESC>:%retab<CR>
"kill search highlighting
noremap <silent><leader><space> <ESC>:let @/ = ""<CR>
"uppercase words
inoremap <C-u> <ESC>mzgUiw
nnoremap <C-u> <ESC>mzgUiw
" Toggle [i]nvisible characters
nnoremap <silent><leader>i :set list!<CR>
" reset color scheme
nnoremap U :syntax sync fromstart<CR>:redraw!<CR>
" make this_style into cammelCase
nnoremap CC 0f_x~
inoremap <C-c> <ESC>I//
vnoremap <C-c> I//
nnoremap <leader>c :%!column -t<CR>
nnoremap <leader>s :source %<CR>
"}}}
"{{{ spelling mappings
nnoremap -s :set spell!<CR>
nnoremap -a zG
nnoremap -] ]szo
nnoremap -[ [szo
nnoremap -w z=
"}}}
"{{{ No... I don't want to record a macro now
"I never use replace mode anyway
nnoremap R q
" there, now q won't do dumb stuff
nnoremap q <NOP>
"}}}
"{{{ I've needed these mappings forever. Map '; to ; and ": to , also quickfix
" last search
nnoremap  qs :execute 'vimgrep /' .@/.'/g %'<CR>:copen<CR>
nnoremap '; ;
nnoremap ": ,
"}}}
