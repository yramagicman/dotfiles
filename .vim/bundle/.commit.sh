find . -maxdepth 1 -type d -exec git commit --all -q -m 'blah blah blah' \;
find . -maxdepth 2 -type d -exec git rm .DS_Store \;

