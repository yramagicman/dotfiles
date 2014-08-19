let g:UltiSnipsSnippetsDir = $HOME . "/.vim/snippets"
let g:UltiSnipsUsePythonVersion = 2
let g:pdv_template_dir = $HOME . "/.vim/bundle/pdv/templates"
nnoremap <buffer> <C-d> :call pdv#DocumentCurrentLine()<CR>


nmap <c-c>w :Gwrite<cr>
nmap <c-c>c :Gcommit<cr>
nmap <c-c>s :Gstatus<cr>
nmap <c-c>g :Git<cr>
nmap <c-c>a :Git add --all<cr>
nmap <c-c>d :Gdiff<cr>
