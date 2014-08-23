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
nno <silent> <leader>ev :e ~/.vim/config/<CR>
no <leader>rl <ESC>:source ~/.vimrc<CR>
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
nno Ql gqq
"}}}
"{{{ Convenience bindings
" Save a file as root ('W)
no <leader>W :w !sudo tee % > /dev/null<CR>
"delete blank lines
no <localleader>db :g/^$/d<ESC>:let @/ = ""<CR>
" delete duplicate blank lines
no <leader>db :%!cat -s<CR>
" toggle word wrap
no <silent><leader>w <ESC>:set wrap!<CR>
ino <silent><leader>w <ESC>:set wrap!<CR>i
"toggle file explorer
no <silent><leader>e <ESC>:Explore<CR>
"retab
no <leader>r <ESC>:%retab<CR>
"kill search highlighting
no <silent><leader><space> <ESC>:let @/ = ""<CR>
"uppercase words
ino <C-u> <ESC>mzgUiw
nno <C-u> <ESC>mzgUiw
" Toggle [i]nvisible characters
nno <silent><leader>i :set list!<CR>
" reset color scheme
nno U :syntax sync fromstart<CR>:redraw!<CR>
" make this_style into cammelCase
nno CC 0f_x~
ino <C-c> <ESC>I//
vno <C-c> I//
nno <leader>c :%!column -t<CR>
nno <leader>s :source %<CR>
"}}}
"{{{ spelling mappings
nno <C-a>s :set spell!<CR>
nno <C-a>a zG
nno <C-a>n ]szo
nno <C-a>p [szo
nno <C-a>w z=
"}}}
"{{{ No... I don't want to record a macro now
"I never use replace mode anyway
nno R q
" there, now q won't do dumb stuff
nno q <NOP>
"}}}
