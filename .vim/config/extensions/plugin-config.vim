let g:UltiSnipsSnippetsDir = $HOME . "/.vim/snippets"
let g:UltiSnipsUsePythonVersion = 2
let g:pdv_template_dir = $HOME . "/.vim/bundle/pdv/templates"
nnoremap <buffer> <localleader>dd :call pdv#DocumentCurrentLine()<CR>


nmap <c-c>w :Gwrite<CR>
nmap <c-c>c :Gcommit<CR>
nmap <c-c>s :Gstatus<CR>
nmap <c-c>g :Git
nmap <c-c>a :Git add --all<CR>
nmap <c-c>d :Gdiff<CR>
