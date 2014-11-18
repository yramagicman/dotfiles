function! Install()
python << endpython
import os
from subprocess import call
home = os.path.expanduser('~')
os.chdir(home + '/.vim/')
call(['mkdir', '-p', 'autoload', 'backup', 'bundle', 'colors', 'config', 'doc', 'snippets', 'spell', 'swaps', 'syntax', 'tags', 'undo' ])
os.chdir(home + '/.vim/bundle')
call(['git', 'clone', 'https://github.com/gmarik/Vundle.vim.git'])
endpython
endfunction

function! Run()
if !exists(':Git')
    call Install()
    source $MYVIMRC
    if exists(':PluginInstall')
        :PluginInstall
    endif
endif
source $MYVIMRC
endfunction
command! Install :call Run()
