function! Install()
python << endpython
import os, vim
from subprocess import call, check_output
home = os.path.expanduser('~')

def sanity_check():
    # Make sure variables exist. The script only requires
    # g:Install_Setup_Folders.
    dir_tree_defined = int(vim.eval('exists("g:Install_Setup_Folders")'))
    plugin_file_defined = int(vim.eval('exists("g:Install_Plugin_File")'))
    # Check for .vim/bundle. The script breaks without it.
    if not os.path.exists(home + '/.vim/bundle'):
        cmd= ['mkdir', '-p']
        cmd = cmd + ['bundle']
        os.chdir(home + '/.vim/')
        call(cmd)
    # If both config variables are defined, return their values.
    if dir_tree_defined and  plugin_file_defined:
        dir_tree = vim.eval("g:Install_Setup_Folders")
        plugin_file = vim.eval("g:Install_Plugin_File")
        return dir_tree, plugin_file
    # If g:Install_Setup_Folders is defined, return its value and the location
    # of the .vimrc file
    elif dir_tree_defined and not plugin_file_defined:
        plugin_file= vim.eval('$MYVIMRC')
        dir_tree = vim.eval("g:Install_Setup_Folders")
        return dir_tree, plugin_file
    # When all else fails print an error message.
    else:
        print 'You must at least define g:Install_Setup_Folders for this to work.'

# Set variables globally
setup_folders, plugin_file = sanity_check()

def pkg_manager_install():
    os.chdir(home + '/.vim/bundle')
    call(['git', 'clone', 'https://github.com/gmarik/Vundle.vim.git'])

def check_dir():
    installed_packages = check_output(['ls', home + '/.vim/bundle'])
    installed_packages = installed_packages.split('\n')
    return installed_packages

def read_bundle(file):
    bundles = open(file, 'r')
    lines = bundles.read().split('\n')
    ret_val = []
    for line in lines:
        if ('Plugin' in line or 'plugin' in line) and ('"' not in line):
            ret_val.append(line[line.index('/') + 1: -1])
    bundles.close()
    return ret_val

def check_installation():
    to_install = read_bundle(home + plugin_file)
    installed = check_dir()
    not_installed = []
    for i in to_install:
        if i not in installed:
            not_installed.append(i)
    return not_installed

def clean_up():
    listed = read_bundle(home + plugin_file)
    remove = check_dir()
    to_remove = []
    for i in remove:
        if i not in listed:
            to_remove.append(i)
    return to_remove

def execute():
    if len(check_installation()) > 0:
        if 'Vundle.vim' in check_installation():
            pkg_manager_install()
            # Source .vimrc to make sure the package manager is loaded
            vim.command('source $MYVIMRC')
        # Run the package manger
        vim.command('PluginInstall')
        # Load everything.
        vim.command('source $MYVIMRC')
    # clean_up() always returns an empty string, so check for length greater
    # than 1 to account for this.
    if len(clean_up()) > 1:
        vim.command('PluginClean')
execute()
endpython
endfunction


"User accessible command.
command! Install :call Install()
"Auto run every time Vim opens.
call Install()
" This is necessary due to the way Vim works when it encounters an error. You
" have to hit enter after errors or shell commands. Without this here, the
" script just hangs after either installing Vundle or yelling about "Plugin
" command not found."
call feedkeys('<CR>')
