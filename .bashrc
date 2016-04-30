source ~/.bash_prompt
# auto ls on cd
# blah blah blah
function cd() {
    builtin cd $@ && ls
}
