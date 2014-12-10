function! Install()
python << endpython
import os, vim, time
from subprocess import call, check_output
home = os.path.expanduser('~')
def sanityCheck():
    dir_tree_defined = int(vim.eval('exists("g:Install_Setup_Folders")'))
    plugin_file_defined = int(vim.eval('exists("g:Install_Plugin_File")'))
    if dir_tree_defined and  plugin_file_defined:
        dirtree = vim.eval("g:Install_Setup_Folders")
        plugin_file = vim.eval("g:Install_Plugin_File")
        return dirtree, plugin_file
    elif dir_tree_defined and not plugin_file_defined:
        plugin_file= vim.eval('$MYVIMRC')
        dirtree = vim.eval("g:Install_Setup_Folders")
        return dirtree, plugin_file
    else:
        print 'You must at least defing g:Install_Setup_Folders for this to work.'
def pkgmanagerinstall():
    setup_folders, plugin_file = sanityCheck()
    cmd= ['mkdir', '-p']
    cmd = cmd + setup_folders
    os.chdir(home + '/.vim/')
    call(cmd)
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
    setup_folders, plugin_file = sanityCheck()
    to_install = readBundle(home + plugin_file)
    installed = checkdir()
    not_installed = []
    for i in to_install:
        if i not in installed:
            not_installed.append(i)
    return not_installed
def cleanup():
    setup_folders, plugin_file = sanityCheck()
    listed = readBundle(home + plugin_file)
    remove = checkdir()
    to_remove = []
    for i in remove:
        if i not in listed:
            to_remove.append(i)
    return to_remove
def execute():
    if len(check_installation()) > 0:
        if 'Vundle.vim' in check_installation():
            pkgmanagerinstall()
            vim.command('source $MYVIMRC')
        vim.command('PluginInstall')
        vim.command('source $MYVIMRC')
    if len(cleanup()) > 1:
        vim.command('PluginClean')
endpython
endfunction

command! Install :call Install()
call Install()
call feedkeys('<CR>')
