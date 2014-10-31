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
"{{{ If backspace hit, only insert one of the pair so (<BS> only inserts (.
inoremap (<BS> (
inoremap [<BS> [
inoremap {<BS> {
inoremap '<BS> '
inoremap "<BS> "
"}}}
"{{{ visual mode surround text
vnoremap ' xi''<ESC>hp<ESC>f'a
vnoremap " xi""<ESC>hp<ESC>f"a
vnoremap { xi{}<ESC>hp<ESC>la
vnoremap [ xi[]<ESC>hp<ESC>la
vnoremap ( xi()<ESC>hp<ESC>la
"}}}
"{{{ swap quotes not in insert mode, too likely to conflict with typing
vnoremap <Leader>" yda'i""<ESC>"0pf"a<space><ESC>
vnoremap <Leader>' yda"i''<ESC>"0pf"a<space><ESC>
nnoremap <Leader>" <ESC>vi'yda'i""<ESC>h"0pf"a<space><ESC>
nnoremap <Leader>' <ESC>vi"yda"i''<ESC>h"0pf"a<space><ESC>
"}}}
augroup abbrevs
    "{{{ filetype specific mappings for characters and shortcuts
    autocmd!
    autocmd FileType * iabbrev <buffer> api API
    autocmd FileType * iabbrev <buffer> iso ISO
    autocmd FileType * iabbrev <buffer> csv CSV
    autocmd FileType * iabbrev <buffer> etap Etapestry
    autocmd FileType * iabbrev <buffer> durpal Drupal
    autocmd FileType * iabbrev <buffer> drupal Drupal
    autocmd FileType mail inoremap <buffer> ' '
    autocmd FileType html inoremap <buffer> <> <>
    autocmd FileType html inoremap <buffer> < <><ESC>i
    autocmd FileType html vnoremap <buffer> < xi<<ESC>pa<ESC>la
    autocmd FileType php  iabbrev <buffer> pp> print '<pre>';<Esc>$xxi;<esc>xA
    autocmd FileType php  iabbrev <buffer> /pp> print '</pre>';<Esc>$xxi;<esc>xA
    autocmd FileType php  iabbrev <buffer> dsm drupal_set_message()<Esc>i
    "}}}
augroup end
