#{{{ basic configuration
# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Uncomment this to disable bi-weekly auto-update checks
 DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"
#}}}
#{{{ theme, configuration aliases
ZSH_THEME="theme"
#source "$ZSH/custom/plugins/theme.zsh-theme"
# Example aliases
alias zshrc="vim ~/.zshrc"
alias ohmy="vim ~/.oh-my-zsh"
#}}}
#{{{ plugins
plugins=( git z tmux web-search colored-man zsh-aliases drush)
ZSH_TMUX_AUTOSTART=true
source $ZSH/oh-my-zsh.sh
#}}}
#{{{ exports
#homebrew, personal scripts and programs
export PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:$HOME/.gem/ruby/2.1.0/bin:$HOME/.gem/ruby/2.2.0/bin:$PATH
#export PATH=/Applications/MAMP/Library/bin:/Applications/MAMP/bin/php/php5.5.18/bin:$PATH
export PATH=/Applications/MAMP/bin/php/php5.5.18/bin:$PATH
export WORKON_HOME=$HOME/Sites/
export MANPATH="/usr/local/man:$MANPATH"
export EDITOR='vim'
export SAVEHIST=1000
setopt HIST_IGNORE_DUPS
# Compilation flags
export ARCHFLAGS="-arch x86_64"
setopt nobeep
export HIST_SAVE_NO_DUPS=true
zstyle ':completion:*:functions' ignored-patterns '_*'
#}}}
#{{{ Awesome cd extension
DIRSTACKFILE="$HOME/.cache/zsh/dirs"
if [[ -f $DIRSTACKFILE ]] && [[ $#dirstack -eq 0 ]]; then
  dirstack=( ${(f)"$(< $DIRSTACKFILE)"} )
  [[ -d $dirstack[1] ]] && builtin cd $dirstack[1]
fi
chpwd() {
  print -l $PWD ${(u)dirstack} >$DIRSTACKFILE
}

DIRSTACKSIZE=20

setopt autopushd pushdsilent pushdtohome

## Remove duplicate entries
setopt pushdignoredups

# This reverts the +/- operators.
setopt pushdminus
#}}}
#{{{ Archey, startup stuff
function check_process(){
    #PROCESS_NUM => get the process number regarding the given thread name
    PROCESS_NUM=$(ps -ef | grep "$1" | grep -v "grep" | wc -l)
    if [ $PROCESS_NUM -eq 0 ];
    then
       $@ &
    fi
}
check_process $HOME/bin/tmuxcopy
check_process glances -w
source /usr/local/bin/virtualenvwrapper.sh
clear
#if [[ ! -a $HOME/.session-active ]]; then
#    touch .session-active
#    #archey
#    #echo '\n Press enter to get started \n'
#    #read -
#    #clear
#fi
#check_process gpg-agent --daemon
stty -ixon
#}}}
#{{{ key bindings, show mode
bindkey -v
function zle-line-init zle-keymap-select {
    RPS1="${${KEYMAP/vicmd/NORMAL}/(main|viins)/INSERT}"
    RPS2=$RPS1
zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select
bindkey -M vicmd '^R' history-incremental-search-backward
bindkey -M viins '^R' history-incremental-search-backward
# define function that retrieves and runs last command
function run-again {
    # get previous history item
    zle up-history
    # confirm command
    zle accept-line
}

# define run-again widget from function of the same name
zle -N run-again

# bind widget to Ctrl+X in viins mode
bindkey -M viins '^W' run-again
# bind widget to Ctrl+X in vicmd mode
bindkey -M vicmd '^W' run-again
#}}}
