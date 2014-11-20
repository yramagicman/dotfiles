"plugin-config.vim
"{{{ snippets and documentation
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsSnippetsDir = $HOME . "/.vim/snippets"
let g:UltiSnipsUsePythonVersion = 2
let g:pdv_template_dir = $HOME . "/.vim/bundle/pdv/templates"
nnoremap  --d :call pdv#DocumentCurrentLine()<CR>
"}}}
"{{{ git stuff
nnoremap <c-c>w :Gwrite<CR>
nnoremap <c-c>c :Gcommit<CR>
nnoremap <c-c>s :Gstatus<CR>
nnoremap <c-c>g :Git
nnoremap <c-c>a :Git add %<CR>
nnoremap <c-c>r :Git checkout %<CR>
nnoremap <c-c>d :Gdiff<CR>
nnoremap <c-c>ps :Git push<CR>
nnoremap <c-c>pl :Git pull<CR>
"}}}
    "{{{ Ctrlp
let g:ctrlp_map='<c-&>'
let g:ctrlp_switch_buffer='ET'
""let g:ctrlp_by_filename=1
let g:ctrlp_show_hidden =1
nnoremap <c-p> :CtrlP getcwd()<CR>
nnoremap -ev :CtrlP ~/.vim/config<CR>
nnoremap <space><space> :CtrlPBuffer<CR>
nnoremap <leader><Space><Space> :CtrlPBuffer<CR>
inoremap <leader><leader><Space> <ESC>:CtrlPBuffer<CR>
nnoremap <c-y> :CtrlPBufTagAll<CR>
"}}}
"{{{ syntastic
let g:syntastic_php_phpcs_args="--standard=Drupal --tab-width=0"
"@todo find a way to toggle this.
let g:syntastic_php_phpcs_disable=0
"}}}
"{{{
    let g:SuperTabMappingForward = '<tab>'
    let g:SuperTabMappingBackward = '<s-tab>'
"}}}
"{{{ autocomplete
let g:neocomplcache_enable_at_startup  = 1
let g:neocomplcache_enable_auto_select = 0
let g:neocomplcache_enable_smart_case  = 1
let g:neocomplcache_min_syntax_length  = 3

if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
""if !exists('g:neocomplcache_force_omni_patterns')
""  let g:neocomplcache_force_omni_patterns = {}
""endif
let g:neocomplcache_omni_patterns.php =
\ '[^. \t]->\%(\h\w*\)\?\|\h\w*::\%(\h\w*\)\?'
""let g:neocomplcache_omni_patterns.c =
""\ '[^.[:digit:] *\t]\%(\.\|->\)\%(\h\w*\)\?'
""let g:neocomplcache_omni_patterns.cpp =
""\ '[^.[:digit:] *\t]\%(\.\|->\)\%(\h\w*\)\?\|\h\w*::\%(\h\w*\)\?'

augroup completetypes
    autocmd!
    autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
    autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
    autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
    autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
    autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
augroup end
"}}}
"{{{ Tag list config
nnoremap <c-t> :TlistOpen<CR>
nnoremap <c-n> :TlistAddFiles
""set statusline+=\ \%{Tlist_Get_Tagname_By_Line()}\ \|
let g:Tlist_Show_One_File=0
let g:Tlist_Close_On_Select=1
let g:Tlist_Compact_Format=1
let g:Tlist_Exit_OnlyWindow=1
augroup tagliststuff
    autocmd!
    autocmd FileType taglist vertical resize +15
augroup end
"}}}
