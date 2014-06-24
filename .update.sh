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
builtin cd ~/.mutt
git commit --all -m 'mail stuff'
git pull
git push
cd
