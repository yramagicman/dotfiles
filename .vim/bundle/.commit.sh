#thing
find . -maxdepth 1 -type d -exec git add --all . \;
find . -maxdepth 1 -type d -exec  git commit --amend \;
