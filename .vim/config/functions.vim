"{{{ Strip trailing whitespace (,ss)
function! StripWhitespace()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    :%s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfunction
"}}}
"{{{ indent guides
let g:indentguides_state = 0
function! IndentGuides()
    if g:indentguides_state
        let g:indentguides_state = 0
        2match None
    else
        let g:indentguides_state = 1
        execute '2match IndentGuides /\%(\_^\s*\)\@<=\%(\%'.(0*&sw+1).'v\|\%'.(1*&sw+1).'v\|\%'.(2*&sw+1).'v\|\%'.(3*&sw+1).'v\|\%'.(4*&sw+1).'v\|\%'.(5*&sw+1).'v\|\%'.(6*&sw+1).'v\|\%'.(7*&sw+1).'v\)\s/'
    endif
endfunction
nnoremap <silent> <leader>I :call IndentGuides()<CR>
"call IndentGuides()
"}}}
"{{{ Fix Line Endings
function! LineEndings()
    update
    e ++ff=dos
    setlocal ff=unix
    :w
endfunction
nno <silent><leader>le :call LineEndings()<CR>
"}}}
"{{{wordpress wrap function in 'function_exists()' check
function! WpWrap()
    normal ^vf(hyOif(function_exists(',p'){`jo}
endfunction
nno <c-w><c-w> :call WpWrap()<CR>
"}}}
"{{{ create new tabs on <C-n> if no tabs exist
function TabBind()
    if tabpagenr('$') < 2
        tabnew
    else
        tabn
    endif
endfunction
nno <C-n> :call TabBind()<CR>
"}}}
"{{{ kill extra newlines
function Knl ()
    try
        %s#\($\n\s*\)\+\%$##
    catch
    endtry
endfunction
"}}}
"{{{ save, kill whitespace at end of lines, and end of file, convert tabs
function Save()
    $retab
    call StripWhitespace()
    call Knl()
    w
endfunction
"}}}
"{{{ save, kill whitespace at end of lines, and end of file, don't convert tabs
function SaveNoRt()
    call StripWhitespace()
    call Knl()
    w
endfunction
"}}}
" {{{ Shortcut: F7 = Run anything with a shebang
" Source: http://superuser.com/a/21503/48014
if has("autocmd")
    au BufEnter * if match( getline(1) , '^\#!') == 0 |
    \ execute("let b:interpreter = getline(1)[2:]") |
    \endif

    fun! CallInterpreter()
        if exists("b:interpreter")
             exec ("!".b:interpreter." %")
        endif
    endfun

    nmap <Leader>R :call CallInterpreter()<CR>
endif
" }}}
