alias ls='ls -G'
alias ll='ls -alh'

if type "colordiff" > /dev/null 2>&1
    then
    alias diff='colordiff'
fi

export GREP_OPTIONS="--color=always"

# Change directory color.
export LSCOLORS=gxfxcxdxbxegedabagacad

# Ignore duplicate commands.
export HISTCONTROL=ignoredups
# Ignore frequently used command.
export HISTIGNORE=”history*:cd*:ls*”
export HISTSIZE=100000

# Enable bash-completion.
if [ -f $(brew --prefix)/etc/bash_completion ]; then
 . $(brew --prefix)/etc/bash_completion
fi

source $HOME/.bash/git-completion.bash
source $HOME/.bash/git-prompt.sh

# prompt settings
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUPSTREAM=1
GIT_PS1_SHOWUNTRACKEDFILES=
GIT_PS1_SHOWSTASHSTATE=1
export PS1='\[\033[1;32m\]\u@\h\[\033[00m\]:\[\033[1;36m\]\W\[\033[1;31m\]$(__git_ps1)\[\033[00m\] \$ '

# jenv
if type "jenv" > /dev/null 2>&1; then
    export PATH=$HOME/.jenv/bin:$PATH
    eval "$(jenv init -)"
fi
