function! Install()
python << endpython
import os, vim, time
from subprocess import call, check_output
home = os.path.expanduser('~')
def pkgmanagerinstall():
    os.chdir(home + '/.vim/')
    call(['mkdir', '-p', 'autoload', 'backup', 'bundle', 'colors', 'config',
    'doc', 'snippets', 'spell', 'swaps', 'syntax', 'tags', 'undo' ])
    os.chdir(home + '/.vim/bundle')
    call(['git', 'clone', 'https://github.com/gmarik/Vundle.vim.git'])
def checkdir():
    installed_packages = check_output(['ls', home + '/.vim/bundle'])
    installed_packages = installed_packages.split('\n')
    return installed_packages
def readBundle(file):
    bundles = open(file, 'r')
    lines = bundles.read().split('\n')
    retVal = []
    for line in lines:
        if ('Plugin' in line or 'plugin' in line) and ('"' not in line):
            retVal.append(line[line.index('/') + 1: -1])
    return retVal
def check_installation():
    to_install = readBundle(home + '/.vim/config/extensions/vundle.vim')
    installed = checkdir()
    not_installed = []
    for i in to_install:
        if i not in installed:
            not_installed.append(i)
    return not_installed
def execute():
    if len(check_installation()) > 0:
        if 'Vundle.vim' in check_installation():
            pkgmanagerinstall()
            vim.command('source $MYVIMRC')
        vim.command('PluginInstall')
        vim.command('source $MYVIMRC')
execute()
endpython
endfunction

command! Install :call Install()
call Install()
call feedkeys('<CR>')
