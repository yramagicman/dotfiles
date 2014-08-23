let g:UltiSnipsSnippetsDir = $HOME . "/.vim/snippets"
let g:UltiSnipsUsePythonVersion = 2
let g:pdv_template_dir = $HOME . "/.vim/bundle/pdv/templates"
nnoremap <buffer> <localleader>dd :call pdv#DocumentCurrentLine()<CR>


nnoremap <c-c>w :Gwrite<CR>
nnoremap <c-c>c :Gcommit<CR>
nnoremap <c-c>s :Gstatus<CR>
nnoremap <c-c>g :Git
nnoremap <c-c>a :Git add --all<CR>
nnoremap <c-c>d :Gdiff<CR>
