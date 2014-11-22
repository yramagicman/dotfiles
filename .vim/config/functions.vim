"functions.vim
"{{{ Strip trailing whitespace
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
nnoremap <silent><leader>le :call LineEndings()<CR>
"}}}
"{{{ kill extra newlines
function! Knl ()
    try
        %s#\($\n\s*\)\+\%$##
    catch
    endtry
endfunction
"}}}
"{{{ save, kill whitespace at end of lines, and end of file, convert tabs
function! Save()
    syntax sync fromstart
    redraw!
    %retab
    call StripWhitespace()
    call Knl()
    w
    call CheckErrorFn()
endfunction
"}}}
"{{{ save, kill whitespace at end of lines, and end of file, don't convert tabs
function! SaveNoRt()
    call StripWhitespace()
    call Knl()
    w
    call CheckErrorFn()
endfunction
"}}}
"{{{ Shortcut: <leader>R = Run anything with a shebang
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
"{{{ highlight repeated lines
function! HighlightRepeats() range
  let lineCounts = {}
  let lineNum = a:firstline
  while lineNum <= a:lastline
    let lineText = getline(lineNum)
    if lineText != ""
      let lineCounts[lineText] = (has_key(lineCounts, lineText) ? lineCounts[lineText] : 0) + 1
    endif
    let lineNum = lineNum + 1
  endwhile
  exe 'syn clear Repeat'
  for lineText in keys(lineCounts)
    if lineCounts[lineText] >= 2
      exe 'syn match Repeat "^' . escape(lineText, '".\^$*[]') . '$"'
    endif
  endfor
endfunction
command! -range=% HighlightRepeats <line1>,<line2>call HighlightRepeats()
nmap <silent><LocalLeader>r :HighlightRepeats<CR>
nmap <silent><LocalLeader>cr :syn clear Repeat<CR>
"}}}
"{{{ Check for :Error command so it can be run on save
function! CheckErrorFn()
    if exists(':Error')
        Error
    endif
endfunction
"}}}
"{{{ presentation mode
let g:presmode = 1
function! PresMode()
    if  g:presmode == 0
        "normal opperation
        set relativenumber
        set nonumber
        autocmd!
        autocmd InsertLeave * :set nonumber
        autocmd InsertLeave * :set relativenumber
        autocmd InsertEnter * :set number
        autocmd InsertEnter * :set norelativenumber
        let g:presmode = 1
        return g:presmode
    else
        let g:presmode = 0
        "when people are watching
        set norelativenumber
        set number
        autocmd!
        autocmd InsertEnter * :set number
        autocmd InsertLeave * :set number
        autocmd InsertEnter * :set norelativenumber
        autocmd InsertLeave * :set norelativenumber
        return g:presmode
    endif
endfunction
noremap <leader>x :call PresMode()<CR>
command! Pres :call PresMode()
"}}}
"{{{ line numbers on or off
let g:numoff = 1
function! NumOff()
    if  g:numoff == 0
        "normal opperation
        set relativenumber
        set nonumber
        autocmd!
        autocmd InsertLeave * :set nonumber
        autocmd InsertLeave * :set relativenumber
        autocmd InsertEnter * :set number
        autocmd InsertEnter * :set norelativenumber
        let g:numoff = 1
        return g:numoff
    else
        echom g:numoff
        let g:numoff = 0
        "when people are watching
        set norelativenumber
        set nonumber
        autocmd!
        autocmd InsertEnter * :set nonumber
        autocmd InsertLeave * :set nonumber
        autocmd InsertEnter * :set norelativenumber
        autocmd InsertLeave * :set norelativenumber
        return g:numoff
    endif
endfunction
noremap <silent> <leader>nn :call NumOff()<CR>
noremap <silent> <leader>ns :call PresMode()<CR>
"}}}
"{{{ get stuff off my screen
let g:clean = 1
function! CleanScreen()
    if  g:clean == 0
        let g:numoff = 0
        set laststatus=1
        set foldcolumn=2
        call NumOff()
        set showmode
        let g:clean=1
        return g:clean
    else
        let g:numoff = 1
        set laststatus=0
        set noshowmode
        set foldcolumn=12
        call NumOff()
        let g:clean=0
        return g:clean
    endif
endfunction
command! Clean :call CleanScreen()
"}}}
"{{{ open scratch buffer
function! Scratch()
    new
    setlocal buftype=nofile
    setlocal bufhidden=hide
    setlocal noswapfile
    setlocal nobuflisted
    resize -15
endfunction
command! Scratch :call Scratch()
"}}}
"{{{ open new buffer without creating extra split
function! NewBuffer()
    new
    wincmd k
    close
endfunction
nnoremap <silent><leader>n :call NewBuffer()<CR>
cnoreabbrev new New
command! New :call NewBuffer()
"}}}
"{{{ toggle fold column markers
let g:foldon=1
function! FoldColumn()
    if g:foldon == 1
        hi      FoldColumn       ctermbg=234     ctermfg=247    guifg=#1c1c1c  guibg=#1c1c1c
        let g:foldon=0
        return g:foldon
    else
        hi      FoldColumn       ctermbg=234     ctermfg=234    guifg=#1c1c1c  guibg=#1c1c1c
        let g:foldon=1
        return g:foldon
    endif
endfunction
command! Fc :call FoldColumn()
nnoremap <Leader>f :call FoldColumn()<CR>
"}}}
"{{{ Open in secondary editor. I use TextWrangler on OS X so tw makes sense
function! Tw()
python << endpython
import sys, os, vim
from subprocess import call
gui_editor_defined = int(vim.eval('exists("g:Gui_Editor")'))
cur_file = vim.eval('bufname("%")')
platform = sys.platform
if gui_editor_defined:
    gui_editor = vim.eval('g:Gui_Editor')
    if platform == 'darwin':
        call(['open', '-a', gui_editor, cur_file])
    if platform =='linux' or platform == 'linux2':
        call([gui_editor, cur_file])
else:
    print "Please set a secondary editor by adding let g:Gui_Editor='editor command' to your vimrc"
endpython
endfunction
command! Tw :call Tw()
"}}}
