source ~/.bash_prompt
source ~/.oh-my-zsh/custom/plugins/zsh-aliases/aliases/aliases.plugin.zsh

function cd() {
    builtin cd $@ && ls
}
