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
nno <silent> <leader>ev :e ~/.vimrc<CR>
nno <silent> <leader>wr :cd ~/Sites/wordpress/wp-content/themes<CR>:NERDTreeToggle<CR>
nno <silent> <leader>git :cd ~/Gits<CR>:NERDTreeToggle<CR>
nno <silent> <leader>dt :cd ~/Desktop<CR>:NERDTreeToggle<CR>
no <leader>rl <ESC>:source ~/.vimrc<CR>
"}}}
"{{{ Make vim work logically
" Don't move on *
nnoremap * *<c-o>
"don't enter insert mode when adding blank lines
no <leader>b o<ESC>
no <leader>B O<ESC>
"paste in insert mode
ino <leader>p <ESC>pa
"don't enter insert mode when cutting lines
nno cc cc<ESC>
vno cc cc<ESC>
" delete till the beginnning of a line
no <leader>D d0
ino <leader>D <esc>d0xi
"no dw df<space>
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
no <leader>db :g/^$/d<ESC>:let @/ = ""<CR>
" toggle word wrap
no <silent><leader>w <ESC>:set wrap!<CR>
ino <silent><leader>w <ESC>:set wrap!<CR>i
"toggle nerdtree
no <silent><leader>nt <ESC>:NERDTreeToggle<CR>
"retab
no <leader>rt <ESC>:%retab<CR>
"kill search hilighting
no <leader>sh <ESC>:noh<CR>
no <silent><leader><space> <ESC>:let @/ = ""<CR>
"bang last command
nno <Leader>! q:kWgea!<CR>
"uppercase words
ino <C-u> <esc>mzgUiwza
nno <C-u> <esc>mzgUiwza
" Toggle [i]nvisible characters
nno <silent><leader>i :set list!<cr>
" reset color scheme
nno U :syntax sync fromstart<cr>:redraw!<cr>
" make this_style into cammelCase
nno CC 0f_x~
ino <C-c> <ESC>I//
vno <C-c> I//
nno <leader>c :%!column -t<CR>
"}}}
