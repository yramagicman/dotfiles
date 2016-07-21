import os
import vim
home = os.path.expanduser('~')


def FindTags_walk_dirs():
    dir = os.getcwd()
    for file in os.walk(dir):
        if '.tags' in file[-1] or 'tags' in file[-1]:
            if 'tags' in file[-1]:
                vim.command(
                    'set tags=' + file[0] + '/'
                    + file[-1][file[-1].index('tags')])
                return 1
            if '.tags' in file[-1]:
                vim.command(
                    'set tags=' + file[0] + '/'
                    + file[-1][file[-1].index('tags')])
                return 1
    return 0


def FindTags_up_dir(found):
    if not found:
        path = os.getcwd().split('/')[:-1]
    if '/'.join(path) == os.path.expanduser('~'):
        print('No manage.py file found for this project')
        return
    return '/'.join(path)


def FindTags_recursive_search():
    try:
        found = FindTags_walk_dirs()
        if not found:
            back = FindTags_up_dir(found)
            os.chdir(back)
            FindTags_recursive_search()
    except KeyboardInterrupt:
        exit()

# Copyright Jonathan Gilson 2014
