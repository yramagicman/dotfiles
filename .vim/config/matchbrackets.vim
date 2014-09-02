"matchbrackets.vim
"{{{match pairs
inoremap ' ''<ESC>i
inoremap " ""<ESC>i
inoremap ( ()<ESC>i
inoremap { {}<ESC>i
inoremap [ []<ESC>i
inoremap [<CR> [<CR>]<ESC>O
inoremap (<CR> (<Cr>)<ESC>O
inoremap {<CR> {<CR>}<ESC>O
"}}}
"{{{ If inserted quickly, don't reinsert matching character
inoremap () ()
inoremap [] []
inoremap {} {}
inoremap '' ''
inoremap "" ""
"}}}
"{{{ visual mode surround text
vnoremap ' xi''<ESC>hp<ESC>f'a
vnoremap " xi""<ESC>hp<ESC>f"a
vnoremap { xi{}<ESC>hp<ESC>la
vnoremap [ xi[]<ESC>hp<ESC>la
vnoremap ( xi()<ESC>hp<ESC>la
"}}}
"{{{ swap quotes not in insert mode, too likely to conflict with typing
vnoremap <Leader>" yda'a<space>""<ESC>h"0p
vnoremap <Leader>' yda"a<space>''<ESC>h"0p
nnoremap <Leader>" <ESC>vi'yda'a<space>""<ESC>h"0p
nnoremap <Leader>' <ESC>vi"yda"a<space>''<ESC>h"0p
"}}}
augroup abbrevs
    "{{{ filetype specific mappings for characters and shortcuts
    autocmd!
    autocmd FileType mail iabbrev <buffer> api API
    autocmd FileType mail iabbrev <buffer> etap Etapestry
    autocmd FileType mail iabbrev <buffer> durpal Drupal
    autocmd FileType mail iabbrev <buffer> drupal Drupal
    autocmd FileType mail inoremap <buffer> ' '
    autocmd FileType html inoremap <buffer> <> <>
    autocmd FileType html inoremap <buffer> < <><ESC>i
    autocmd FileType html vnoremap <buffer> < xi<<ESC>pa<ESC>la
    autocmd FileType php  iabbrev <buffer> pp> print '<pre>';
    autocmd FileType php  iabbrev <buffer> /pp> print '</pre>';
    autocmd FileType php  iabbrev <buffer> dsm durpal_set_message()<Esc>hi
    "}}}
augroup end
