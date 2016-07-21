" --------------------------------
" Add our plugin to the path
" --------------------------------

python import sys
python import vim
python sys.path.append(vim.eval('expand("<sfile>:h")'))

" --------------------------------
"  Function(s)
" --------------------------------

function! FindTags#Find()
python << endOfPython
from FindTags import FindTags_recursive_search
FindTags_recursive_search()
endOfPython
endfunction

" --------------------------------
"  Expose our commands to the user
" --------------------------------
call FindTags#Find()
" Copyright Jonathan Gilson 2014
