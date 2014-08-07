#!/usr/bin/env zsh
now=$(date +"%m-%d-%Y")
workingdir=$(pwd)
builtin cd ~/
echo "home folder\n"
git pull
git push
builtin cd ~/.oh-my-zsh/
echo "\noh my zsh\n"
git commit -m 'blah blah blah'
git pull --rebase --stat origin master
builtin cd ~/.oh-my-zsh/custom/plugins/zsh-aliases/
echo "\nzsh custom\n"
git pull
git push
echo "\nmutt\n"
builtin cd ~/.mutt
git commit --all -m "mail $now"
git pull
git push
ln -fv ~/.mutt/.muttrc ~/.muttrc
echo "\nupdating passwords \n"
pass git pull
pass git push
builtin cd $workingdir
echo "\n\n"
pwd
