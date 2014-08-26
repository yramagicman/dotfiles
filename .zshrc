# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="theme"
#source "$ZSH/custom/plugins/theme.zsh-theme"
# Example aliases
alias zshrc="vim ~/.zshrc"
alias ohmy="vim ~/.oh-my-zsh"

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

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(z tmux colored-man web-search zsh-aliases)
ZSH_TMUX_AUTOSTART=true
source $ZSH/oh-my-zsh.sh

# User configuration

export PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:$HOME/.gem/ruby/2.1.0/bin:$PATH
export MANPATH="/usr/local/man:$MANPATH"

export EDITOR='vim'

export SAVEHIST=1000
export HIST_IGNORE_DUPS=true
export HIST_SAVE_NO_DUPS=true
bindkey -v
# Compilation flags
export ARCHFLAGS="-arch x86_64"

$HOME/bin/tmuxcopy &
clear
# echo $processid >> ~/pid.txt
# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"
if [[ ! -a $HOME/.session-active ]]; then
    touch .session-active
    archey
    echo '\n Press enter to get started \n'
    read -
    clear
fi
#check_process gpg-agent --daemon
stty -ixon

function zle-line-init zle-keymap-select {
    RPS1="${${KEYMAP/vicmd/NORMAL}/(main|viins)/INSERT}"
    RPS2=$RPS1
zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select
bindkey -M vicmd '^R' history-incremental-search-backward
bindkey -M viins '^R' history-incremental-search-backward
