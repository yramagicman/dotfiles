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
vnoremap ' xi''<ESC>hp<ESC>la
vnoremap " xi""<ESC>hp<ESC>la
vnoremap { xi{}<ESC>hp<ESC>la
vnoremap [ xi[]<ESC>hp<ESC>la
vnoremap ( xi()<ESC>hp<ESC>la
"}}}"
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
    "}}}
augroup end
