function! Install()
python << endpython
import os
from subprocess import call
home = os.path.expanduser('~')
os.chdir(home + '/.vim/config')
call(['./getvundle'])
endpython
endfunction

function! Run()
if !exists(':Git')
    call Install()
    if exists(':PluginInstall')
        :PluginInstall
    endif
endif
endfunction
call Run()
source ~/.vimrc
