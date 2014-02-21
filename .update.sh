cd ~/
echo "home folder"
git pull
cd ~/.oh-my-zsh/
echo "oh my zsh"
git commit -m 'blah blah blah'
git pull --rebase --stat origin master
cd ~/.oh-my-zsh/custom/
echo "zsh custom"
git pull
cd
