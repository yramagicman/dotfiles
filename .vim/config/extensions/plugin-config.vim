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
let g:syntastic_phpcs_disable=1
