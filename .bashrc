source ~/.bash_prompt
# auto ls on cd
# testing stuff
function cd() {
    builtin cd $@ && ls
}
