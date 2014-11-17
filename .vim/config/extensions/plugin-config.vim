"plugin-config.vim
"{{{ snippets and documentation
let g:UltiSnipsSnippetsDir = $HOME . "/.vim/snippets"
let g:UltiSnipsUsePythonVersion = 2
let g:pdv_template_dir = $HOME . "/.vim/bundle/pdv/templates"
nnoremap <buffer> -d :call pdv#DocumentCurrentLine()<CR>
"}}}
"{{{ git stuff
nnoremap <c-c>w :Gwrite<CR>
nnoremap <c-c>c :Gcommit<CR>
nnoremap <c-c>s :Gstatus<CR>
nnoremap <c-c>g :Git
nnoremap <c-c>a :Git add --all<CR>
nnoremap <c-c>d :Gdiff<CR>
"}}}
let g:ctrlp_map='<c-y>'
let g:ctrlp_switch_buffer='ET'
""let g:ctrlp_by_filename=1
let g:ctrlp_show_hidden =1
nnoremap <c-p> :CtrlP getcwd()<CR>
nnoremap -ev :CtrlP ~/.vim/config<CR>
nnoremap <leader><leader><space> :CtrlPBuffer<CR>
nnoremap <c-t> :TlistToggle<CR>

let g:syntastic_php_phpcs_args="--standard=Drupal --tab-width=0"
let g:syntastic_php_phpcs_disable=0

let g:neocomplcache_enable_at_startup  = 1
let g:neocomplcache_enable_auto_select = 1
let g:neocomplcache_enable_smart_case  = 1
let g:neocomplcache_min_syntax_length  = 1

""if !exists('g:neocomplcache_omni_patterns')
""  let g:neocomplcache_omni_patterns = {}
""endif
""if !exists('g:neocomplcache_force_omni_patterns')
""  let g:neocomplcache_force_omni_patterns = {}
""endif
""let g:neocomplcache_omni_patterns.php =
""\ '[^. \t]->\%(\h\w*\)\?\|\h\w*::\%(\h\w*\)\?'
""let g:neocomplcache_omni_patterns.c =
""\ '[^.[:digit:] *\t]\%(\.\|->\)\%(\h\w*\)\?'
""let g:neocomplcache_omni_patterns.cpp =
""\ '[^.[:digit:] *\t]\%(\.\|->\)\%(\h\w*\)\?\|\h\w*::\%(\h\w*\)\?'


autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html, markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
