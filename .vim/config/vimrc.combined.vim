"{{{ defaults
"{{{ set secondary editor
if has('mac')
    let g:Gui_Editor = 'TextWrangler'
else
    let g:Gui_Editor = 'geany'
endif
"}}}
"{{{setup stuff, for install plugin
let g:VundleHelper_Setup_Folders = ['after', 'autoload', 'backup', 'bundle', 'colors', 'config', 'doc', 'snippets', 'spell', 'swaps', 'syntax', 'tags', 'undo']
let g:VundleHelper_Plugin_File =  '/.vim/config/extensions/vundle.vim'
let g:VundleHelper_Update_Frequency = 5
"}}}
"{{{ Defaults probably won't change... ever
set background=dark
set autoread
set spelllang=en_us
" best color scheme ever
colorscheme muttclone
set t_Co=256
" Make Vim more useful
set nocompatible
"text-width
set textwidth=82
" set color column to 0
set cc=0
" highlight long lines
call matchadd('ColorColumn', '\%81v', 100)
if has('mac')
    "Use os clipboard with mac
    set clipboard=unnamed
endif
" Enhance command-line completion
set wildmenu
" Allow cursor keys in insert mode
set esckeys
" Allow backspace in insert mode
set backspace=indent,eol,start
" Optimize for fast terminal connections
set ttyfast
" Add the g flag to search/replace by default
" set gdefault
" Use UTF-8
set encoding=utf-8
set binary
set eol
" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backup//
"set directory=~/.vim/swaps
"I hate swap files
set noswapfile
if exists("&undodir")
    set undolevels=5000
    set undodir=~/.vim/undo//
    set undofile
endif
" Respect modeline in files
set modeline
set modelines=4
" Enable per-directory .vimrc files and disable unsafe commands in them
set exrc
set secure
" Highlight searches
set hlsearch
" Ignore case of searches
set ignorecase
set smartcase
" Highlight dynamically as pattern is typed
set incsearch
" Enable mouse in all modes
set mouse=a
" Disable error bells
set novisualbell
set noerrorbells
" Don’t reset cursor to start of line when moving around.
set nostartofline
" Show the cursor position
set ruler
" Don’t show the intro message when starting Vim
set shortmess=atI
" Show the current mode
set showmode
" Show the filename in the window titlebar
set title
" Highlight current line
""set cursorline
" Show the (partial) command as it’s being typed
set showcmd
" Enable syntax highlighting
syntax on
"set max highlight column
set synmaxcol=800
" Start scrolling five lines before the horizontal window border when will this
" break
set scrolloff=2
set nolist wrap linebreak sidescrolloff=15
set showbreak=....
if exists('+breakindent')
    set breakindent
endif
" sensible completion
set completeopt=longest,menuone
set ofu=syntaxcomplete#Complete
" Show "invisible” characters
set lcs=tab:⟩\ ,trail:·,eol:↩,nbsp:_
"set list " breaks set linebreak
" Enable line numbers
set nonumber
set relativenumber
" Change mapleader
let mapleader=","
let localleader="/"
""set tags=.git/tags;
""set autochdir
set nowrapscan
""set cryptmethod=blowfish2
filetype plugin on
if !exists('g:loaded_matchit') && findfile('plugin/matchit.vim', &rtp) ==# ''
  runtime! macros/matchit.vim
