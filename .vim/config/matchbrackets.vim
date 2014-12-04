"matchbrackets.vim
"{{{ visual mode surround text
vnoremap ' xi''<ESC>hp<ESC>f'
vnoremap " xi""<ESC>hp<ESC>f"
vnoremap { xi{}<ESC>hp<ESC>f}
vnoremap [ xi[]<ESC>hp<ESC>f]
vnoremap ( xi()<ESC>hp<ESC>F(
vnoremap } xi{}<ESC>hp<ESC>f}
vnoremap ] xi[]<ESC>hp<ESC>f]
vnoremap ) xi()<ESC>hp<ESC>F(i
"}}}
"{{{ autocomplete quotes and brackets
inoremap        (  ()<Left>
inoremap        [  []<Left>
inoremap        {  {}<Left>
inoremap [<CR> [<CR>]<ESC>O
inoremap (<CR> (<CR>)<ESC>O
inoremap {<CR> {<CR>}<ESC>O
inoremap <expr> )  strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"
inoremap <expr> ]  strpart(getline('.'), col('.')-1, 1) == "]" ? "\<Right>": "]"
inoremap <expr> }  strpart(getline('.'), col('.')-1, 1) == "}" ? "\<Right>" : "}"
inoremap <expr> " strpart(getline('.'), col('.')-1, 1) == "\"" ? "\<Right>" : "\"\"\<Left>"
inoremap <expr> ' strpart(getline('.'), col('.')-1, 1) == "\'" ? "\<Right>" : "\'\'\<Left>"
"}}}
"{{{ swap quotes not in insert mode, too likely to conflict with typing
vnoremap <Leader>" yda'i""<ESC>"0pf"
vnoremap <Leader>' yda"i''<ESC>"0pf'
nnoremap <Leader>" <ESC>vi'yda'i""<ESC>h"0pf"
nnoremap <Leader>' <ESC>vi"yda"i''<ESC>h"0pf'
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
    autocmd FileType php  iabbrev <buffer> pp> print '<pre>';<Esc>$xxi;<ESC>xA
    autocmd FileType php  iabbrev <buffer> gcpp> print '</pre>';<Esc>$xxi;<ESC>xA
    autocmd FileType php  iabbrev <buffer> dsm drupal_set_message()<Esc>i
    "}}}
augroup end
