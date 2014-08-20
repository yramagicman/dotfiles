"{{{line numbering
no <silent> <leader>nn :set nonumber<CR>
no <silent> <leader>an :set number<CR>
no <silent> <leader>rn :set relativenumber!<CR>
"}}}
"{{{ Indenting
"bind \] to indent
nmap <localleader>] >>
vmap <localleader>] >gv
imap <localleader>] <C-O>>>
"bind \[ to outdent
nmap <localleader>[ <<
vmap <localleader>[ <gv
imap <localleader>[ <C-O><<
"}}}
"{{{file navigation shortcuts
nno <silent> <leader>ev :e ~/.vim/config/<CR>
nno <silent> <leader>wr :cd ~/Sites/wordpress/wp-content/themes<CR>:Explore<CR>
nno <silent> <leader>git :cd ~/Gits<CR>:Explore<CR>
nno <silent> <leader>dt :cd ~/Desktop<CR>:Explore<CR>
no <leader>rl <ESC>:source ~/.vimrc<CR>
"}}}
"{{{ Make Vim work logically
" Don't move on *
nnoremap * *<c-o>
"paste in insert mode
ino <leader>p <ESC>pa
"paste from x clipboard
nno <leader><leader>p <ESC>"+p
ino <leader><leader>p <ESC>"+p
vno <leader><leader>p <ESC>"+p
"don't enter insert mode when cutting lines
nno cc cc<ESC>
vno cc cc<ESC>
" delete till the beginning of a line
no <leader>D d0
ino <leader>D <ESC>d0xi
"}}}
"{{{ Formatting, TextMate-style
nno Q gqip
vno Q gq
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
"toggle nerdtree
no <silent><leader>nt <ESC>:Explore<CR>
no <silent><leader>e <ESC>:Explore<CR>
"retab
no <leader>r <ESC>:%retab<CR>
"kill search highlighting
no <leader>sh <ESC>:noh<CR>
no <silent><leader><space> <ESC>:let @/ = ""<CR>
"uppercase words
ino <C-u> <ESC>mzgUiwza
nno <C-u> <ESC>mzgUiwza
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
nno <C-s><C-s> :set spell!<CR>
nno <C-s>a zG
nno <C-s>n ]szo
nno <C-s>p [szo
nno <C-s>s z=
"}}}
"{{{ No... I don't want to record a macro now
"I never use replace mode anyway
nno R q
" there, now q won't do dumb stuff
nno q <NOP>
"}}}
noremap ; :