endif
"}}}
"{{{ Make tabs as wide as four spaces
set tabstop=4
set smarttab
set smartindent
set autoindent
set shiftwidth=4
"tabs to spaces
set expandtab
"}}}
"{{{ set compiler
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_c_compiler = 'clang'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'
"}}}
"{{{ set status line
" Always show status line
set laststatus=2
set statusline=\|\ %m%f%r\ \%y
if has('statusline') && exists('*fugitive#statusline')
    set statusline+=\ \%{fugitive#statusline()}
endif
set statusline+=%=
set statusline+=Line:
set statusline+=%4l/%-4L
set statusline+=\ Column\ %2c
set statusline+=\ \|
"}}}
"{{{ buffer sanity
set hidden
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'
"}}}
"{{{ Wild ignore, mostly stolen from Steve Losh
set wildignore+=.hg,.git,.svn                    " Version control
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg   " binary images
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled object files
set wildignore+=*.spl                            " compiled spelling word lists
set wildignore+=*.sw?                            " Vim swap files
set wildignore+=*.DS_Store                       " OSX

set wildignore+=*.luac                           " Lua byte code

set wildignore+=migrations                       " Django migrations
set wildignore+=*.pyc                            " Python byte code

set wildignore+=*.orig                           " Merge resolution files
set wildignore+=.cache,.neocomplcache,.npm,.gem
set wildignore+=node_modules,bower_components

"}}}
"{{{ GUI Options
if has('gui')
set guifont="Source Code Pro":h13
" Better line-height
set linespace=10
" Disable error bells
set noerrorbells
set guioptions -=m
set guioptions +=c
set guioptions +=p
set guioptions -=e
set guioptions -=r
set guioptions -=R
set guioptions -=l
set guioptions -=L
set guioptions -=T
endif
"}}}
"}}}
"{{{motions
"{{{ kill arrow keys
nnoremap <down> <C-d>
nnoremap <left> <Nop>
nnoremap <up> <C-u>
nnoremap <right> <Nop>
inoremap <right> <Nop>
inoremap <down> <Nop>
inoremap <left> <Nop>
inoremap <up> <Nop>
vnoremap <left> <Nop>
vnoremap <down> <C-d>
vnoremap <right> <Nop>
vnoremap <up> <C-u>
"}}}
"{{{always center when navigating
noremap G Gzz
noremap { {zz
noremap ( (zz
noremap } }zz
noremap ) )zz
noremap % %zz
noremap <Tab> <Tab>zz
noremap n nzz
noremap N Nzz
"}}}
"{{{ jump to ...
noremap <S-j> G
noremap <S-k> gg
nnoremap <tab> %
vnoremap <tab> %
nnoremap <leader>j J
vnoremap <leader>j J
"}}}
"{{{ command line movement mappings
cnoremap <C-a>  <Home>
cnoremap <C-b>  <Left>
cnoremap <C-f>  <Right>
cnoremap <C-d>  <Delete>
cnoremap <Esc>b <S-Left>
cnoremap <Esc>f <S-Right>
cnoremap <Esc>d <S-right><Delete>
cnoremap <C-e>  <End>
"}}}
"{{{ Substitute word under cursor globally
nnoremap --r :%s/\<<C-r><C-w>\>//g<Left><Left>
" ask for confirmation
nnoremap -r :%s/\<<C-r><C-w>\>//gc<Left><Left><Left>
"}}}
"{{{ Substitute selection globally
vnoremap --r y<Esc>:%s/<C-r>"//g<Left><Left>
" ask for confirmation
vnoremap -r y<Esc>:%s/<C-r>"//gc<Left><Left><Left>
"}}}
"{{{ find and replace with control f
noremap <C-F> :%s/find/replace/I
inoremap <C-F> <ESC>:%s/find/replace/I
vnoremap <C-F> :s/find/replace/g
"}}}
"{{{ visual block mode is better that visual mode
nnoremap v <c-v>
nnoremap <c-v> v
vnoremap v <C-V>
vnoremap <C-V> v
"}}}
"{{{ Diff motions
nnoremap <leader>dn ]czt
nnoremap <leader>dp [czt
"}}}
"}}}
"{{{ Automatic commands
if has("autocmd")
    " Enable file type detection
    augroup general
        autocmd!
        "{{{ show cursorline on current buffer only
        autocmd BufEnter * set cursorline
        autocmd BufLeave * set nocursorline
        "}}}
        "{{{ auto-reload vim files, auto resize splits on window resize
        autocmd BufWritePost $HOME/.vim/config/* :source %
        autocmd BufWritePost $HOME/.vim/config/* :set visualbell
        autocmd BufWritePost $HOME/.vim/config/* :set foldmethod=marker
        au VimResized * exe "normal! \<c-w>="
        autocmd VimEnter * set vb t_vb=
        "}}}
        "{{{ fold method marker for specific files
        autocmd FileType vim setlocal foldmethod=marker
        autocmd FileType zsh setlocal foldmethod=marker
        autocmd FileType lua setlocal foldmethod=marker
        "}}}
        "{{{ use absolute line numbering in insert mode and relative numbers elsewhere
        autocmd InsertLeave * :set nonumber
        autocmd InsertLeave * :set relativenumber
        autocmd InsertEnter * :set number
        autocmd InsertEnter * :set norelativenumber
        "}}}
    augroup end
    augroup js
        "{{{ Treat .json files as .js
        autocmd!
        autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
        "}}}
        "{{{ fix my fat fingers, change 90 to () in js
        autocmd Bufenter *.js iabbr 90 ()
        autocmd Bufleave *.js iabbr 90 90
        "}}}
    augroup end
    augroup css
        "{{{ filetype stuff
        autocmd!
        autocmd BufRead,BufNewFile *.css set filetype=css
        "}}}
        "{{{ use 2 spaces  for css and related files
        autocmd FileType css setlocal tabstop=2
        autocmd FileType css setlocal shiftwidth=2
        "}}}
        "{{{ automattically add semicolons in css
        autocmd FileType css inoremap <buffer> : :;<ESC>i
        "}}}
    augroup end
    augroup coding
        autocmd!
        "{{{ drupal coding standards
        autocmd VimEnter,Bufenter,BufRead */drupal*/* set tabstop=2
        autocmd VimEnter,Bufenter,BufRead */drupal*/* set shiftwidth=2
        autocmd VimEnter,Bufenter,BufRead */drupal*/* set expandtab
        autocmd VimEnter,Bufenter,BufRead */drupal*/* set foldmethod=indent
        autocmd VimEnter,Bufenter,BufRead *.module set filetype=php
        autocmd VimEnter,Bufenter,BufRead *.inc set filetype=php
        autocmd VimEnter,Bufenter,BufRead *.install set filetype=php
       "autocmd VimEnter,BufRead */drupal*/* call IndentGuides()
        "}}}
        "{{{ ratiochristi coding standards
        autocmd Bufenter,BufRead */ratiochristi/* set tabstop=4
        autocmd Bufenter,BufRead */ratiochristi/* set smartindent
        autocmd Bufenter,BufRead */ratiochristi/* set shiftwidth=4
        autocmd Bufenter,BufRead */ratiochristi/* set expandtab
        "}}}
    augroup end
    augroup extra
        "{{{ Misc. individual commands that don't merit their own fold group
        autocmd!
        autocmd FileType mail set spell
        autocmd FileType make set noexpandtab
        autocmd FileType,BufEnter snippets set noexpandtab
        autocmd BufNewFile,BufRead *.md set filetype=markdown
        autocmd BufEnter * execute "source ~/.vim/colors/" . g:colors_name . ".vim"
        " make Vim edit cron again
        autocmd BufEnter /private/tmp/crontab.* setl backupcopy=yes
        " always reload files when changed outside Vim
        "autocmd CursorHold,CursorMovedI,CursorMoved,Bufenter * :checktime
        autocmd Bufenter,FocusGained,BufLeave * :checktime
        " save on focus lost
        autocmd FocusLost,BufLeave * :silent! wall
        " leave insert mode on focus lost
        autocmd FocusLost,BufLeave * call feedkeys("\<ESC>")
        autocmd CmdwinEnter * unmap <CR>
        autocmd CmdwinLeave * map <CR> za
        " }}}
    augroup end
endif
"}}}
"{{{matchbrackets
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
inoremap (  ()<Left>
inoremap [  []<Left>
inoremap {  {}<Left>
inoremap <  <><Left>
inoremap [<CR> [<CR>]<ESC>O
inoremap (<CR> (<CR>)<ESC>O
inoremap {<CR> {<CR>}<ESC>O
inoremap <<CR> <<CR>><ESC>O
inoremap <expr> )  strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"
inoremap <expr> ]  strpart(getline('.'), col('.')-1, 1) == "]" ? "\<Right>": "]"
inoremap <expr> }  strpart(getline('.'), col('.')-1, 1) == "}" ? "\<Right>" : "}"
inoremap <expr> >  strpart(getline('.'), col('.')-1, 1) == ">" ? "\<Right>" : ">"
inoremap <expr> " strpart(getline('.'), col('.')-1, 1) == "\"" ? "\<Right>" : "\"\"\<Left>"
inoremap <expr> ' strpart(getline('.'), col('.')-1, 1) == "\'" ? "\<Right>" : "\'\'\<Left>"
"}}}
"{{{ swap quotes not in insert mode, too likely to conflict with typing
vnoremap <Leader>" yda'i""<ESC>h"0pf"
vnoremap <Leader>' yda"i''<ESC>h"0pf'
nnoremap <Leader>" <ESC>vi'yda'i""<ESC>h"0pf"
nnoremap <Leader>' <ESC>vi"yda"i''<ESC>h"0pf'
"}}}
"{{{ filetype specific mappings for characters and shortcuts
augroup abbrevs
    autocmd!
    autocmd FileType * iabbrev <buffer> api API
    autocmd FileType * iabbrev <buffer> iso ISO
    autocmd FileType * iabbrev <buffer> csv CSV
    autocmd FileType * iabbrev <buffer> etap Etapestry
    autocmd FileType * iabbrev <buffer> durpal Drupal
    autocmd FileType * iabbrev <buffer> drupal Drupal
    autocmd FileType mail,text,gitcommit inoremap <buffer> ' '
    autocmd FileType html vnoremap <buffer> < xi<<ESC>pa<ESC>la
    autocmd FileType php  iabbrev <buffer> pp> print '<pre>';
    autocmd FileType php  iabbrev <buffer> cpp> print '</pre>';
    autocmd FileType vim inoremap " "
augroup end
"}}}
"{{{ Make backspace work nicely with autopairs
function! Backspace()
    let l:current = strpart(getline('.'), col('.')-1, 1)
    let l:prev = strpart(getline('.'), col('.')-2, 1)
    if l:current == '"' || l:current == "'" || l:current == "]" || l:current == ")" || l:current == "}"
        if l:current == l:prev
            return "\<Right>\<BS>\<BS>"
        elseif l:prev == '[' && l:current == ']'
            return "\<Right>\<BS>\<BS>"
        elseif l:prev == "{" && l:current == "}"
            return "\<Right>\<BS>\<BS>"
        elseif l:prev == "(" && l:current == ")"
            return "\<Right>\<BS>\<BS>"
        else
            return "\<BS>"
        endif
    else
        return "\<BS>"
    endif
endfunction
inoremap <expr> <BS> Backspace()
"}}}
"{{{ Unwrap parens and brackets
function! UnwrapParens()
    let l:current = strpart(getline('.'), col('.')-1, 1)
    if  l:current == "]" || l:current == ")" || l:current == "}" || l:current == "[" || l:current == "(" || l:current == "{"
        norm ml%mkx`lx
    endif
    if l:current == '"'
        try
            norm mlf"mkx`lx
        catch
            norm mlF"mkx`lx
        endtry
    endif
    if l:current == "'"
        try
            norm mlf'mkx`lx
        catch
            norm mlF'mkx`lx
        endtry
    endif
endfunction
inoremap <localleader><BS> <Esc>:call UnwrapParens()<CR>
noremap <leader>x :call UnwrapParens()<CR>
"}}}
"}}}
"{{{functions
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
nnoremap <silent> <leader>i :call IndentGuides()<CR>
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
    checktime
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
"}}}
"{{{escape
"{{{ remap escape for easier access
nnoremap <leader>m <ESC>l
vnoremap <leader>m <ESC>l
inoremap <leader>m <ESC>l
onoremap <leader>m <ESC>
nnoremap <m <ESC>l
vnoremap <m <ESC>l
inoremap <m <ESC>l
onoremap <m <ESC>
inoremap <M <ESC>l
onoremap <M <ESC>

"}}}
"{{{ map colon to semi-colon. Life is just easier that way.
noremap ; :
nnoremap <leader>; :!
"}}}
"}}}
"{{{saving
"{{{ control whitespace and tabs on save
nnoremap <leader>ss :call Save()<CR>
nnoremap ss :call Save()<CR>
inoremap <leader>ss <ESC>:call Save()<CR>
vnoremap <leader>ss <ESC>:call Save()<CR>
"}}}
"{{{ save but don't retab
nnoremap <localleader>ss :call SaveNoRt()<CR>
inoremap <localleader>ss <ESC>:call SaveNoRt()<CR>
vnoremap <localleader>ss <ESC>:call SaveNoRt()<CR>
"}}}
"{{{ save and close
nnoremap <silent><leader>ww :call SaveNoRt()<CR>:close<CR>
inoremap <silent><leader>ww <ESC>:call SaveNoRt()<CR>:close<CR>
vnoremap <silent><leader>ww <ESC>:call SaveNoR()<CR>:close<CR>
"}}}
"{{{ close but don't save
nnoremap <leader>cl <ESC>:close!
inoremap <leader>cl <ESC>:close!
vnoremap <leader>cl <ESC>:close!
"}}}
"{{{ save and quit
nnoremap <silent><leader>wq :call SaveNoRt()<CR>:qall<CR>
inoremap <silent><leader>wq <ESC>:call SaveNoRt()<CR>:qall<CR>
vnoremap <silent><leader>wq <ESC>:call SaveNoRt()<CR>:qall<CR>
"}}}
"{{{ quit without saving
nnoremap <leader>Q :q!
inoremap <leader>Q <ESC>:q!
vnoremap <leader>Q <ESC>:q!
nnoremap QQ :q!
command! QQ :q!
"}}}
"{{{ nice quit
nnoremap <silent><leader>q :q<CR>
inoremap <silent><leader>q <ESC>:q<CR>
vnoremap <silent><leader>q :q<CR>
"}}}
"{{{ sanity mappings
nnoremap qq :wq
nnoremap qw :wq
nnoremap cl :close<CR>
inoremap q q
inoremap qq qq
"}}}
"}}}
"{{{folding
"{{{Open folds on enter
nnoremap <CR> za
nnoremap <leader><CR> zO
nnoremap <Leader>z zMzvzz
nnoremap <Leader><Leader>z zMzOzz
"}}}
"{{{close all folds
nnoremap <localleader><localleader><CR> <ESC>gg0vG$zC<ESC>
inoremap <localleader><localleader><CR> <ESC>gg0vG$zC<ESC>
vnoremap <localleader><localleader><CR> <ESC>gg0vG$zC<ESC>
"}}}
"{{{open all folds
nnoremap <leader><leader><CR> <ESC>zR<ESC>
inoremap <leader><leader><CR> <ESC>zR<ESC>
vnoremap <leader><leader><CR> <ESC>zR<ESC>
"}}}
"{{{ folding options
set foldmethod=indent
set foldcolumn=2
"Close folds locally
nnoremap <localleader><CR> zC
"}}}
"}}}
"{{{mappings
"{{{ Indenting
"bind \] to indent
nnoremap <localleader>] >>
vnoremap <localleader>] >gv
inoremap <localleader>] <C-O>>>
"bind \[ to outdent
nnoremap <localleader>[ <<
vnoremap <localleader>[ <gv
inoremap <localleader>[ <C-O><<
"}}}
"{{{file navigation shortcuts
nnoremap <silent> <leader>ev :e ~/.vim/config/vimrc.combined.vim<CR>
nnoremap <silent> <leader>pe :e ~/.vim/config/extensions<CR>
noremap <leader>rl <ESC>:source ~/.vimrc<CR>:set visualbell<CR>
"}}}
"{{{ Make Vim work logically
"paste in insert mode
inoremap <leader>p <ESC>pa
"paste from x clipboard
nnoremap <LocalLeader>p <ESC>"+p
inoremap <LocalLeader>p <ESC>"+p
vnoremap <LocalLeader>p "+p
" delete till the beginning of a line
nnoremap <leader>D d0
inoremap <leader>D <ESC>d0xi
"repeat last command
nnoremap <leader>. @:
"}}}
"{{{ Formatting, TextMate-style
nnoremap Q gqip
vnoremap Q gq
" Reformat line.
nnoremap Ql gqq
"}}}
"{{{ Convenience bindings
" Save a file as root ('W)
nnoremap <c-\> :so $VIMRUNTIME/syntax/hitest.vim<CR>
noremap <leader>W :w !sudo tee % > /dev/null<CR>
"delete blank lines
noremap <localleader>db :g/^$/d<ESC>:let @/ = ""<CR>
" delete duplicate blank lines
noremap <leader>db mz:%!cat -s<CR>`z
" toggle word wrap
noremap <silent><leader>w <ESC>:set wrap!<CR>
inoremap <silent><leader>w <ESC>:set wrap!<CR>i
"toggle file explorer
noremap <silent><leader>e <ESC>:FileBeagle<CR>
"retab
noremap <leader>r <ESC>:%retab<CR>
"kill search highlighting
noremap <silent><leader><space> <ESC>:let @/ = ""<CR>
"uppercase words
inoremap <C-u> <ESC>mzgUiwea
nnoremap <C-u> <ESC>mzgUiwe
" Toggle [i]nvisible characters
nnoremap <silent><leader>I :set list!<CR>
" reset color scheme
nnoremap U :syntax sync fromstart<CR>:redraw!<CR>
" make this_style into cammelCase
nnoremap CC 0f_x~
nnoremap <leader>c :%!column -t<CR>
nnoremap <leader>cs :%!column -t -s ","<CR>
nnoremap <leader>cp :%!column -t -s "\|"<CR>
nnoremap <leader>s :source %<CR>
nnoremap <leader>S :source %<CR>
nnoremap <leader>dca :!drush cc all<CR>
nnoremap <leader>cd :lcd %:p:h<CR>
"}}}
"{{{ spelling mappings
nnoremap --s :set spell!<CR>
nnoremap -s zg
nnoremap -d ]szo
nnoremap -a [szo
nnoremap -w 1z=
nnoremap --w z=
"}}}
"{{{ No... I don't want to record a macro now
"I never use replace mode anyway
nnoremap R q
vnoremap R q
" there, now q won't do dumb stuff
nnoremap q <NOP>
vnoremap q <NOP>
" q: is actually useful when you have it configured right
nnoremap ch q:
"}}}
"{{{ I've needed these mappings forever. Map '; to ; and ": to , also quickfix
" last search
nnoremap  qf :execute 'vimgrep /' .@/.'/g %'<CR>:copen<CR>
nnoremap '; ;
nnoremap ": ,

iabbrev JOnathan Jonathan
"}}}
"{{{ insert blank lines in normal mode
nnoremap <leader>O O<ESC>j
nnoremap <leader>o o<ESC>k
"}}}
"{{{ set buffer, also set foldmethod
nnoremap <silent>-b :set buftype=<CR>
nnoremap <silent>-dh :set filetype=htmldjango<CR>
nnoremap <silent>-fm :set foldmethod=marker<CR>
nnoremap <silent>-fi :set foldmethod=indent<CR>
nnoremap <silent>-fs :set foldmethod=syntax<CR>
"}}}
"{{{ Command line abbreviations
cnoreabbrev clam Clam
cnoreabbrev ack Ack
cnoreabbrev push Git push
cnoreabbrev pull Git pull
cnoreabbrev tw Tw
"}}}
"}}}
"{{{splits
"{{{window navigation & and splits
noremap <C-l> <C-w>l
noremap <C-j> <C-w>j
noremap <C-h> <C-w>h
noremap <C-k> <C-w>k
inoremap <C-l> <ESC><C-w>li
inoremap <C-j> <ESC><C-w>ji
inoremap <C-h> <ESC><C-w>hi
inoremap <C-k> <ESC><C-w>ki
"splitting
noremap <leader>sn <ESC>:new<CR>
noremap <leader>sv <ESC>:vnew<CR>
"window stuff
set equalalways
noremap <localleader>= <C-w>=
"}}}
"{{{ put splits in a logical place
set splitbelow
set splitright
"}}}
"{{{ window size mappings
nnoremap <C-d> <C-w>>
nnoremap <C-w> <C-w>+
nnoremap <C-a> <C-w><
nnoremap <C-s> <C-w>-
"}}}
"{{{ buffer management <c-z>
nnoremap <c-z> <NOP>
nnoremap -z :suspend<CR>
"{{{ next buffer n
nnoremap <C-z>n :bn<CR>
vnoremap <C-z>n <ESC>:bn<CR>
inoremap <C-z>n <ESC>:bn<CR>
"}}}
"{{{ previous buffer p
nnoremap <C-z>p :bp<CR>
vnoremap <C-z>p <ESC>:bp<CR>
inoremap <C-z>p <ESC>:bp<CR>
"}}}
"{{{ maximize
nnoremap <C-z>o :only<CR>
vnoremap <C-z>o <ESC>:only<CR>
inoremap <C-z>o <ESC>:only<CR>
"}}}
"{{{ list buffers l
nnoremap <c-z>l :ls<CR>
vnoremap <c-z>l <ESC>:ls<CR>
inoremap <c-z>l <ESC>:ls<CR>
"}}}
"{{{ show all buffers a
nnoremap <c-z>a :ls!<CR>
vnoremap <c-z>a <ESC>:ls!<CR>
inoremap <c-z>a <ESC>:ls!<CR>
"}}}
"{{{ jump to a specific buffer b
nnoremap <c-z>b :ls<CR>:buffer<space>
vnoremap <c-z>b <ESC>:ls<CR>:buffer<space>
inoremap <c-z>b <ESC>:ls<CR>:buffer<space>
"}}}
"{{{ delete buffer d
nnoremap <c-z>d :ls!<CR>:bdelete<space>
vnoremap <c-z>d <ESC>:ls!<CR>:bdelete<space>
inoremap <c-z>d <ESC>:ls!<CR>:bdelete<space>
"}}}
"{{{ unload buffer u
nnoremap <c-z>u :ls!<CR>:bunload<space>
vnoremap <c-z>u <ESC>:ls!<CR>:bunload<space>
inoremap <c-z>u <ESC>:ls!<CR>:bunload<space>
"}}}
"{{{ wipe out buffer w
nnoremap <c-z>w :ls!<CR>:bwipeout<space>
vnoremap <c-z>w <ESC>:ls!<CR>:bwipeout<space>
inoremap <c-z>w <ESC>:ls!<CR>:bwipeout<space>
"}}}
"{{{ unload current buffer k
nnoremap <c-z>k :bunload %<CR>
vnoremap <c-z>k <ESC>:bunload %<CR>
inoremap <c-z>k <ESC>:bunload %<CR>
"}}}
"{{{ open all buffers vertically
nnoremap <c-z>v :vert sball<CR>
vnoremap <c-z>v <ESC>:vert sball<CR>
inoremap <c-z>v <ESC>:vert sball<CR>
"}}}
"{{{ open all buffers horizontally
nnoremap <c-z>h :sball<CR>
vnoremap <c-z>h <ESC>:sball<CR>
inoremap <c-z>h <ESC>:sball<CR>
"}}}
"}}}
"}}}
"{{{ Regisers
let @r = "/return
let @d = "ddn"
let @g = "F<v/span
let @s = "vi["
let @p = "vi("
let @c = "vi{"
let @q = "vi'"
let @b = 'vi"'
let @a = "vi<"
let @e = "jok"
let @v = '0/\u
"}}}