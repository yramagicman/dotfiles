"match pairs
inoremap ' ''<ESC>i
inoremap " ""<ESC>i
inoremap ( ()<ESC>i
inoremap { {}<ESC>i
inoremap [ []<ESC>i
inoremap [<CR> [<CR>]<ESC>O
inoremap (<CR> (<Cr>)<ESC>O
inoremap {<CR> {<CR>}<ESC>O
" If inserted quickly, don't reinsert matching character
inoremap () ()
inoremap [] []
inoremap {} {}
inoremap '' ''
inoremap "" ""
" This sequence (xi'...) surrounds a selected block in whatever character it's
" mapped to work with by copying and pasting the selected text inside the block
" and then appending the character at the end.
vnoremap ' xi'<ESC>pa<ESC>'f'a
vnoremap " xi"<ESC>pa<ESC>"f"a

" For some odd reason I don't need the closing character in these mappings. I
" guess the previous insert mode mappings take care of it, which is odd because
" that wasn't true with the single and double quote mappings
vnoremap { xi{<ESC>pa<ESC>la
vnoremap [ xi[<ESC>pa<ESC>la
vnoremap ( xi(<ESC>pa<ESC>la

augroup abbrevs
    autocmd!
    autocmd FileType mail iabbrev <buffer> api API
    autocmd FileType mail iabbrev <buffer> etap Etapestry
    autocmd FileType mail iabbrev <buffer> durpal Drupal
    autocmd FileType mail iabbrev <buffer> drupal Drupal
    autocmd FileType mail inoremap <buffer> ' '
    autocmd FileType html inoremap <buffer> <> <>
    autocmd FileType html inoremap <buffer> < <><ESC>i
    autocmd FileType html vnoremap <buffer> < xi<<ESC>pa<ESC>la
augroup end
