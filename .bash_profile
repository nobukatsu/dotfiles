alias ls='ls -G'
alias ll='ls -alh'
alias less='less -X'

if type "colordiff" > /dev/null 2>&1
    then
    alias diff='colordiff'
fi
if type 'greadlink' > /dev/null 2>&1
    then
    alias readlink='greadlink'
fi
if type 'gdate' > /dev/null 2>&1
    then
    alias date='gdate'
fi
if type 'gsed' > /dev/null 2>&1
    then
    alias sed='gsed'
fi

export GREP_OPTIONS="--color=always"

# Change directory color.
export LSCOLORS=gxfxcxdxbxegedabagacad

# Ignore duplicate commands.
export HISTCONTROL=ignoredups
# Ignore frequently used command.
export HISTIGNORE=”history*:cd*:ls*”
export HISTSIZE=100000
# locale
export LC_ALL=ja_JP.UTF-8
# source-highlight
if [ -e /usr/local/bin/src-hilite-lesspipe.sh ]; then
    export LESSOPEN="| /usr/local/bin/src-hilite-lesspipe.sh %s"
    export LESS=" -R "
fi

# editor
if type "code" > /dev/null 2>&1; then
    export EDITOR=code
fi

if type "nodebrew" > /dev/null 2>&1; then
    export PATH=$PATH:~/.nodebrew/current/bin
fi

# Enable bash-completion.
if [ -f $(brew --prefix)/etc/bash_completion ]; then
 . $(brew --prefix)/etc/bash_completion
fi

source $HOME/.bash/git-completion.bash
source $HOME/.bash/git-prompt.sh
source $HOME/.bash/maven.bash

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

# pyenv
if type "pyenv" > /dev/null 2>&1; then
    export PYENV_ROOT="$HOME/.pyenv"
    export PATH="$PYENV_ROOT/bin:$PATH"
    eval "$(pyenv init -)"
fi

# oracle
if [ -e ~/devel/library/oracle/instantclient_12_1 ]; then
    export ORACLE_HOME=~/devel/library/oracle/instantclient_12_1
    export PATH=$ORACLE_HOME:$PATH
    export DYLD_LIBRARY_PATH=$ORACLE_HOME
    export LD_LIBRARY_PATH=$ORACLE_HOME
    export FORCE_RPATH=1
fi

# PostgreSQL
if type "psql" > /dev/null 2>&1; then
    export DATABASE_URL=postgres:///nobukatsu
fi

# fzf
# [ -f ~/.fzf.bash ] && source ~/.fzf.bash
