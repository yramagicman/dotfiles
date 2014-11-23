"matchbrackets.vim
"{{{match pairs
"inoremap ' ''<ESC>i
"inoremap " ""<ESC>i
"inoremap ( ()<ESC>i
"inoremap { {}<ESC>i
"inoremap [ []<ESC>i
"inoremap [<CR> [<CR>]<ESC>O
"inoremap (<CR> (<Cr>)<ESC>O
"inoremap {<CR> {<CR>}<ESC>O
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
vnoremap ' xi''<ESC>hp<ESC>f'
vnoremap " xi""<ESC>hp<ESC>f"
vnoremap { xi{}<ESC>hp<ESC>f}
vnoremap [ xi[]<ESC>hp<ESC>f]
vnoremap ( xi()<ESC>hp<ESC>F(
vnoremap } xi{}<ESC>hp<ESC>f}
vnoremap ] xi[]<ESC>hp<ESC>f]
vnoremap ) xi()<ESC>hp<ESC>F(i
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
let b:squarebracket = 1
let b:curlybracket = 1
let b:paren = 1
let b:singlequote = 1
let b:doublequote = 1
augroup brackets
    autocmd!
    verbose autocmd CursorHold * :let b:squarebracket = 1
    verbose autocmd CursorHold * :let b:curlybracket = 1
    verbose autocmd CursorHold * :let b:paren = 1
    verbose autocmd CursorHold * :let b:singlequote = 1
    verbose autocmd CursorHold * :let b:doublequote = 1
augroup end
function! QuoteToggle(Toggle)
    if a:Toggle == 1
        norm xppi
        let l:T = a:Toggle
        let l:T = 0
        return l:T
    else
        norm xa
        let l:T = a:Toggle
        let l:T = 1
        return l:T
    endif
endfunction

function! SingleQuote()
    if !exists('b:singlequote')
        let b:singlequote=1
    endif
    let b:singlequote = QuoteToggle(b:singlequote)
    return b:singlequote
endfunction

function! DoubleQuote()
    if !exists('b:doublequote')
        let b:doublequote=1
    endif
    let b:doublequote = QuoteToggle(b:doublequote)
    return b:doublequote
endfunction

function! BracketsOpen(Bracket)
    let l:b = a:Bracket
    let l:b=1
    if l:b == 1
        let l:b = 0
        return l:b
    endif
endfunction

function! BracketsClose(Bracket)
    let l:b = a:Bracket
    if l:b == 1
        return
    else
        norm xa
        let l:b = 1
        return l:b
    endif
endfunction

function! SquareBracketsOpen()
    if !exists('b:squarebracket')
        let b:squarebracket = 1
    endif
    let b:squarebracket = BracketsOpen(b:squarebracket)
    return b:squarebracket
endfunction

function! SquareBracketsClose()
    if !exists('b:squarebracket')
        let b:squarebracket = 1
    endif
    let b:squarebracket = BracketsOpen(b:squarebracket)
    return b:squarebracket
endfunction

function! CurlyBracketsOpen()
    if !exists('b:curlybracket')
        let b:curlybracket = 1
    endif
    let b:curlybracket = BracketsOpen(b:curlybracket)
    return b:curlybracket
endfunction

function! CurlyBracketsClose()
    if !exists('b:curlybracket')
        let b:curlybracket = 1
    endif
    let b:curlybracket = BracketsOpen(b:curlybracket)
    return b:curlybracket
endfunction

function! ParenOpen()
    if !exists('b:paren')
        let b:paren = 1
    endif
    let b:paren = BracketsOpen(b:paren)
    return b:paren
endfunction

function! ParenClose()
    if !exists('b:paren')
        let b:paren = 1
    endif
    let b:paren = BracketsOpen(b:paren)
    return b:paren
endfunction
inoremap [ []<Esc>:call SquareBracketsOpen()<CR>i
inoremap ] ]<Esc>:call SquareBracketsClose()<CR>a
inoremap { {}<Esc>:call CurlyBracketsOpen()<CR>i
inoremap } }<Esc>:call CurlyBracketsClose()<CR>a
inoremap ( ()<Esc>:call ParenOpen()<CR>i
inoremap ) )<Esc>:call ParenClose()<CR>a
inoremap " "<Esc>:call DoubleQuote()<CR>a
inoremap ' '<Esc>:call SingleQuote()<CR>a
