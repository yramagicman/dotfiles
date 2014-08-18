let g:UltiSnipsSnippetsDir = $HOME . "/.vim/snippets"
let g:UltiSnipsUsePythonVersion = 2
let g:pdv_template_dir = $HOME . "/.vim/bundle/pdv/templates"
nnoremap <buffer> <C-d> :call pdv#DocumentCurrentLine()<CR>


nmap <c-g>w :Gwrite
nmap <c-g>c :Gcommit
nmap <c-g>s :Gstatus
nmap <c-g>g :Git
nmap <c-g>d :Gdiff
