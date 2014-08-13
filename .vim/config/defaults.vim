"{{{ Defaults probably won't change... ever
set background=dark
noremap ; :
set autoread
set spelllang=en_us
"set updatetime=1000
"pathogen call stuff
"execute pathogen#infect()
" best color scheme ever
colorscheme muttclone
set t_Co=256
" Make Vim more useful
set nocompatible
"text-width
set textwidth=82
set cc=81
" Don't use os clipboard with tmux can't yank between buffers
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
set gdefault
" Use UTF-8
set encoding=utf-8
set binary
set eol
" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups//
"set directory=~/.vim/swaps
"I hate swap files
set noswapfile
if exists("&undodir")
    set undodir=~/.vim/undo
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
"set visualbell
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
set cursorline
" Show the (partial) command as it’s being typed
set showcmd
" Enable syntax highlighting
syntax on
"set max highlight column
set synmaxcol=800
" Start scrolling five lines before the horizontal window border when will this
" break
set scrolloff=5
set nolist wrap linebreak sidescrolloff=15
" sensible completion
set completeopt=longest,menuone
set ofu=syntaxcomplete#Complete
" Show “invisible” characters
set lcs=tab:⟩\ ,trail:·,eol:↩,nbsp:_
"set list " breaks set linebreak
" Enable line numbers
set relativenumber
" Change mapleader
let mapleader=","
let localleader="/"
set tags=tags;
set autochdir
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
set statusline+=Column\ %2c
set statusline+=\ \|
"}}}
