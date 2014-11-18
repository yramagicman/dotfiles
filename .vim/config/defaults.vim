"defaults.vim
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
"Use os clipboard with
set clipboard=unnamed
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
"}}}
"{{{ Make tabs as wide as four spaces
set tabstop=4
set smartindent
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
"fugitive statusline
set statusline=\|\ %m%f%r\ \%y
set statusline+=\ \%{fugitive#statusline()}
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
set wildignore+=node_modules,bower_components

"}}}
