#!/usr/bin/env zsh

workingdir=$(pwd)
builtin cd ~/
echo "home folder"
git pull
builtin cd ~/.oh-my-zsh/
echo "oh my zsh"
git commit -m 'blah blah blah'
git pull --rebase --stat origin master
builtin cd ~/.oh-my-zsh/custom/plugins/zsh-aliases/
echo "zsh custom"
git pull
echo "mutt"
builtin cd ~/.mutt
git commit --all -m 'mail stuff'
git pull
git push
ln -fv ~/.mutt/.muttrc ~/.muttrc
echo "updating passwords"
pass git pull
pass git push
builtin cd $workingdir
